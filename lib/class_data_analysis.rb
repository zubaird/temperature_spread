class ClassDataAnalysis

  def initialize(data)
    @data = data
  end

  def lowest_temperature
    new_array = []
    @data.each do |x|
      new_array << x.low
    end
      new_array.min
  end

  def highest_temperature
    new_array = []
    @data.each do |x|
      new_array << x.high
    end
      new_array.max
  end

  def day_of_lowest_temperature
    new_array = []
    @data.each do |x|
      new_array << x.low
    end

    @data[new_array.index(new_array.min)].day
  end

  def day_of_highest_temperature
    new_array = []
    @data.each do |x|
      new_array << x.high
    end
    @data[new_array.index(new_array.max)].day
  end

  def average_temperatures
    new_array = []
    @data.each do |x|
      new_array << [x.high, x.low]
    end
    average_temp = new_array.map { |x,y| ((x.to_f + y.to_f)/2).to_f }
  end




end
