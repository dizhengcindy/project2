class PicturesController < ApplicationController
before_action :redirect_user
#before_action :current_user
before_action :set_pic, only:[:show,:edit,:update,:destroy]
    def index
        @status = logged_in?
        @pictures = Picture.all
       # @user = current_user
        @tags = Tag.top_tags
    end

    def show
        @user = current_user
        #user can only edit their only post
        @allowed = false
        if @picture.user == current_user
        @allowed = true
        end
    end

    def new
        @picture= Picture.new
        @user = current_user
        @tags = Tag.top_tags
     
    end

    def create
        @picture = Picture.new(pic_params)
        if @picture.save
            redirect_to @picture
        else
            @user = current_user
            @tags = Tag.top_tags
         
            render :new
        end
    end

    def edit
        @user = current_user
            @tags_array =[]
            @top_tags = Tag.top_tags
            @mytags = @picture.tags

            @top_tags.each{|tag|@tags_array<<tag }
            @mytags.each{|tag|@tags_array<<tag }
            @tags = @tags_array.uniq{|tag| tag.tag_name}
            

    end
    def update
     
        if @picture.update(pic_params)
            redirect_to @picture
        else
            @user = current_user
            @tags_array =[]
            @top_tags = Tag.top_tags
            @mytags = @picture.tags

            @top_tags.each{|tag|@tags_array<<tag }
            @mytags.each{|tag|@tags_array<<tag }
            @tags = @tags_array.uniq{|tag| tag.tag_name}
            
            render :edit
        end
    end
    def destroy
        @picture.destroy
        redirect_to pictures_path
    end

    private
    def set_pic
        @picture = Picture.find(params[:id])
    end

    def pic_params
        params.require(:picture).permit(:url,:title,:description,:content,:user_id,tag_ids:[], tags_attributes: [:tag_name])
    end
end
