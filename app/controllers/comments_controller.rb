class CommentsController < ApplicationController

  before_action :set_store

  def create

    @comment = @store.comments.build(comment_params)
    @comment.user_id = current_user.id
      if @comment.save

        redirect_to :back

    else

        render root_path
    end
  end

  def show
   @store = Store.find(params[:id])
   @comment = Comment.new(store: @store)

  end

  def destroy
    @comment = @store.comments.find(params[:id])
    @comment.destroy
    redirect_to root_path
  end

private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def set_store
  @store = Store.find(params[:store_id])
end


end
