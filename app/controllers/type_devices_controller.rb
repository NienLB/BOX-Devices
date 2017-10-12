class TypeDevicesController < ApplicationController
  before_action :set_type_device, only: [:show, :edit, :update, :destroy]

  # GET /type_devices
  # GET /type_devices.json
  def index
    @type_devices = TypeDevice.all
  end

  # GET /type_devices/1
  # GET /type_devices/1.json
  def show
  end

  # GET /type_devices/new
  def new
    @type_device = TypeDevice.new
  end

  # GET /type_devices/1/edit
  def edit
  end

  # POST /type_devices
  # POST /type_devices.json
  def create
    @type_device = TypeDevice.new(type_device_params)

    respond_to do |format|
      if @type_device.save
        format.html { redirect_to @type_device, notice: 'Type device was successfully created.' }
        format.json { render :show, status: :created, location: @type_device }
      else
        format.html { render :new }
        format.json { render json: @type_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_devices/1
  # PATCH/PUT /type_devices/1.json
  def update
    respond_to do |format|
      if @type_device.update(type_device_params)
        format.html { redirect_to @type_device, notice: 'Type device was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_device }
      else
        format.html { render :edit }
        format.json { render json: @type_device.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_devices/1
  # DELETE /type_devices/1.json
  def destroy
    @type_device.destroy
    respond_to do |format|
      format.html { redirect_to type_devices_url, notice: 'Type device was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_device
      @type_device = TypeDevice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_device_params
      params.require(:type_device).permit(:devices_id)
    end
end
