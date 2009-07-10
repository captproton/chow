class TagsController < ApplicationController
  # GET /tags
  # GET /tags.xml
  # GET /tags.fxml
  def index
    @tags = Tag.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tags }
      format.fxml  { render :fxml => @tags }
    end
  end

  # GET /tags/1
  # GET /tags/1.xml
  # GET /tags/1.fxml
  def show
    @tag = Tag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tag }
      format.fxml  { render :fxml => @tag }
    end
  end

  # GET /tags/new
  # GET /tags/new.xml
  def new
    @tag = Tag.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tag }
    end
  end

  # GET /tags/1/edit
  def edit
    @tag = Tag.find(params[:id])
  end

  # POST /tags
  # POST /tags.xml
  # POST /tags.fxml
  def create
    @tag = Tag.new(params[:tag])

    respond_to do |format|
      if @tag.save
        flash[:notice] = 'Tag was successfully created.'
        format.html { redirect_to(@tag) }
        format.xml  { render :xml => @tag, :status => :created, :location => @tag }
        format.fxml  { render :fxml => @tag }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tag.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @tag.errors }
      end
    end
  end

  # PUT /tags/1
  # PUT /tags/1.xml
  # PUT /tags/1.fxml
  def update
    @tag = Tag.find(params[:id])
    @saved = @tag.update_attributes(params[:tag])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Tag was successfully updated.'
        format.html { redirect_to(@tag) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @tag }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tag.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @tag.errors }
      end
    end
  end

  # DELETE /tags/1
  # DELETE /tags/1.xml
  # DELETE /tags/1.fxml
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    respond_to do |format|
      format.html { redirect_to(tags_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @tag }
    end
  end
end