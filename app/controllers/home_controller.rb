class HomeController < ApplicationController
    
    def about
      @Level1=Exps.find(1)
      @Level2=Exps.find(2)
      @Level3=Exps.find(3)
      @Level4=Exps.find(4)
      @Level5=Exps.find(5)
      @Level6=Exps.find(6)
      @Level7=Exps.find(7)
      @Level8=Exps.find(8)
      @Level9=Exps.find(9)
      @Level10=Exps.find(10)
      @Level11=Exps.find(11)
      @Level12=Exps.find(12)
      @Level13=Exps.find(13)
      @Level14=Exps.find(14)
      @Level15=Exps.find(15)
      @Level16=Exps.find(16)
      @Level17=Exps.find(17)
      @Level18=Exps.find(18)
      @Level19=Exps.find(19)
      @Level20=Exps.find(20)
      @Level21=Exps.find(21)
      @Level22=Exps.find(22)
      @Level23=Exps.find(23)
      @Level24=Exps.find(24)
      @Level25=Exps.find(25)
      @Level26=Exps.find(26)
      @Level27=Exps.find(27)
      @Level28=Exps.find(28)
      @Level29=Exps.find(29)
      @Level30=Exps.find(30)
      
      @user=Users.find(1)
    end 
    
    def breaktime
      @time=Action.find(1)
    end
    
    def select
      # @type=types.find_by(action_name:"")
    end
    
    def stopwatch
      @time=Action.find(1)
    end
    
    def result
      @Level1=Exps.find(1)
      @Level2=Exps.find(2)
      @Level3=Exps.find(3)
      @Level4=Exps.find(4)
      @Level5=Exps.find(5)
      @Level6=Exps.find(6)
      @Level7=Exps.find(7)
      @Level8=Exps.find(8)
      @Level9=Exps.find(9)
      @Level10=Exps.find(10)
      @Level11=Exps.find(11)
      @Level12=Exps.find(12)
      @Level13=Exps.find(13)
      @Level14=Exps.find(14)
      @Level15=Exps.find(15)
      @Level16=Exps.find(16)
      @Level17=Exps.find(17)
      @Level18=Exps.find(18)
      @Level19=Exps.find(19)
      @Level20=Exps.find(20)
      @Level21=Exps.find(21)
      @Level22=Exps.find(22)
      @Level23=Exps.find(23)
      @Level24=Exps.find(24)
      @Level25=Exps.find(25)
      @Level26=Exps.find(26)
      @Level27=Exps.find(27)
      @Level28=Exps.find(28)
      @Level29=Exps.find(29)
      @Level30=Exps.find(30)
      
      @user=Users.find(1)
    end
    
    def start
    end
end
