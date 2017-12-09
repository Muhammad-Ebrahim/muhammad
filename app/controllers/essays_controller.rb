class EssaysController < ApplicationController
   before_action :find_essay, only: [:edit, :update, :show, :destroy]  
    def index
        @essays = Essay.all
    end
    
      def show
      end    
      def new
        @essay = Essay.new
      end
    
      def create
        @essay = Essay.new(essay_params)
        if @essay.save
          redirect_to @essay
        else
          render 'new'
        end
      end
    
      def edit
      end
    
      def update
        if @essay.update(essay_params)
          redirect_to @essay
        else
          render 'edit'
        end
      end
    
      def destroy
        @essay.destroy
        redirect_to root_path
      end

      private
      def essay_params
        params.require(:essay).permit(:title, :body)
      end

      def find_essay
        @essay = Essay.find(params[:id])
      end
end
