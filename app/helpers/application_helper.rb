module ApplicationHelper
    def menu_helper
        categories = Category.all
        render partial: 'shared/menu', locals: { categories: categories }
    end
end
