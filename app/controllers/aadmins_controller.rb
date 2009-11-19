class AadminsController < ApplicationController
  # GET /aadmins
  # GET /aadmins.xml
  def index
    @aadmins = Aadmin.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aadmins }
    end
  end

  # GET /aadmins/1
  # GET /aadmins/1.xml
  def show
    @aadmin = Aadmin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aadmin }
    end
  end

  # GET /aadmins/new
  # GET /aadmins/new.xml
  def new
    @aadmin = Aadmin.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aadmin }
    end
  end

  # GET /aadmins/1/edit
  def edit
    @aadmin = Aadmin.find(params[:id])
  end

  # POST /aadmins
  # POST /aadmins.xml
  def create
    @aadmin = Aadmin.new(params[:aadmin])

    respond_to do |format|
      if @aadmin.save
        flash[:notice] = 'Aadmin was successfully created.'
        format.html { redirect_to(@aadmin) }
        format.xml  { render :xml => @aadmin, :status => :created, :location => @aadmin }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aadmin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /aadmins/1
  # PUT /aadmins/1.xml
  def update
    @aadmin = Aadmin.find(params[:id])

    respond_to do |format|
      if @aadmin.update_attributes(params[:aadmin])
        flash[:notice] = 'Aadmin was successfully updated.'
        format.html { redirect_to(@aadmin) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aadmin.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aadmins/1
  # DELETE /aadmins/1.xml
  def destroy
    @aadmin = Aadmin.find(params[:id])
    @aadmin.destroy

    respond_to do |format|
      format.html { redirect_to(aadmins_url) }
      format.xml  { head :ok }
    end
  end
end
