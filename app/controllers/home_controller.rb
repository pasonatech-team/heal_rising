class HomeController < ApplicationController
    
    def about
      @user=User.find(1)
    end 
    
    def breaktime
        @elapsedTime = params[:content]
        p @elapsedTime
        @time=Action.find(1)
    end
    
    def select
      # @type=type.find_by(action_name:"")
    end
    
    def stopwatch
      @time=Action.find(1)
    end
    
    def result
      @user=User.find(1)
      @action=Action.find(1)
    binding.pry
      times = @action.end_time.split(/:|;/).map do |value|
          value.to_i
      end
      sec = times[0]*3600 + times[1]*60 + times[2] 
    #   @exp = 100 * @action.type.strength
       @exp = sec * @action.type.strength

      @user.experience += @exp
      while true do
          if @user.levelup < @user.experience then
              @user.level += 1
          else
              break
          end
      end
      binding.pry
      
      
    end
    
    def start
    end
end
