class TransactionMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.transaction_mailer.new_transaction.subject
  #
  def new_transaction(transact)
  	@trans = transact
    mail(to: @trans.customer.email, subject:"New Transaction for #{@trans.id}")
  end
end
