class Search
  def self.for(keyword)
    keyword_search = "%#{keyword.downcase}%"

    User.where('lower(name) LIKE ?', keyword_search) +
        Micropost.where('lower(content) LIKE ?', keyword_search)
  end
end



