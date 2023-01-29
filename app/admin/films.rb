ActiveAdmin.register Film do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :trailer_link, :rating, :year, :director, :description, :category_id, :poster

  form partial: 'form'
  index do
    selectable_column
    id_column
    column :name
    column :trailer_link
    column :rating
    column :year
    column :director
    column :description
    column :category_id
    column :poster do |film|
      link_to("#{film.poster.filename}", url_for(film.poster)) if film.poster.persisted?
    end
    actions
  end

  show do
    attributes_table do
      row :name
      row :trailer_link
      row :rating
      row :year
      row :director
      row :description
      row :category_id
      row :poster do |film|
        link_to("#{film.poster.filename}", url_for(film.poster)) if film.poster.persisted?
      end
    end
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :trailer_link, :rating, :year, :director, :description, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
