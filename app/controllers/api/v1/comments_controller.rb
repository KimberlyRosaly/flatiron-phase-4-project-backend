# N A M E S P A C I N G   C O N V E N T I O N   W I T H  A P I
# PARENT FOLDER :: CHILD FOLDER :: FILE < INHERITSFROM
class Api::V1::CommentsController < ApplicationController
    #! I N S T A N C E VARIABLES NOT NEEDED 
    #! - NO  E R B   R E N D E R I N G  TO PASS THEM TO

    def index
        comments = Comment.all
        render json: comments
    end

    def show
        comment = Comment.find_by_id(params[:id])
        if comment
            render json: comment
        else
            render json: { message: ' </3 Comment not found </3 ' }
        end
    end

    def create
        @comment = Comment.create(comment_params)
        render json: @comment
    end

    def update
        @comment = Comment.find_by_id(params[:id])
        @comment.update(comment_params)
        render json: @comment
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.delete
        render json: { commentId: @comment.id }
    end

    #=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
        private
            def comment_params
                params.require(:comment).permit( 
                    :body, 
                    :name, :city, :state )
            end
    #=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

end
