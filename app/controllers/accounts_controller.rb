
class AccountsController < ApplicationController
  before_action :authenticate_user!
  after_action:create_first_transaction , only: [:create]

     def show
    #account
    end

  def create
    @account = Account.create(customer_id: current_user.id, acc_balance: 500)

      if @account.save
        redirect_to profile_path(current_user.id)
      end
  end



  private
    def create_first_transaction
      if current_user.account.transactions.blank?
        @account_tran = current_user.account.transactions.create(customer_id:current_user.id,cr_amt:500,transaction_type: "Deposit")
      end
    end
 


  # private
      # Never trust parameters from the scary internet, only allow the white list through.
  # def account_params
  #   params.require(:account).permit(:acc_balance)
  # end
end
