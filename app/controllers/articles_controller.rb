class ArticlesController < InheritedResources::Base
protected
  def collection
    @articles ||= end_of_association_chain.
                      where(:parent_id => nil).
                      order("created_at DESC").
                      offset(params[:offset]).
                      limit(2)
  end
end
