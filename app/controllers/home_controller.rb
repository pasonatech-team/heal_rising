class HomeController < ApplicationController
    
    def about
      @nowExp=EXP.next_level
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
