class ArrayDataAnalysis

  def initialize(data)
    @data = data
  end

  def lowest_temperature
    new_array = []
    @data.each {|x| new_array << x[2]  }
    new_array.min
  end

  def highest_temperature
    new_array = []
    @data.each {|x| new_array << x[1]  }
    new_array.max
  end


def day_of_lowest_temperature
  new_array = []
  @data.each {|x| new_array << x[2]  }
  @data[new_array.index(new_array.min)][0]
end


def day_of_highest_temperature
  new_array = []
  @data.each {|x| new_array << x[1]  }
  @data[new_array.index(new_array.max)][0]
end


def average_temperatures
  new_array_one = []
  average_temp = []
  @data.each { |x| new_array_one << [x[1],x[2]] }
  average_temp = new_array_one.map { |x,y| ((x.to_f + y.to_f)/2).to_f }
end


end
