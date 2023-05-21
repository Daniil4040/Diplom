ActiveAdmin.register Comment, as: "UserComment" do


    permit_params :user_name, :message


    form partial: 'form'
    index do
        selectable_column
        id_column
        column :message
        column :user_name
        actions
    end


    show do
        attributes_table do
            row :message
            row :user_name
        end
    end
end


