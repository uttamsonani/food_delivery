require "test_helper"

class UpdateMailerTest < ActionMailer::TestCase
  test "new_feature" do
    mail = UpdateMailer.new_feature
    assert_equal "New feature", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
