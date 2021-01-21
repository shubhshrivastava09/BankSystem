require "test_helper"

class TransactionMailerTest < ActionMailer::TestCase
  test "new_transaction" do
    mail = TransactionMailer.new_transaction
    assert_equal "New transaction", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
