class HappeningsController < ApplicationController
  # GET /happenings
  # GET /happenings.xml
  # GET /happenings.fxml
  def index
    @happenings = Happening.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @happenings }
      format.fxml  { render :fxml => @happenings }
    end
  end

  # GET /happenings/1
  # GET /happenings/1.xml
  # GET /happenings/1.fxml
  def show
    @happening = Happening.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @happening }
      format.fxml  { render :fxml => @happening }
    end
  end

  # GET /happenings/new
  # GET /happenings/new.xml
  def new
    @happening = Happening.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @happening }
    end
  end

  # GET /happenings/1/edit
  def edit
    @happening = Happening.find(params[:id])
  end

  # POST /happenings
  # POST /happenings.xml
  # POST /happenings.fxml
  def create
    @happening = Happening.new(params[:happening])

    respond_to do |format|
      if @happening.save
        flash[:notice] = 'Happening was successfully created.'
        format.html { redirect_to(@happening) }
        format.xml  { render :xml => @happening, :status => :created, :location => @happening }
        format.fxml  { render :fxml => @happening }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @happening.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @happening.errors }
      end
    end
  end

  # PUT /happenings/1
  # PUT /happenings/1.xml
  # PUT /happenings/1.fxml
  def update
    @happening = Happening.find(params[:id])
    @saved = @happening.update_attributes(params[:happening])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Happening was successfully updated.'
        format.html { redirect_to(@happening) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @happening }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @happening.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @happening.errors }
      end
    end
  end

  # DELETE /happenings/1
  # DELETE /happenings/1.xml
  # DELETE /happenings/1.fxml
  def destroy
    @happening = Happening.find(params[:id])
    @happening.destroy

    respond_to do |format|
      format.html { redirect_to(happenings_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @happening }
    end
  end
end