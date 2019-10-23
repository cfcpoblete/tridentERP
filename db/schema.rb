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

ActiveRecord::Schema.define(version: 2016_06_02_111033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_ledgers", force: :cascade do |t|
    t.text "reference"
    t.string "currency"
    t.integer "account_id"
    t.decimal "account_balance", precision: 14, scale: 2, default: "0.0"
    t.integer "account_to_id"
    t.decimal "account_to_balance", precision: 14, scale: 2, default: "0.0"
    t.date "date"
    t.string "operation", limit: 20
    t.decimal "amount", precision: 14, scale: 2, default: "0.0"
    t.decimal "exchange_rate", precision: 14, scale: 4, default: "1.0"
    t.integer "creator_id"
    t.integer "approver_id"
    t.datetime "approver_datetime"
    t.integer "nuller_id"
    t.datetime "nuller_datetime"
    t.boolean "inverse", default: false
    t.boolean "has_error", default: false
    t.string "error_messages"
    t.string "status", limit: 50, default: "approved"
    t.integer "project_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "updater_id"
    t.string "name"
    t.integer "contact_id"
    t.index ["account_id"], name: "index_account_ledgers_on_account_id"
    t.index ["account_to_id"], name: "index_account_ledgers_on_account_to_id"
    t.index ["contact_id"], name: "index_account_ledgers_on_contact_id"
    t.index ["currency"], name: "index_account_ledgers_on_currency"
    t.index ["date"], name: "index_account_ledgers_on_date"
    t.index ["has_error"], name: "index_account_ledgers_on_has_error"
    t.index ["name"], name: "index_account_ledgers_on_name", unique: true
    t.index ["operation"], name: "index_account_ledgers_on_operation"
    t.index ["project_id"], name: "index_account_ledgers_on_project_id"
    t.index ["status"], name: "index_account_ledgers_on_status"
    t.index ["updater_id"], name: "index_account_ledgers_on_updater_id"
  end

  create_table "accounts", force: :cascade do |t|
    t.string "name"
    t.string "currency", limit: 10
    t.decimal "exchange_rate", precision: 14, scale: 4, default: "1.0"
    t.decimal "amount", precision: 14, scale: 2, default: "0.0"
    t.string "type", limit: 30
    t.integer "contact_id"
    t.integer "project_id"
    t.boolean "active", default: true
    t.text "description"
    t.date "date"
    t.string "state", limit: 30
    t.boolean "has_error", default: false
    t.string "error_messages", limit: 400
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "tag_ids", default: [], array: true
    t.integer "updater_id"
    t.decimal "tax_percentage", precision: 5, scale: 2, default: "0.0"
    t.integer "tax_id"
    t.decimal "total", precision: 14, scale: 2, default: "0.0"
    t.boolean "tax_in_out", default: false
    t.integer "creator_id"
    t.integer "approver_id"
    t.integer "nuller_id"
    t.date "due_date"
    t.index ["active"], name: "index_accounts_on_active"
    t.index ["amount"], name: "index_accounts_on_amount"
    t.index ["approver_id"], name: "index_accounts_on_approver_id"
    t.index ["contact_id"], name: "index_accounts_on_contact_id"
    t.index ["creator_id"], name: "index_accounts_on_creator_id"
    t.index ["currency"], name: "index_accounts_on_currency"
    t.index ["date"], name: "index_accounts_on_date"
    t.index ["due_date"], name: "index_accounts_on_due_date"
    t.index ["has_error"], name: "index_accounts_on_has_error"
    t.index ["name"], name: "index_accounts_on_name", unique: true
    t.index ["nuller_id"], name: "index_accounts_on_nuller_id"
    t.index ["project_id"], name: "index_accounts_on_project_id"
    t.index ["state"], name: "index_accounts_on_state"
    t.index ["tag_ids"], name: "index_accounts_on_tag_ids", using: :gin
    t.index ["tax_id"], name: "index_accounts_on_tax_id"
    t.index ["tax_in_out"], name: "index_accounts_on_tax_in_out"
    t.index ["type"], name: "index_accounts_on_type"
    t.index ["updater_id"], name: "index_accounts_on_updater_id"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "attachments", force: :cascade do |t|
    t.string "attachment_uid"
    t.string "name"
    t.integer "attachable_id"
    t.string "attachable_type"
    t.integer "user_id"
    t.integer "position", default: 0
    t.boolean "image", default: false
    t.integer "size"
    t.json "image_attributes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "publish", default: false
    t.index ["attachable_id", "attachable_type"], name: "index_attachments_on_attachable_id_and_attachable_type"
    t.index ["image"], name: "index_attachments_on_image"
    t.index ["publish"], name: "index_attachments_on_publish"
    t.index ["user_id"], name: "index_attachments_on_user_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "matchcode"
    t.string "first_name", limit: 100
    t.string "last_name", limit: 100
    t.string "organisation_name", limit: 100
    t.string "address", limit: 250
    t.string "phone", limit: 40
    t.string "mobile", limit: 40
    t.string "email", limit: 200
    t.string "tax_number", limit: 30
    t.string "aditional_info", limit: 250
    t.string "code"
    t.string "type"
    t.string "position"
    t.boolean "active", default: true
    t.boolean "staff", default: false
    t.boolean "client", default: false
    t.boolean "supplier", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "incomes_status", limit: 300, default: "{}"
    t.string "expenses_status", limit: 300, default: "{}"
    t.integer "tag_ids", default: [], array: true
    t.index ["active"], name: "index_contacts_on_active"
    t.index ["client"], name: "index_contacts_on_client"
    t.index ["first_name"], name: "index_contacts_on_first_name"
    t.index ["last_name"], name: "index_contacts_on_last_name"
    t.index ["matchcode"], name: "index_contacts_on_matchcode"
    t.index ["staff"], name: "index_contacts_on_staff"
    t.index ["supplier"], name: "index_contacts_on_supplier"
    t.index ["tag_ids"], name: "index_contacts_on_tag_ids", using: :gin
  end

  create_table "histories", force: :cascade do |t|
    t.integer "user_id"
    t.integer "historiable_id"
    t.boolean "new_item", default: false
    t.string "historiable_type"
    t.json "history_data", default: {}
    t.datetime "created_at"
    t.string "klass_type"
    t.json "all_data", default: {}
    t.index ["created_at"], name: "index_histories_on_created_at"
    t.index ["historiable_id", "historiable_type"], name: "index_histories_on_historiable_id_and_historiable_type"
    t.index ["user_id"], name: "index_histories_on_user_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "contact_id"
    t.integer "store_id"
    t.integer "account_id"
    t.date "date"
    t.string "ref_number"
    t.string "operation", limit: 10
    t.string "description"
    t.decimal "total", precision: 14, scale: 2, default: "0.0"
    t.integer "creator_id"
    t.integer "transference_id"
    t.integer "store_to_id"
    t.integer "project_id"
    t.boolean "has_error", default: false
    t.string "error_messages"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "updater_id"
    t.index ["account_id"], name: "index_inventories_on_account_id"
    t.index ["contact_id"], name: "index_inventories_on_contact_id"
    t.index ["date"], name: "index_inventories_on_date"
    t.index ["has_error"], name: "index_inventories_on_has_error"
    t.index ["operation"], name: "index_inventories_on_operation"
    t.index ["project_id"], name: "index_inventories_on_project_id"
    t.index ["ref_number"], name: "index_inventories_on_ref_number"
    t.index ["store_id"], name: "index_inventories_on_store_id"
    t.index ["updater_id"], name: "index_inventories_on_updater_id"
  end

  create_table "inventory_details", force: :cascade do |t|
    t.integer "inventory_id"
    t.integer "item_id"
    t.integer "store_id"
    t.decimal "quantity", precision: 14, scale: 2, default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["inventory_id"], name: "index_inventory_details_on_inventory_id"
    t.index ["item_id"], name: "index_inventory_details_on_item_id"
    t.index ["store_id"], name: "index_inventory_details_on_store_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer "unit_id"
    t.decimal "price", precision: 14, scale: 2, default: "0.0"
    t.string "name", limit: 255
    t.string "description"
    t.string "code", limit: 100
    t.boolean "for_sale", default: true
    t.boolean "stockable", default: true
    t.boolean "active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "buy_price", precision: 14, scale: 2, default: "0.0"
    t.string "unit_symbol", limit: 20
    t.string "unit_name", limit: 255
    t.integer "tag_ids", default: [], array: true
    t.integer "updater_id"
    t.integer "creator_id"
    t.index ["code"], name: "index_items_on_code"
    t.index ["creator_id"], name: "index_items_on_creator_id"
    t.index ["for_sale"], name: "index_items_on_for_sale"
    t.index ["stockable"], name: "index_items_on_stockable"
    t.index ["tag_ids"], name: "index_items_on_tag_ids", using: :gin
    t.index ["unit_id"], name: "index_items_on_unit_id"
    t.index ["updater_id"], name: "index_items_on_updater_id"
  end

  create_table "links", force: :cascade do |t|
    t.integer "organisation_id"
    t.integer "user_id"
    t.string "settings"
    t.boolean "creator", default: false
    t.boolean "master_account", default: false
    t.string "role", limit: 50
    t.boolean "active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "tenant", limit: 100
    t.string "api_token"
    t.index ["api_token"], name: "index_links_on_api_token", unique: true
    t.index ["organisation_id"], name: "index_links_on_organisation_id"
    t.index ["tenant"], name: "index_links_on_tenant"
    t.index ["user_id"], name: "index_links_on_user_id"
  end

  create_table "movement_details", force: :cascade do |t|
    t.integer "account_id"
    t.integer "item_id"
    t.decimal "quantity", precision: 14, scale: 2, default: "0.0"
    t.decimal "price", precision: 14, scale: 2, default: "0.0"
    t.string "description"
    t.decimal "discount", precision: 14, scale: 2, default: "0.0"
    t.decimal "balance", precision: 14, scale: 2, default: "0.0"
    t.decimal "original_price", precision: 14, scale: 2, default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["account_id"], name: "index_movement_details_on_account_id"
    t.index ["item_id"], name: "index_movement_details_on_item_id"
  end

  create_table "organisations", force: :cascade do |t|
    t.integer "country_id"
    t.string "name", limit: 100
    t.string "address"
    t.string "address_alt"
    t.string "phone", limit: 40
    t.string "phone_alt", limit: 40
    t.string "mobile", limit: 40
    t.string "email"
    t.string "website"
    t.integer "user_id"
    t.date "due_date"
    t.text "preferences"
    t.string "time_zone", limit: 100
    t.string "tenant", limit: 50
    t.string "currency", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "country_code", limit: 5
    t.boolean "inventory_active", default: true
    t.date "due_on"
    t.string "plan", default: "2users"
    t.index ["country_code"], name: "index_organisations_on_country_code"
    t.index ["country_id"], name: "index_organisations_on_country_id"
    t.index ["currency"], name: "index_organisations_on_currency"
    t.index ["due_date"], name: "index_organisations_on_due_date"
    t.index ["tenant"], name: "index_organisations_on_tenant", unique: true
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.boolean "active", default: true
    t.date "date_start"
    t.date "date_end"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["active"], name: "index_projects_on_active"
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "store_id"
    t.integer "item_id"
    t.decimal "unitary_cost", precision: 14, scale: 2, default: "0.0"
    t.decimal "quantity", precision: 14, scale: 2, default: "0.0"
    t.decimal "minimum", precision: 14, scale: 2, default: "0.0"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "active", default: true
    t.index ["active"], name: "index_stocks_on_active"
    t.index ["item_id"], name: "index_stocks_on_item_id"
    t.index ["minimum"], name: "index_stocks_on_minimum"
    t.index ["quantity"], name: "index_stocks_on_quantity"
    t.index ["store_id"], name: "index_stocks_on_store_id"
    t.index ["user_id"], name: "index_stocks_on_user_id"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone", limit: 40
    t.boolean "active", default: true
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tag_groups", force: :cascade do |t|
    t.string "name"
    t.string "bgcolor"
    t.integer "tag_ids", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_tag_groups_on_name", unique: true
    t.index ["tag_ids"], name: "index_tag_groups_on_tag_ids", using: :gin
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.string "bgcolor", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_tags_on_name"
  end

  create_table "taxes", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "abreviation", limit: 20
    t.decimal "percentage", precision: 5, scale: 2, default: "0.0"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "units", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "symbol", limit: 20
    t.boolean "integer", default: false
    t.boolean "visible", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "phone", limit: 40
    t.string "mobile", limit: 40
    t.string "website", limit: 200
    t.string "description", limit: 255
    t.text "old_emails", default: [], array: true
    t.string "locale", default: "en"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
