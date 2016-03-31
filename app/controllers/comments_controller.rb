before_action :set_store
    def create
      @comment = @store.comments.build(comment_params)
      @comment.user_id = current_user.id
    if @comment.save
        redirect_to :back
    else
        render root_path
    end end


    private
    def comment_params
      params.require(:comment).permit(:content)
    end
    def set_store
      @store = store.find(params[:store_id])
end
