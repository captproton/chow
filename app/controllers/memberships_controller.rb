class MembershipsController < ApplicationController
  # GET /memberships
  # GET /memberships.xml
  # GET /memberships.fxml
  def index
    @memberships = Membership.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @memberships }
      format.fxml  { render :fxml => @memberships }
    end
  end

  # GET /memberships/1
  # GET /memberships/1.xml
  # GET /memberships/1.fxml
  def show
    @membership = Membership.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @membership }
      format.fxml  { render :fxml => @membership }
    end
  end

  # GET /memberships/new
  # GET /memberships/new.xml
  def new
    @membership = Membership.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @membership }
    end
  end

  # GET /memberships/1/edit
  def edit
    @membership = Membership.find(params[:id])
  end

  # POST /memberships
  # POST /memberships.xml
  # POST /memberships.fxml
  def create
    @membership = Membership.new(params[:membership])

    respond_to do |format|
      if @membership.save
        flash[:notice] = 'Membership was successfully created.'
        format.html { redirect_to(@membership) }
        format.xml  { render :xml => @membership, :status => :created, :location => @membership }
        format.fxml  { render :fxml => @membership }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @membership.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @membership.errors }
      end
    end
  end

  # PUT /memberships/1
  # PUT /memberships/1.xml
  # PUT /memberships/1.fxml
  def update
    @membership = Membership.find(params[:id])
    @saved = @membership.update_attributes(params[:membership])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Membership was successfully updated.'
        format.html { redirect_to(@membership) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @membership }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @membership.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @membership.errors }
      end
    end
  end

  # DELETE /memberships/1
  # DELETE /memberships/1.xml
  # DELETE /memberships/1.fxml
  def destroy
    @membership = Membership.find(params[:id])
    @membership.destroy

    respond_to do |format|
      format.html { redirect_to(memberships_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @membership }
    end
  end
end