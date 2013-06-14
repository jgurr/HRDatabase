class TitlesController < ApplicationController
  # GET /titles
  # GET /titles.json
  def index
    if session["user_id"].present?
      @titles = Title.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @titles }
      end
    else
      redirect_to login_url
    end
  end

  # GET /titles/1
  # GET /titles/1.json
  def show
    if session["user_id"].present?  
      @title = Title.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @title }
      end
    else
      redirect_to login_url
    end  
  end

  # GET /titles/new
  # GET /titles/new.json
  def new
    if session["user_id"].present?  
      @title = Title.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @title }
      end
    else
      redirect_to login_url
    end  
  end

  # GET /titles/1/edit
  def edit
    if session["user_id"].present?
      @title = Title.find(params[:id])
    else
      redirect_to login_url
    end  
  end

  # POST /titles
  # POST /titles.json
  def create
    if session["user_id"].present?
      @title = Title.new(params[:title])

      respond_to do |format|
        if @title.save
          format.html { redirect_to @title, notice: 'Title was successfully created.' }
          format.json { render json: @title, status: :created, location: @title }
        else
          format.html { render action: "new" }
          format.json { render json: @title.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to login_url
    end    
  end

  # PUT /titles/1
  # PUT /titles/1.json
  def update
    if session["user_id"].present?
      @title = Title.find(params[:id])

      respond_to do |format|
        if @title.update_attributes(params[:title])
          format.html { redirect_to @title, notice: 'Title was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @title.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to login_url
    end  
  end

  # DELETE /titles/1
  # DELETE /titles/1.json
  def destroy
    if session["user_id"].present?
      @title = Title.find(params[:id])
      @title.destroy

      respond_to do |format|
        format.html { redirect_to titles_url }
        format.json { head :no_content }
      end
    else
      redirect_to login_url
    end  
  end
end
