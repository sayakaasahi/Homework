class CommentsController < ApplicationController
  def index
    @comment_topics = current_user.comment_topics
  end
  
  def new
    @comment = Comment.new
  end
  
  def create
    comment = Comment.new
    comment.user_id = current_user.id
    comment.topic_id = params[:comment][:topic_id]
    comment.content = params[:comment][:content]
    # binding.pry
    
    if comment.save
      redirect_to topics_path, success: 'コメントを登録しました'
    else
      # binding.pry
      redirect_to topics_path, danger: 'コメント登録に失敗しました'
    end
  end
  
end
