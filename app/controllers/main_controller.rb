class MainController <ApplicationController
    # Retrieve all categories and render the index view
    def index
        @categories = Category.all
    end
end