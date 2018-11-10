class HomeController < ApplicationController
    
    def about
    end 
    
    def breaktime
        @elapsedTime = params[:content]
        p @elapsedTime
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
