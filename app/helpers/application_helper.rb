module ApplicationHelper
  def active_menu_item current
    'active' if controller_name == current.to_s
  end

  def active_aside_item current
    'active' if action_name == current.to_s
  end
end
