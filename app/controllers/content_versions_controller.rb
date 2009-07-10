class ContentVersionsController < ApplicationController
  # GET /content_versions
  # GET /content_versions.xml
  # GET /content_versions.fxml
  def index
    @content_versions = ContentVersion.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @content_versions }
      format.fxml  { render :fxml => @content_versions }
    end
  end

  # GET /content_versions/1
  # GET /content_versions/1.xml
  # GET /content_versions/1.fxml
  def show
    @content_version = ContentVersion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @content_version }
      format.fxml  { render :fxml => @content_version }
    end
  end

  # GET /content_versions/new
  # GET /content_versions/new.xml
  def new
    @content_version = ContentVersion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @content_version }
    end
  end

  # GET /content_versions/1/edit
  def edit
    @content_version = ContentVersion.find(params[:id])
  end

  # POST /content_versions
  # POST /content_versions.xml
  # POST /content_versions.fxml
  def create
    @content_version = ContentVersion.new(params[:content_version])

    respond_to do |format|
      if @content_version.save
        flash[:notice] = 'ContentVersion was successfully created.'
        format.html { redirect_to(@content_version) }
        format.xml  { render :xml => @content_version, :status => :created, :location => @content_version }
        format.fxml  { render :fxml => @content_version }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @content_version.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @content_version.errors }
      end
    end
  end

  # PUT /content_versions/1
  # PUT /content_versions/1.xml
  # PUT /content_versions/1.fxml
  def update
    @content_version = ContentVersion.find(params[:id])
    @saved = @content_version.update_attributes(params[:content_version])

    respond_to do |format|
      if @saved
        flash[:notice] = 'ContentVersion was successfully updated.'
        format.html { redirect_to(@content_version) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @content_version }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @content_version.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @content_version.errors }
      end
    end
  end

  # DELETE /content_versions/1
  # DELETE /content_versions/1.xml
  # DELETE /content_versions/1.fxml
  def destroy
    @content_version = ContentVersion.find(params[:id])
    @content_version.destroy

    respond_to do |format|
      format.html { redirect_to(content_versions_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @content_version }
    end
  end
end