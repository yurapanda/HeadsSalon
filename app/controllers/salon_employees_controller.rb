class SalonEmployeesController < ApplicationController
  before_action :set_salon_employee, only: [:show, :edit, :update, :destroy]

  # GET /salon_employees
  # GET /salon_employees.json
  

  def index
    @salon_employees = SalonEmployee.all
  end

  # GET /salon_employees/1
  # GET /salon_employees/1.json
  def show
  end

  # GET /salon_employees/new
  def new
    @salon_employee = SalonEmployee.new
  end

  # GET /salon_employees/1/edit
  def edit
  end

  # POST /salon_employees
  # POST /salon_employees.json
  def create
    @salon_employee = SalonEmployee.new(salon_employee_params)

    respond_to do |format|
      if @salon_employee.save
        format.html { redirect_to @salon_employee, notice: 'Salon employee was successfully created.' }
        format.json { render :show, status: :created, location: @salon_employee }
      else
        format.html { render :new }
        format.json { render json: @salon_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /salon_employees/1
  # PATCH/PUT /salon_employees/1.json
  def update
    respond_to do |format|
      if @salon_employee.update(salon_employee_params)
        format.html { redirect_to @salon_employee, notice: 'Salon employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @salon_employee }
      else
        format.html { render :edit }
        format.json { render json: @salon_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /salon_employees/1
  # DELETE /salon_employees/1.json
  def destroy
    @salon_employee.destroy
    respond_to do |format|
      format.html { redirect_to salon_employees_url, notice: 'Salon employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_salon_employee
      @salon_employee = SalonEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def salon_employee_params
      params.require(:salon_employee).permit(:name, :description, :avatar)
    end
end
