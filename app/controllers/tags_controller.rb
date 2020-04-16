class TagsController < ApplicationController
    before_action :redirect_user
    def show
        @tag= Tag.find(params[:id])
    end
end
