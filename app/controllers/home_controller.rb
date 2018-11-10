class HomeController < ApplicationController
    
    def about
    end 
    
    def breaktime
        @elapsedTime = params[:content]
        render plain: @elapsedTime
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
