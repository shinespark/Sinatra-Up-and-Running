module ApplicationHelper
  def title(value = nil)
    @title = value if value
    @title ? "controller Demo - #{@title}" : "Controller Demo"
  end
end
