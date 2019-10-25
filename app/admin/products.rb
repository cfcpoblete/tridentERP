ActiveAdmin.register Product do
  permit_params :name, :sku_name, :photo, :cost, :code, product_parts_attributes: [ :quantity, :part_id ]

  form do |f|
    f.inputs "Product" do
      f.input :name
      f.input :sku_name
      f.input :code
      f.input :description
    end

    f.inputs "Choose Product Parts" do
      f.has_many :product_parts, heading: "" do |t|
        t.input :part, include_blank: false, collection: Part.all.map { |p|  [ "#{ p.name } - #{ p.sku_name }", p.id ]  }
        t.input :quantity, value: 0
      end
    end

    f.actions
  end

  index do
    selectable_column
    column :code
    column :name
    column :sku_name
    column "Cost", :price
    column :description

    actions
  end

  show do
    attributes_table do
      row :code
      row :sku_name
      row :name
      row :description
    end

    panel "Product Parts Details" do
      table_for product.product_parts do
        column("Name") { |p| p.part.name }
        column("Sku Name") { |p| p.part.sku_name }
        column("Quantity") { |p| p.quantity }
      end
    end
  end
end
