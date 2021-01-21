class TransactionsController < ApplicationController

  def new
  #new method 
  @trans = Transaction.new
  end

  def create

    if trans_params[:transaction_type] == "Deposit"

      @trans = Transaction.new(customer_id: current_user.id, account_id: current_user.account.id,cr_amt: trans_params[:cr_amt],dr_amt:nil ,transaction_type: trans_params[:transaction_type])
      net_bal = current_user.account.acc_balance + trans_params[:cr_amt].to_f
      current_user.account.update(acc_balance: net_bal) 

    elsif trans_params[:transaction_type] == "Withdraw"

      if current_user.account.acc_balance >= trans_params[:cr_amt].to_f
        @trans = Transaction.new(customer_id: current_user.id, account_id: current_user.account.id,cr_amt: nil,dr_amt:trans_params[:cr_amt] ,transaction_type: trans_params[:transaction_type])
        net_bal = current_user.account.acc_balance - trans_params[:cr_amt].to_f
        current_user.account.update(acc_balance: net_bal) 
      else
        flash[:alert] = "Insufficient Balance"
        redirect_to  new_customer_transaction_path(current_user.id)
        return
      end      
    end
    
    if @trans.save
      flash[:notice] = 'Transaction successfull!'
      TransactionMailer.new_transaction(@trans).deliver_now
      redirect_to new_customer_transaction_path(current_user.id)
    end
  end

  def show
    #Show Action
    @user_trans = current_user.transactions.all
  end

  private 
  def trans_params
    params.require(:transaction).permit(:customer_id,:account_id,:dr_amt,:cr_amt,:transaction_type,:amount)
  end
end
