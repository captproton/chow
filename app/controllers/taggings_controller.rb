class TaggingsController < ApplicationController
  # GET /taggings
  # GET /taggings.xml
  # GET /taggings.fxml
  def index
    @taggings = Tagging.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @taggings }
      format.fxml  { render :fxml => @taggings }
    end
  end

  # GET /taggings/1
  # GET /taggings/1.xml
  # GET /taggings/1.fxml
  def show
    @tagging = Tagging.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tagging }
      format.fxml  { render :fxml => @tagging }
    end
  end

  # GET /taggings/new
  # GET /taggings/new.xml
  def new
    @tagging = Tagging.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tagging }
    end
  end

  # GET /taggings/1/edit
  def edit
    @tagging = Tagging.find(params[:id])
  end

  # POST /taggings
  # POST /taggings.xml
  # POST /taggings.fxml
  def create
    @tagging = Tagging.new(params[:tagging])

    respond_to do |format|
      if @tagging.save
        flash[:notice] = 'Tagging was successfully created.'
        format.html { redirect_to(@tagging) }
        format.xml  { render :xml => @tagging, :status => :created, :location => @tagging }
        format.fxml  { render :fxml => @tagging }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tagging.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @tagging.errors }
      end
    end
  end

  # PUT /taggings/1
  # PUT /taggings/1.xml
  # PUT /taggings/1.fxml
  def update
    @tagging = Tagging.find(params[:id])
    @saved = @tagging.update_attributes(params[:tagging])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Tagging was successfully updated.'
        format.html { redirect_to(@tagging) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @tagging }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tagging.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @tagging.errors }
      end
    end
  end

  # DELETE /taggings/1
  # DELETE /taggings/1.xml
  # DELETE /taggings/1.fxml
  def destroy
    @tagging = Tagging.find(params[:id])
    @tagging.destroy

    respond_to do |format|
      format.html { redirect_to(taggings_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @tagging }
    end
  end
end