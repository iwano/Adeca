module ApplicationHelper
  def current_page_with_param(controller, action='', param)
    'active' if action?(action) && controller?(controller) && params[:static_page] == param
  end
  def current_page(controller, action='' )
    'active' if action?(action) && controller?(controller)
  end

  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end
end
