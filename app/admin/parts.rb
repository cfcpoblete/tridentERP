ActiveAdmin.register Part do
  permit_params :name, :sku_name, :photo, :cost, :code, :description

  index do
    selectable_column
    column :code
    column :name
    column :sku_name
    column :cost
    column :description

    actions
  end

  form do |f|
    f.inputs "Parts" do
      f.input :name
      f.input :sku_name
      f.input :cost
      f.input :code
      f.input :description
    end
    f.actions
  end
end
