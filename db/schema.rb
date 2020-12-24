# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_25_071656) do

  create_table "boat_drivers", force: :cascade do |t|
    t.integer "boat_id"
    t.string "name", limit: 255
    t.string "license_numner", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boat_types", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "code", limit: 255
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boats", force: :cascade do |t|
    t.string "name", limit: 255
    t.integer "control_room_id"
    t.string "name_of_the_vessel", limit: 255
    t.string "registration_number", limit: 255
    t.string "owner_of_the_vessel", limit: 255
    t.string "owner_email", limit: 255
    t.string "mobile_no", limit: 255
    t.string "navigation_route", limit: 255
    t.string "route_permission_number", limit: 255
    t.string "captain_name", limit: 255
    t.string "captain_license_no", limit: 255
    t.integer "created_by"
    t.string "user_id", limit: 255
    t.integer "life_jackets"
    t.integer "fire_extinguishers"
    t.integer "passenger_capacity"
    t.integer "life_rafts"
    t.integer "life_buoys"
    t.string "trip_duriation", limit: 255
    t.string "boat_type", limit: 255
    t.string "engine_type", limit: 255
    t.string "proposed_use", limit: 255
    t.boolean "active", default: true
    t.string "permission_file_no", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", limit: 255
    t.boolean "trip_run", default: false
    t.integer "division_id"
    t.integer "unit_id"
  end

  create_table "control_points", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "location", limit: 255
    t.string "district", limit: 255
    t.string "contact_number", limit: 255
    t.string "email", limit: 255
    t.boolean "active", default: true
    t.string "code", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image", limit: 255
  end

  create_table "divisions", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "code", limit: 255
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engine_types", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "code", limit: 255
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "file_sequences", force: :cascade do |t|
    t.string "file_type", limit: 255
    t.integer "sequence_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "noc_boat_registrations", force: :cascade do |t|
    t.string "owner_name", limit: 255
    t.string "agency_name", limit: 255
    t.string "owner_email", limit: 255
    t.string "mobile_number", limit: 255
    t.text "adress"
    t.string "boat_name", limit: 255
    t.string "boat_type", limit: 255
    t.string "engine_type", limit: 255
    t.string "manufacturing_certificate_number", limit: 255
    t.string "manufacturing_date", limit: 255
    t.string "proposed_location", limit: 255
    t.string "proposed_use", limit: 255
    t.string "file_no", limit: 255
    t.integer "user_id"
    t.string "application_status", limit: 255
    t.date "applied_date"
    t.date "expire_date"
    t.date "approved_date"
    t.string "paid_amount", limit: 255
    t.string "tnr_no", limit: 255
    t.string "aadharCard", limit: 255
    t.string "manufacturing_certificate", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "approved_by"
    t.text "comment"
    t.integer "controll_room_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "user_id"
    t.string "mobile_number", limit: 255
    t.float "amount"
    t.string "tnr_no", limit: 255
    t.string "payment_status", limit: 255
    t.text "transaction_details"
    t.string "payment_at", limit: 255
    t.string "email", limit: 255
    t.string "name", limit: 255
    t.string "used_file_no", limit: 255
    t.boolean "is_used", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "permission_orders", force: :cascade do |t|
    t.string "control_room_location", limit: 255
    t.string "name_of_the_vessel", limit: 255
    t.string "registration_number", limit: 255
    t.string "owner_of_the_vessel", limit: 255
    t.string "owner_email", limit: 255
    t.string "mobile_no", limit: 255
    t.string "navigation_route", limit: 255
    t.string "route_permission_number", limit: 255
    t.string "license_registration_certificate", limit: 255
    t.string "routes_permisiion", limit: 255
    t.string "captain_license", limit: 255
    t.string "noc_certificate", limit: 255
    t.string "captain_name", limit: 255
    t.string "captain_license_no", limit: 255
    t.string "application_status", limit: 255
    t.date "appllied_date"
    t.integer "approved_by"
    t.date "approved_at"
    t.string "approved_document", limit: 255
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "file_no", limit: 255
    t.integer "life_jackets"
    t.integer "fire_extinguishers"
    t.integer "passenger_capacity"
    t.integer "life_rafts"
    t.integer "controll_room_id"
  end

  create_table "proposed_uses", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "code", limit: 255
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "system_settings", force: :cascade do |t|
    t.string "key", limit: 255
    t.string "value", limit: 255
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trip_clearances", force: :cascade do |t|
    t.integer "boat_id"
    t.integer "control_room_id"
    t.string "name_of_the_vessel", limit: 255
    t.string "registration_number", limit: 255
    t.string "owner_of_the_vessel", limit: 255
    t.string "owner_email", limit: 255
    t.string "mobile_no", limit: 255
    t.string "navigation_route", limit: 255
    t.string "route_permission_number", limit: 255
    t.string "captain_name", limit: 255
    t.string "captain_license_no", limit: 255
    t.string "created_by", limit: 255
    t.integer "life_jackets"
    t.integer "fire_extinguishers"
    t.integer "passenger_capacity"
    t.integer "life_rafts"
    t.integer "life_buoys"
    t.integer "trip_duriation"
    t.string "boat_type", limit: 255
    t.string "engine_type", limit: 255
    t.string "proposed_use", limit: 255
    t.boolean "is_current", default: false
    t.date "departure_date"
    t.boolean "wearing_life_jackets", default: false
    t.boolean "influence_of_alcohol", default: false
    t.boolean "trip_end", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "trip_no", limit: 255
    t.datetime "start_time"
    t.datetime "end_time"
    t.text "remarks"
    t.integer "passenger_count"
    t.string "briefed_to_passenger", limit: 255
    t.string "overloaded", limit: 255
    t.string "wearing_life_jackets_all", limit: 255
    t.string "influence_of_alcohol_all", limit: 255
    t.string "registered_with_aptdc", limit: 255
    t.string "has_route_permissions", limit: 255
    t.string "has_prominently_displays_the_capacity", limit: 255
    t.string "has_lifesaving_equipment", limit: 255
    t.string "has_adequate_firefighting_equipment", limit: 255
    t.string "does_not_have_any_major_damage", limit: 255
    t.string "has_crew_displayed", limit: 255
    t.string "driver_has_the_requisite_license_and_is_registered", limit: 255
    t.string "crew_have_the_requisite_licenses_and_are_registered", limit: 255
    t.string "boat_driver_and_the_crew_have_their_identity_cards_badges", limit: 255
    t.string "crew_is_fit_and_healthy_not", limit: 255
  end

  create_table "trip_drivers", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "license_number", limit: 255
    t.integer "boat_id"
    t.integer "trip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "code", limit: 255
    t.integer "division_id"
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "name", limit: 255
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 255
    t.string "mobile_no", limit: 255
    t.string "email", limit: 255
    t.string "crypted_password", limit: 255
    t.string "password_salt", limit: 255
    t.string "persistence_token", limit: 255
    t.string "perishable_token", limit: 255
    t.string "password", limit: 255
    t.string "password_confirmation", limit: 255
    t.boolean "super_admin"
    t.boolean "employee"
    t.string "employee_code", limit: 255
    t.string "user_role", limit: 255
    t.integer "control_room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "unit_user", default: false
    t.boolean "ho_user", default: false
    t.boolean "admin", default: false
  end

end
