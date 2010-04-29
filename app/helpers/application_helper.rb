module ApplicationHelper
  def include_assets(&block)
    content_for(:head, &block)
  end
end
