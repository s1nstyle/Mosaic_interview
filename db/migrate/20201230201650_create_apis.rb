class CreateApis < ActiveRecord::Migration[6.1]
  def change
    create_table :apis do |t|
      t.integer :Project_Geographic_District
      t.string :Project_Building_Identifier
      t.string :Project_School_Name
      t.string :Project_Type
      t.string :Project_Description
      t.string :Project_Phase_Name
      t.string :Project_Status_Name
      t.string :Project_Phase_Actual_Start_Date
      t.string :Project_Phase_Planned_End_Date
      t.string :Project_Phase_Actual_End_Date
      t.string :Project_Budget_Amount
      t.integer :Final_Estimate_of_Actual_Costs_Through_End_of_Phase_Amount
      t.integer :Total_Phase_Actual_Spending_Amount
      t.string :DSF_Number

      t.timestamps
    end
  end
end
