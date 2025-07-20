module ApplicationHelper
  def active_link?(controller_name, action_name = nil)
    if action_name
      controller.controller_name == controller_name.to_s && controller.action_name == action_name.to_s
    else
      controller.controller_name == controller_name.to_s
    end
  end
end
