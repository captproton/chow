class AssignedAssetsController < ApplicationController
  # GET /assigned_assets
  # GET /assigned_assets.xml
  # GET /assigned_assets.fxml
  def index
    @assigned_assets = AssignedAsset.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @assigned_assets }
      format.fxml  { render :fxml => @assigned_assets }
    end
  end

  # GET /assigned_assets/1
  # GET /assigned_assets/1.xml
  # GET /assigned_assets/1.fxml
  def show
    @assigned_asset = AssignedAsset.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @assigned_asset }
      format.fxml  { render :fxml => @assigned_asset }
    end
  end

  # GET /assigned_assets/new
  # GET /assigned_assets/new.xml
  def new
    @assigned_asset = AssignedAsset.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @assigned_asset }
    end
  end

  # GET /assigned_assets/1/edit
  def edit
    @assigned_asset = AssignedAsset.find(params[:id])
  end

  # POST /assigned_assets
  # POST /assigned_assets.xml
  # POST /assigned_assets.fxml
  def create
    @assigned_asset = AssignedAsset.new(params[:assigned_asset])

    respond_to do |format|
      if @assigned_asset.save
        flash[:notice] = 'AssignedAsset was successfully created.'
        format.html { redirect_to(@assigned_asset) }
        format.xml  { render :xml => @assigned_asset, :status => :created, :location => @assigned_asset }
        format.fxml  { render :fxml => @assigned_asset }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @assigned_asset.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @assigned_asset.errors }
      end
    end
  end

  # PUT /assigned_assets/1
  # PUT /assigned_assets/1.xml
  # PUT /assigned_assets/1.fxml
  def update
    @assigned_asset = AssignedAsset.find(params[:id])
    @saved = @assigned_asset.update_attributes(params[:assigned_asset])

    respond_to do |format|
      if @saved
        flash[:notice] = 'AssignedAsset was successfully updated.'
        format.html { redirect_to(@assigned_asset) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @assigned_asset }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @assigned_asset.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @assigned_asset.errors }
      end
    end
  end

  # DELETE /assigned_assets/1
  # DELETE /assigned_assets/1.xml
  # DELETE /assigned_assets/1.fxml
  def destroy
    @assigned_asset = AssignedAsset.find(params[:id])
    @assigned_asset.destroy

    respond_to do |format|
      format.html { redirect_to(assigned_assets_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @assigned_asset }
    end
  end
end