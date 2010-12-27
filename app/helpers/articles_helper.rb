module ArticlesHelper
  def next_posts(created_at, limit = 4)
    Article.where(:parent_id => nil).
            order("created_at ASC").
            where("created_at > ?", created_at).
            limit(limit)
  end

  def prev_posts(created_at, limit = 5)
    Article.where(:parent_id => nil).
            order("created_at DESC").
            where("created_at < ?", created_at).
            limit(limit)
  end

end
