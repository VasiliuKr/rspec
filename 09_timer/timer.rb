class Timer
   def initialize(seconds=0)
       @seconds = seconds
   end

   def seconds=(sec)
       @seconds = sec
   end
   def seconds
       @seconds
   end
   def time_string
        if @seconds < 60
            "00:00:#{'%02d' % @seconds}"
        elsif
            @seconds >= 60 && @seconds < 3600
            "00:#{'%02d' % (@seconds/60)}:#{'%02d' % (@seconds%60)}"
        else
            "#{'%02d' % (@seconds/3600)}:#{'%02d' % (@seconds%3600/60)}:#{'%02d' % (@seconds%60)}"
        end
    end
end