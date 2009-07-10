class CachedPagesController < ApplicationController
  # GET /cached_pages
  # GET /cached_pages.xml
  # GET /cached_pages.fxml
  def index
    @cached_pages = CachedPage.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cached_pages }
      format.fxml  { render :fxml => @cached_pages }
    end
  end

  # GET /cached_pages/1
  # GET /cached_pages/1.xml
  # GET /cached_pages/1.fxml
  def show
    @cached_page = CachedPage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cached_page }
      format.fxml  { render :fxml => @cached_page }
    end
  end

  # GET /cached_pages/new
  # GET /cached_pages/new.xml
  def new
    @cached_page = CachedPage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cached_page }
    end
  end

  # GET /cached_pages/1/edit
  def edit
    @cached_page = CachedPage.find(params[:id])
  end

  # POST /cached_pages
  # POST /cached_pages.xml
  # POST /cached_pages.fxml
  def create
    @cached_page = CachedPage.new(params[:cached_page])

    respond_to do |format|
      if @cached_page.save
        flash[:notice] = 'CachedPage was successfully created.'
        format.html { redirect_to(@cached_page) }
        format.xml  { render :xml => @cached_page, :status => :created, :location => @cached_page }
        format.fxml  { render :fxml => @cached_page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cached_page.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @cached_page.errors }
      end
    end
  end

  # PUT /cached_pages/1
  # PUT /cached_pages/1.xml
  # PUT /cached_pages/1.fxml
  def update
    @cached_page = CachedPage.find(params[:id])
    @saved = @cached_page.update_attributes(params[:cached_page])

    respond_to do |format|
      if @saved
        flash[:notice] = 'CachedPage was successfully updated.'
        format.html { redirect_to(@cached_page) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @cached_page }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cached_page.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @cached_page.errors }
      end
    end
  end

  # DELETE /cached_pages/1
  # DELETE /cached_pages/1.xml
  # DELETE /cached_pages/1.fxml
  def destroy
    @cached_page = CachedPage.find(params[:id])
    @cached_page.destroy

    respond_to do |format|
      format.html { redirect_to(cached_pages_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @cached_page }
    end
  end
end