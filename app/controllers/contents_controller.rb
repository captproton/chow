class ContentsController < ApplicationController
  # GET /contents
  # GET /contents.xml
  # GET /contents.fxml
  def index
    @contents = Content.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contents }
      format.fxml  { render :fxml => @contents }
    end
  end

  # GET /contents/1
  # GET /contents/1.xml
  # GET /contents/1.fxml
  def show
    @content = Content.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @content }
      format.fxml  { render :fxml => @content }
    end
  end

  # GET /contents/new
  # GET /contents/new.xml
  def new
    @content = Content.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @content }
    end
  end

  # GET /contents/1/edit
  def edit
    @content = Content.find(params[:id])
  end

  # POST /contents
  # POST /contents.xml
  # POST /contents.fxml
  def create
    @content = Content.new(params[:content])

    respond_to do |format|
      if @content.save
        flash[:notice] = 'Content was successfully created.'
        format.html { redirect_to(@content) }
        format.xml  { render :xml => @content, :status => :created, :location => @content }
        format.fxml  { render :fxml => @content }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @content.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @content.errors }
      end
    end
  end

  # PUT /contents/1
  # PUT /contents/1.xml
  # PUT /contents/1.fxml
  def update
    @content = Content.find(params[:id])
    @saved = @content.update_attributes(params[:content])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Content was successfully updated.'
        format.html { redirect_to(@content) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @content }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @content.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @content.errors }
      end
    end
  end

  # DELETE /contents/1
  # DELETE /contents/1.xml
  # DELETE /contents/1.fxml
  def destroy
    @content = Content.find(params[:id])
    @content.destroy

    respond_to do |format|
      format.html { redirect_to(contents_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @content }
    end
  end
end