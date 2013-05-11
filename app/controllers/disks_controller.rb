class DisksController < ApplicationController
  # GET /disks
  # GET /disks.json
  def index
    @disks = Disk.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @disks }
    end
  end

  # GET /disks/1
  # GET /disks/1.json
  def show
    @disk = Disk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @disk }
    end
  end

  # GET /disks/new
  # GET /disks/new.json
  def new
    @disk = Disk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @disk }
    end
  end

  # GET /disks/1/edit
  def edit
    @disk = Disk.find(params[:id])
  end

  # POST /disks
  # POST /disks.json
  def create
    @disk = Disk.new(params[:disk])

    respond_to do |format|
      if @disk.save
        format.html { redirect_to @disk, notice: 'Disk was successfully created.' }
        format.json { render json: @disk, status: :created, location: @disk }
      else
        format.html { render action: "new" }
        format.json { render json: @disk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /disks/1
  # PUT /disks/1.json
  def update
    @disk = Disk.find(params[:id])

    respond_to do |format|
      if @disk.update_attributes(params[:disk])
        format.html { redirect_to @disk, notice: 'Disk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @disk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /disks/1
  # DELETE /disks/1.json
  def destroy
    @disk = Disk.find(params[:id])
    @disk.destroy

    respond_to do |format|
      format.html { redirect_to disks_url }
      format.json { head :no_content }
    end
  end
end
