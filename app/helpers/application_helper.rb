module ApplicationHelper
    def menu_helper
        categories = Category.all
        render partial: 'shared/menu', locals: { categories: categories }
    end

    def rating_helper
        films = Category.find_by(name: "Фильмы").films.limit(5).order(created_at: :desc)
        render partial: 'shared/rating', locals: { films: films }
    end

    def news_helper
        event = Event.last
        render partial: 'shared/news', locals: { event: event }
    end
end
