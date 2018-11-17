class HomeController < ApplicationController
    
    def about
    end 
    
    def breaktime
        # =begin
        # @elapsedTime = params[:content]
        # p @elapsedTime
        # =end
    end
    
    def select
    end
    
    def stopwatch
    end
    
    def result
        @elapsedTime = params[:content]
        p @elapsedTime
    end
    
    def start
    end
end
