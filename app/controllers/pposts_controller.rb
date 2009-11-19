class PpostsController < ApplicationController
  def find_it
debugger
    p params
    @ppost = Ppost.find_by_pkey params[:pkey].first
    p @ppost
  end

  # GET /pposts
  # GET /pposts.xml
  def index
    @pposts = Ppost.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pposts }
    end
  end

  # GET /pposts/1
  # GET /pposts/1.xml
  def show
    @ppost = Ppost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ppost }
    end
  end

  # GET /pposts/new
  # GET /pposts/new.xml
  def new
    @ppost = Ppost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ppost }
    end
  end

  # GET /pposts/1/edit
  def edit
    @ppost = Ppost.find(params[:id])
  end

  # POST /pposts
  # POST /pposts.xml
  def create
    @ppost = Ppost.new(params[:ppost])

    respond_to do |format|
      if @ppost.save
        flash[:notice] = 'Ppost was successfully created.'
        format.html { redirect_to(@ppost) }
        format.xml  { render :xml => @ppost, :status => :created, :location => @ppost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ppost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pposts/1
  # PUT /pposts/1.xml
  def update
    @ppost = Ppost.find(params[:id])

    respond_to do |format|
      if @ppost.update_attributes(params[:ppost])
        flash[:notice] = 'Ppost was successfully updated.'
        format.html { redirect_to(@ppost) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ppost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pposts/1
  # DELETE /pposts/1.xml
  def destroy
    @ppost = Ppost.find(params[:id])
    @ppost.destroy

    respond_to do |format|
      format.html { redirect_to(pposts_url) }
      format.xml  { head :ok }
    end
  end
end
