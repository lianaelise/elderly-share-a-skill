module ApplicationHelper
  def user_url(user)
    send("#{user.class.to_s.underscore}_path", user)
  end
end
