class ApisController < ApplicationController
  before_action :set_api, only: [:show, :update, :destroy]

  # GET /apis

  def search
    @search = Ai.where(:Project_School_Name => :school_name, :Project_Description => :description)
    render json: {status: 'SUCCESS', message: 'Loaded project', data: @search}, status: :ok
  end
  
  def index
    @apis = Api.page(params[:page]).per(params[:per_page])

    render json: @apis
  end

  # GET /apis/1
  def show
    render json: @api
  end

  # POST /apis
  def create
    @api = Api.new(Project_Geographic_District: params["Project Geographic District"],
                    Project_Building_Identifier: params["Project Building Identifier"],
                    Project_Building_Identifier: params["Project Building Identifier"],
                    Project_Geographic_District: params["Project Geographic District"],
                    Project_Building_Identifier: params["Project Building Identifier"],
                    Project_School_Name: params["Project School Name"],
                    Project_Type: params["Project Type"],
                    Project_Description: params["Project Description"],
                    Project_Phase_Name: params["Project Phase Name"],
                    Project_Status_Name: params["Project Status Name"],
                    Project_Phase_Actual_Start_Date: params["Project Phase Actual Start Date"],
                    Project_Phase_Planned_End_Date: params["Project Phase Planned End Date"],
                    Project_Phase_Actual_End_Date: params["Project Phase Actual End Date"],
                    Project_Budget_Amount: params["Project Budget Amount"],
                    Final_Estimate_of_Actual_Costs_Through_End_of_Phase_Amount: params["Final Estimate of Actual Costs Through End of Phase Amount"],
                    Total_Phase_Actual_Spending_Amount: params["Total Phase Actual Spending Amount"],
                    DSF_Number: params["DSF Number(s)"])

    if @api.save
      render json: @api, status: :created, location: @api
    else
      render json: @api.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /apis/1
  def update
    if @api.update(api_params)
      render json: @api
    else
      render json: @api.errors, status: :unprocessable_entity
    end
  end

  # DELETE /apis/1
  def destroy
    @api.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api
      @api = Api.find(params[:Project_School_Name])
    end

    def search_params
    params.require(:search).permit(
                                  :Project_School_Name,
                                  :Project_Description)
    end

    # Only allow a list of trusted parameters through.
    def api_params
      params.require(:api).permit(:Project_Geographic_District, :Project_Building_Identifier, :Project_School_Name, :Project_Type, :Project_Description, :Project_Phase_Name, :Project_Status_Name, :Project_Phase_Actual_Start_Date, :Project_Phase_Planned_End_Date, :Project_Phase_Actual_End_Date, :Project_Budget_Amount, :Final_Estimate_of_Actual_Costs_Through_End_of_Phase_Amount, :Total_Phase_Actual_Spending_Amount, :DSF_Number)
    end
end
