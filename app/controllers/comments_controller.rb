class CommentsController < ApplicationController
def create
    @comment = Comment.new(comment_params)
    if @comment.save
        redirect_to @comment.picture
    else
        redirect_to @comment.picture
    end
end

def destroy
    @comment = Comment.find(params[:id]).destroy
    redirect_to @comment.picture
end
private
def comment_params
    params.require(:comment).permit(:content, :picture_id,:user_id)
end
end
