class HomeController < ApplicationController
    
    def about
    end 
    
    def breaktime
      @time=Action.find_by(id: 1)
    end
    
    def select
    end
    
    def stopwatch
    end
    
    def result
    end
    
    def start
    end
end
