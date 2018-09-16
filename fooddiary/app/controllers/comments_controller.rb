class CommentsController < ApplicationController
    http_basic_authenticate_with name: "a", password: "a", only: :destroy
    
    def create
        @diary = Diary.find(params[:diary_id])
        @comment = @diary.comments.create(comment_params)
        redirect_to diary_path(@diary)
      end

      def destroy
        @diary = Aiary.find(params[:diary_id])
        @comment = @diary.comments.find(params[:id])
        @comment.destroy
        redirect_to diary_path(@diary)
      end
     
      private
        def comment_params
          params.require(:comment).permit(:calorie, :time, :day ,:bld)
        end
end
