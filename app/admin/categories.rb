ActiveAdmin.register Category do


    permit_params :name


    form partial: 'form'
    index do
        selectable_column
        id_column
        column :name
        actions
    end


    show do
        attributes_table do
            row :name
        end
    end
end