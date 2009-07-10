class MediaController < ApplicationController
  # GET /media
  # GET /media.xml
  # GET /media.fxml
  def index
    @media = Medium.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @media }
      format.fxml  { render :fxml => @media.to_fxml(:methods => [:attachment_url]) }
    end
  end

  # GET /media/1
  # GET /media/1.xml
  # GET /media/1.fxml
  def show
    @medium = Medium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @medium }
      format.fxml  { render :fxml => @medium.to_fxml(:methods => [:attachment_url]) }
    end
  end

  # GET /media/new
  # GET /media/new.xml
  def new
    @medium = Medium.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @medium }
    end
  end

  # GET /media/1/edit
  def edit
    @medium = Medium.find(params[:id])
  end

  # POST /media
  # POST /media.xml
  # POST /media.fxml
  def create
    @medium = Medium.new(params[:medium])

    respond_to do |format|
      if @medium.save
        flash[:notice] = 'Medium was successfully created.'
        format.html { redirect_to(@medium) }
        format.xml  { render :xml => @medium, :status => :created, :location => @medium }
        format.fxml  { render :fxml => @medium.to_fxml(:methods => [:attachment_url]) }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @medium.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @medium.errors }
      end
    end
  end

  # PUT /media/1
  # PUT /media/1.xml
  # PUT /media/1.fxml
  def update
    @medium = Medium.find(params[:id])
    @saved = @medium.update_attributes(params[:medium])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Medium was successfully updated.'
        format.html { redirect_to(@medium) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @medium.to_fxml(:methods => [:attachment_url]) }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @medium.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @medium.errors }
      end
    end
  end

  # DELETE /media/1
  # DELETE /media/1.xml
  # DELETE /media/1.fxml
  def destroy
    @medium = Medium.find(params[:id])
    @medium.destroy

    respond_to do |format|
      format.html { redirect_to(media_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @medium }
    end
  end
end