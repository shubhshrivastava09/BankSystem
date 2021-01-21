# Preview all emails at http://localhost:3000/rails/mailers/transaction_mailer
class TransactionMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/transaction_mailer/new_transaction
  def new_transaction
  	transaction = Transaction.last
    TransactionMailer.new_transaction(transaction)
  end

end
