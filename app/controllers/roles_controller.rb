class RolesController < ApplicationController
  # GET /roles
  # GET /roles.json
  def index
    if session["user_id"].present?
      @roles = Role.all
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @roles }
      end
    else
      redirect_to login_url
    end  
  end

  # GET /roles/1
  # GET /roles/1.json
  def show
    if session["user_id"].present?
    @role = Role.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @role }
      end
    else
      redirect_to login_url
    end
  end

  # GET /roles/new
  # GET /roles/new.json
  def new
    if session["user_id"].present?
    @role = Role.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @role }
      end
    else
      redirect_to login_url
    end
  end

  # GET /roles/1/edit
  def edit
    if session["user_id"].present?
      @role = Role.find(params[:id])
    else
      redirect_to login_url
    end
  end

  # POST /roles
  # POST /roles.json
  def create
    if session["user_id"].present? 
      @role = Role.new(params[:role])

      respond_to do |format|
        if @role.save
          format.html { redirect_to @role, notice: 'Role was successfully created.' }
          format.json { render json: @role, status: :created, location: @role }
        else
          format.html { render action: "new" }
          format.json { render json: @role.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to login_url
    end
  end

  # PUT /roles/1
  # PUT /roles/1.json
  def update
    if session["user_id"].present?
      @role = Role.find(params[:id])

      respond_to do |format|
        if @role.update_attributes(params[:role])
          format.html { redirect_to @role, notice: 'Role was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @role.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to login_url
    end  
  end

  # DELETE /roles/1
  # DELETE /roles/1.json
  def destroy
    if session["user_id"].present?
      @role = Role.find(params[:id])
      @role.destroy

      respond_to do |format|
        format.html { redirect_to roles_url }
        format.json { head :no_content }
      end
    else
      redirect_to login_url
    end    
  end
end
