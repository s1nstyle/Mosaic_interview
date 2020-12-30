# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_30_201650) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apis", force: :cascade do |t|
    t.integer "Project_Geographic_District"
    t.string "Project_Building_Identifier"
    t.string "Project_School_Name"
    t.string "Project_Type"
    t.string "Project_Description"
    t.string "Project_Phase_Name"
    t.string "Project_Status_Name"
    t.string "Project_Phase_Actual_Start_Date"
    t.string "Project_Phase_Planned_End_Date"
    t.string "Project_Phase_Actual_End_Date"
    t.string "Project_Budget_Amount"
    t.integer "Final_Estimate_of_Actual_Costs_Through_End_of_Phase_Amount"
    t.integer "Total_Phase_Actual_Spending_Amount"
    t.string "DSF_Number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
