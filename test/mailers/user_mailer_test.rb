require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  test "create_noti" do
    mail = UserMailer.create_noti
    assert_equal "Create noti", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "update_noti" do
    mail = UserMailer.update_noti
    assert_equal "Update noti", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "delete_noti" do
    mail = UserMailer.delete_noti
    assert_equal "Delete noti", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
