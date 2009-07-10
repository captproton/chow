class SitesController < ApplicationController
  # GET /sites
  # GET /sites.xml
  # GET /sites.fxml
  def index
    @sites = Site.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sites }
      format.fxml  { render :fxml => @sites }
    end
  end

  # GET /sites/1
  # GET /sites/1.xml
  # GET /sites/1.fxml
  def show
    @site = Site.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @site }
      format.fxml  { render :fxml => @site }
    end
  end

  # GET /sites/new
  # GET /sites/new.xml
  def new
    @site = Site.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @site }
    end
  end

  # GET /sites/1/edit
  def edit
    @site = Site.find(params[:id])
  end

  # POST /sites
  # POST /sites.xml
  # POST /sites.fxml
  def create
    @site = Site.new(params[:site])

    respond_to do |format|
      if @site.save
        flash[:notice] = 'Site was successfully created.'
        format.html { redirect_to(@site) }
        format.xml  { render :xml => @site, :status => :created, :location => @site }
        format.fxml  { render :fxml => @site }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @site.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @site.errors }
      end
    end
  end

  # PUT /sites/1
  # PUT /sites/1.xml
  # PUT /sites/1.fxml
  def update
    @site = Site.find(params[:id])
    @saved = @site.update_attributes(params[:site])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Site was successfully updated.'
        format.html { redirect_to(@site) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @site }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @site.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @site.errors }
      end
    end
  end

  # DELETE /sites/1
  # DELETE /sites/1.xml
  # DELETE /sites/1.fxml
  def destroy
    @site = Site.find(params[:id])
    @site.destroy

    respond_to do |format|
      format.html { redirect_to(sites_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @site }
    end
  end
end