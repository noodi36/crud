class HomeController < ApplicationController
    def index
        @posts = Box.all.order("id desc")
        
    end
    
    def write
        
        box = Box.new
        box.title = params[:title]
        box.content = params[:content]
        box.save
        
        redirect_to "/home/index"
        
    end
    
    def write_comment
        comment = Comment.new
        comment.reply = params[:reply]
        comment.box_id = params[:post_id]
        comment.save
        
        redirect_to "/home/index"
    end
    
    def modify
        @one_post = Box.find(params[:id])

    end
    
    def modified
        @one_post = Box.find(params[:id])
        @one_post.title = params[:title]
        @one_post.content = params[:content]
        @one_post.save
        redirect_to "/home/index"
    end
    
    def destroy
        @one_post = Box.find(params[:id]) #삭제 할 하나의 포스트 아이디를 찾아라 
        @one_post.destroy
        redirect_to "/home/index"
    end
end
