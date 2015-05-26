class TopicsController < ApplicationController
  def index
    @topics = Topic.page(param[:page]).per(10)
  end
end
