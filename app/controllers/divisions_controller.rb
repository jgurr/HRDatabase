class DivisionsController < ApplicationController
  # GET /divisions
  # GET /divisions.json
  def index
    if session["user_id"].present?
      @divisions = Division.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @divisions }
      end
    else
      redirect_to login_url
    end  
  end

  # GET /divisions/1
  # GET /divisions/1.json
  def show
    if session["user_id"].present?  
      @division = Division.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @division }
      end
    else
      redirect_to login_url
    end  
  end

  # GET /divisions/new
  # GET /divisions/new.json
  def new
    if session["user_id"].present?
      @division = Division.new

      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @division }
      end
    else
      redirect_to login_url
    end  
  end

  # GET /divisions/1/edit
  def edit
    if session["user_id"].present?
     @division = Division.find(params[:id])
    else
      redirect_to login_url
    end  
  end

  # POST /divisions
  # POST /divisions.json
  def create
    if session["user_id"].present?  
      @division = Division.new(params[:division])

      respond_to do |format|
        if @division.save
          format.html { redirect_to @division, notice: 'Division was successfully created.' }
          format.json { render json: @division, status: :created, location: @division }
        else
          format.html { render action: "new" }
          format.json { render json: @division.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to login_url
    end  
  end

  # PUT /divisions/1
  # PUT /divisions/1.json
  def update
    if session["user_id"].present?
      @division = Division.find(params[:id])

      respond_to do |format|
        if @division.update_attributes(params[:division])
          format.html { redirect_to @division, notice: 'Division was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @division.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to login_url
    end  
  end

  # DELETE /divisions/1
  # DELETE /divisions/1.json
  def destroy
    if session["user_id"].present?
      @division = Division.find(params[:id])
      @division.destroy

      respond_to do |format|
        format.html { redirect_to divisions_url }
        format.json { head :no_content }
      end
    else
      redirect_to login_url
    end  
  end
end
