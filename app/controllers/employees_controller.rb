class EmployeesController < ApplicationController
    def index
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def new
        @employee = Employee.new
    end

    def create
        # byebug
        # if !Employee.where(alias: employee_params['alias']).exists? &&
        #        !Employee.where(title: employee_params['title']).exists?
        @employee = Employee.new(employee_params)
        if @employee.valid?
            @employee.save
            redirect_to employee_path(@employee)
        else
            redirect_to employees_path
        end
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])

        # if !Employee.where(alias: employee_params['alias']).exists? &&
        #        !Employee.where(title: employee_params['title']).exists?
        @employee.update(employee_params)

        # end
        redirect_to employee_path(@employee)
    end

    private

    def employee_params
        params.require(:employee).permit!
    end
end
