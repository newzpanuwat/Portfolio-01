class PostsController < ApplicationController
    before_action :set_post, only: [:show]

	def index
		@posts = Post.all.order('created_at DESC')
	end

	def show	

	end


	private
		def post_params
			params.require(:post).permit(:title, :body)

		end

        def set_post
			  @post = Post.find(params[:id])	

        end
		

end