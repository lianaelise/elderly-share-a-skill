json.array @notifications do |notification|
  json.id notification.id
  json.actor notification.actor.first_name
  json.action notification.action
end
