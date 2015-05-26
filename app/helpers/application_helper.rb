module ApplicationHelper
  # Used for bootstrap navbar, handles active links
  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? 'active' : nil

    content_tag(:li, :class => class_name) do
      link_to link_text, link_path
    end
  end

  def nav_button(link_text, link_path)
    content_tag(:li) do
      link_to link_text, link_path, :class => "btn btn-default margin-left navbar-btn"
    end
  end
end
