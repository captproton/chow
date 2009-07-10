class SectionsController < ApplicationController
  # GET /sections
  # GET /sections.xml
  # GET /sections.fxml
  def index
    @sections = Section.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sections }
      format.fxml  { render :fxml => @sections }
    end
  end

  # GET /sections/1
  # GET /sections/1.xml
  # GET /sections/1.fxml
  def show
    @section = Section.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @section }
      format.fxml  { render :fxml => @section }
    end
  end

  # GET /sections/new
  # GET /sections/new.xml
  def new
    @section = Section.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @section }
    end
  end

  # GET /sections/1/edit
  def edit
    @section = Section.find(params[:id])
  end

  # POST /sections
  # POST /sections.xml
  # POST /sections.fxml
  def create
    @section = Section.new(params[:section])

    respond_to do |format|
      if @section.save
        flash[:notice] = 'Section was successfully created.'
        format.html { redirect_to(@section) }
        format.xml  { render :xml => @section, :status => :created, :location => @section }
        format.fxml  { render :fxml => @section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @section.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @section.errors }
      end
    end
  end

  # PUT /sections/1
  # PUT /sections/1.xml
  # PUT /sections/1.fxml
  def update
    @section = Section.find(params[:id])
    @saved = @section.update_attributes(params[:section])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Section was successfully updated.'
        format.html { redirect_to(@section) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @section }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @section.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @section.errors }
      end
    end
  end

  # DELETE /sections/1
  # DELETE /sections/1.xml
  # DELETE /sections/1.fxml
  def destroy
    @section = Section.find(params[:id])
    @section.destroy

    respond_to do |format|
      format.html { redirect_to(sections_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @section }
    end
  end
end