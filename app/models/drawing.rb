class Drawing < ActiveRecord::Base
  
  def self.search(page)
    paginate :per_page => 15, :page => page
  end

  def self.search_async(search)
    if search
      where('name LIKE ? ', "%#{search}%")
    else
      scoped
    end
  end

end
