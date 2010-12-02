class ArticlesController < InheritedResources::Base
protected
  def collection
    @articles ||= end_of_association_chain.where(:parent_id => nil)
  end
end
