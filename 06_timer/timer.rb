class Timer
  #write your code here
  attr_reader :hours, :minutes, :seconds

  def initialize hours=0, minutes=0, seconds=0
    @hours = hours
    @minutes = minutes
    @seconds = seconds
  end

  def seconds= seconds
    @seconds = seconds
    if @seconds > 60 
      increment
    end
  end

  def increment 
    while @seconds > 59
      @seconds -= 60
      @minutes += 1
    end

    while @minutes > 59
      @minutes -= 60
      @hours += 1
    end
  end

  def time_string
    if @hours < 10
      hours = "0" + @hours.to_s
    else
      hours = @hours.to_s
    end

    if @minutes < 10
      minutes = "0" + @minutes.to_s
    else
      minutes = @minutes.to_s
    end

    if @seconds < 10
      seconds = "0" + @seconds.to_s
    else
      seconds = @seconds.to_s
    end

    hours + ":" + minutes + ":" + seconds
  end
end