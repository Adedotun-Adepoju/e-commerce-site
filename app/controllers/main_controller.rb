class MainController <ApplicationController
    def index
        @categories = Category.all
    end

    def show 
        
    end
end