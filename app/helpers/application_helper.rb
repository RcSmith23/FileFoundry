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

  def drawing_icon(drawing)
    link_to drawing_path(drawing) do
      content_tag(:span, "Details will be here", :class => "details")
      image_tag(drawing.res, :alt => drawing.name, :class => "img-rounded")
    end
  end
end
