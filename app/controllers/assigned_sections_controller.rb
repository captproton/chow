class AssignedSectionsController < ApplicationController
  # GET /assigned_sections
  # GET /assigned_sections.xml
  # GET /assigned_sections.fxml
  def index
    @assigned_sections = AssignedSection.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @assigned_sections }
      format.fxml  { render :fxml => @assigned_sections }
    end
  end

  # GET /assigned_sections/1
  # GET /assigned_sections/1.xml
  # GET /assigned_sections/1.fxml
  def show
    @assigned_section = AssignedSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @assigned_section }
      format.fxml  { render :fxml => @assigned_section }
    end
  end

  # GET /assigned_sections/new
  # GET /assigned_sections/new.xml
  def new
    @assigned_section = AssignedSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @assigned_section }
    end
  end

  # GET /assigned_sections/1/edit
  def edit
    @assigned_section = AssignedSection.find(params[:id])
  end

  # POST /assigned_sections
  # POST /assigned_sections.xml
  # POST /assigned_sections.fxml
  def create
    @assigned_section = AssignedSection.new(params[:assigned_section])

    respond_to do |format|
      if @assigned_section.save
        flash[:notice] = 'AssignedSection was successfully created.'
        format.html { redirect_to(@assigned_section) }
        format.xml  { render :xml => @assigned_section, :status => :created, :location => @assigned_section }
        format.fxml  { render :fxml => @assigned_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @assigned_section.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @assigned_section.errors }
      end
    end
  end

  # PUT /assigned_sections/1
  # PUT /assigned_sections/1.xml
  # PUT /assigned_sections/1.fxml
  def update
    @assigned_section = AssignedSection.find(params[:id])
    @saved = @assigned_section.update_attributes(params[:assigned_section])

    respond_to do |format|
      if @saved
        flash[:notice] = 'AssignedSection was successfully updated.'
        format.html { redirect_to(@assigned_section) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @assigned_section }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @assigned_section.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @assigned_section.errors }
      end
    end
  end

  # DELETE /assigned_sections/1
  # DELETE /assigned_sections/1.xml
  # DELETE /assigned_sections/1.fxml
  def destroy
    @assigned_section = AssignedSection.find(params[:id])
    @assigned_section.destroy

    respond_to do |format|
      format.html { redirect_to(assigned_sections_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @assigned_section }
    end
  end
end