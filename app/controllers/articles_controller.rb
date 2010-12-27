class ArticlesController < InheritedResources::Base
protected
  def collection
    offset = params[:offset].to_i - 5
    @articles ||= end_of_association_chain.
                      where(:parent_id => nil).
                      order("created_at DESC").
                      offset(offset >= 0 ? offset : 0).
                      limit(10)
  end
end
