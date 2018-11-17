class HomeController < ApplicationController
    
    def about
      @Level1=1000
      @Level2=1500
      @Level3=2000
      @Level4=2500
      @Level5=3000
      @Level6=3500
      @Level7=4000
      @Level8=4500
      @Level9=5000
      @Level10=5500
      @Level11=6000
      @Level12=6500
      @Level13=7000
      @Level14=7500
      @Level15=8000
      @Level16=8500
      @Level17=9000
      @Level18=9500
      @Level19=10000
      @Level20=10500
      @Level21=11000
      @Level22=11500
      @Level23=12000
      @Level24=12500
      @Level25=13000
      @Level26=13500
      @Level27=14000
      @Level28=14500
      @Level29=15000
      @Level30=15500
      
      @user=User.find(1)
    end 
    
    def breaktime
      @time=Action.find(1)
    end
    
    def select
      # @type=type.find_by(action_name:"")
    end
    
    def stopwatch
      @time=Action.find(1)
    end
    
    def result
     @Level1=1000
      @Level2=1500
      @Level3=2000
      @Level4=2500
      @Level5=3000
      @Level6=3500
      @Level7=4000
      @Level8=4500
      @Level9=5000
      @Level10=5500
      @Level11=6000
      @Level12=6500
      @Level13=7000
      @Level14=7500
      @Level15=8000
      @Level16=8500
      @Level17=9000
      @Level18=9500
      @Level19=10000
      @Level20=10500
      @Level21=11000
      @Level22=11500
      @Level23=12000
      @Level24=12500
      @Level25=13000
      @Level26=13500
      @Level27=14000
      @Level28=14500
      @Level29=15000
      @Level30=15500
      
      @user=User.find(1)
    end
    
    def start
    end
end
