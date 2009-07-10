class FeedbacksController < ApplicationController
  # GET /feedbacks
  # GET /feedbacks.xml
  # GET /feedbacks.fxml
  def index
    @feedbacks = Feedback.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feedbacks }
      format.fxml  { render :fxml => @feedbacks }
    end
  end

  # GET /feedbacks/1
  # GET /feedbacks/1.xml
  # GET /feedbacks/1.fxml
  def show
    @feedback = Feedback.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feedback }
      format.fxml  { render :fxml => @feedback }
    end
  end

  # GET /feedbacks/new
  # GET /feedbacks/new.xml
  def new
    @feedback = Feedback.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feedback }
    end
  end

  # GET /feedbacks/1/edit
  def edit
    @feedback = Feedback.find(params[:id])
  end

  # POST /feedbacks
  # POST /feedbacks.xml
  # POST /feedbacks.fxml
  def create
    @feedback = Feedback.new(params[:feedback])

    respond_to do |format|
      if @feedback.save
        flash[:notice] = 'Feedback was successfully created.'
        format.html { redirect_to(@feedback) }
        format.xml  { render :xml => @feedback, :status => :created, :location => @feedback }
        format.fxml  { render :fxml => @feedback }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feedback.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @feedback.errors }
      end
    end
  end

  # PUT /feedbacks/1
  # PUT /feedbacks/1.xml
  # PUT /feedbacks/1.fxml
  def update
    @feedback = Feedback.find(params[:id])
    @saved = @feedback.update_attributes(params[:feedback])

    respond_to do |format|
      if @saved
        flash[:notice] = 'Feedback was successfully updated.'
        format.html { redirect_to(@feedback) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @feedback }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feedback.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @feedback.errors }
      end
    end
  end

  # DELETE /feedbacks/1
  # DELETE /feedbacks/1.xml
  # DELETE /feedbacks/1.fxml
  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy

    respond_to do |format|
      format.html { redirect_to(feedbacks_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @feedback }
    end
  end
end