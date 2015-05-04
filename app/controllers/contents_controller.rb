class ContentsController < ApplicationController
  def index
  end

  def show
    @content = Content.find(content_params)
  end

  def new
  end

  def edit
  end

  def create
  end

  def delete
  end

   private

    def content_params
      params.require(:content).permit(:title, :poster_url, :plot)
    end
end
