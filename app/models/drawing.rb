class Drawing < ActiveRecord::Base
  has_and_belongs_to_many :tags

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
