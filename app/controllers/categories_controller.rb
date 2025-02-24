class CategoriesController < ApplicationController

  def show
    @categories = Category.all
    category = Category.find(params[:id])
    @topic_category = TopicCategory.where(category_id: category.id)
    @category_topics = Topic.where(id: @topic_category.topic.id)
  end
end
