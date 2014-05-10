class Notifications < ActionMailer::Base
  default from: "insieme@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_comment.subject
  #
  def new_comment(comment)
    @greeting = "Hey there!"
    @post_id = comment.post.id
    @commenter = comment.user.name

    mail to: comment.post.user.email
  end

  def accepted(grouping)
    @greeting = "Hey there!"
    @user = grouping.user.name
    @id = grouping.group_id
    @name = grouping.group.group_name
    @email = grouping.user.email
    mail to: @email
  end

  def join_group (grouping)
    @greeting = "Hey there!"
    @user = grouping.user.name
    @id = grouping.id
    @name = grouping.group.group_name
    @email = []
    Grouping.where(group_id: grouping.group_id).each do |group|
      if grouping.user_id != current_user.id
        @email.push(group.user.email)
      end
    end
    mail to: @email
  end

end
