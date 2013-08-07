class EventDecorator < Draper::Decorator
  
  include Draper::LazyHelpers
  
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end
  
  def approval_link
    if object.approved_at?
      link_to "Unapprove", unapprove_event_path(object), method: :post
    else
      link_to "Approve", approve_event_path(object), method: :post
    end
  end

end