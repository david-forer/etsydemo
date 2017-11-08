class CommentsController < ApplicationController
        
    def create
      @listing = Listing.find(params[:listing_id])
      @comment = @listing.comments.build(comment_params)
      @comment.user = current_user
      if @comment.save
        flash[:success] = "Thanks for your comment"
        redirect_to listing_path(@listing)
      else
        flash[:danger] = "Ooops, something happened your comment was not created"
        redirect_to listing_path(@listing)
      end
    end
    
    private
    
    def comment_params
      params.require(:comment).permit(:description)
    end
    
  end