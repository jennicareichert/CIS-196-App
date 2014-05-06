class Notifications < ActionMailer::Base
  default from: "friends@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_comment.subject
  #
  def new_comment(comment)
    @greeting = "Hi"
    @id = comment.id
    @commenter = comment.user.name

    mail to: comment.post.user.email
  end

  def join_group (grouping)
    @greeting = "Hey there!"
    @user = grouping.user.name
    @id = grouping.group_id

    Grouping.where(group_id: grouping.group_id).each do |group|
      @email = group.user.email
      mail to: @email
    end
  end

end
