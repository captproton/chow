class PaloozaPluginsController < ApplicationController
  # GET /palooza_plugins
  # GET /palooza_plugins.xml
  # GET /palooza_plugins.fxml
  def index
    @palooza_plugins = PaloozaPlugin.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @palooza_plugins }
      format.fxml  { render :fxml => @palooza_plugins }
    end
  end

  # GET /palooza_plugins/1
  # GET /palooza_plugins/1.xml
  # GET /palooza_plugins/1.fxml
  def show
    @palooza_plugin = PaloozaPlugin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @palooza_plugin }
      format.fxml  { render :fxml => @palooza_plugin }
    end
  end

  # GET /palooza_plugins/new
  # GET /palooza_plugins/new.xml
  def new
    @palooza_plugin = PaloozaPlugin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @palooza_plugin }
    end
  end

  # GET /palooza_plugins/1/edit
  def edit
    @palooza_plugin = PaloozaPlugin.find(params[:id])
  end

  # POST /palooza_plugins
  # POST /palooza_plugins.xml
  # POST /palooza_plugins.fxml
  def create
    @palooza_plugin = PaloozaPlugin.new(params[:palooza_plugin])

    respond_to do |format|
      if @palooza_plugin.save
        flash[:notice] = 'PaloozaPlugin was successfully created.'
        format.html { redirect_to(@palooza_plugin) }
        format.xml  { render :xml => @palooza_plugin, :status => :created, :location => @palooza_plugin }
        format.fxml  { render :fxml => @palooza_plugin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @palooza_plugin.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @palooza_plugin.errors }
      end
    end
  end

  # PUT /palooza_plugins/1
  # PUT /palooza_plugins/1.xml
  # PUT /palooza_plugins/1.fxml
  def update
    @palooza_plugin = PaloozaPlugin.find(params[:id])
    @saved = @palooza_plugin.update_attributes(params[:palooza_plugin])

    respond_to do |format|
      if @saved
        flash[:notice] = 'PaloozaPlugin was successfully updated.'
        format.html { redirect_to(@palooza_plugin) }
        format.xml  { head :ok }
        format.fxml  { render :fxml => @palooza_plugin }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @palooza_plugin.errors, :status => :unprocessable_entity }
        format.fxml  { render :fxml => @palooza_plugin.errors }
      end
    end
  end

  # DELETE /palooza_plugins/1
  # DELETE /palooza_plugins/1.xml
  # DELETE /palooza_plugins/1.fxml
  def destroy
    @palooza_plugin = PaloozaPlugin.find(params[:id])
    @palooza_plugin.destroy

    respond_to do |format|
      format.html { redirect_to(palooza_plugins_url) }
      format.xml  { head :ok }
      format.fxml  { render :fxml => @palooza_plugin }
    end
  end
end