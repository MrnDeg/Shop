class Films < Product

  attr_reader :year, :produser 

  def initialize(param)
    super

    @year = param[:year]
    @produser = param[:produser]
  end

  def year=(year)
    @year = year
  end

  def to_str
    puts "Фильм \"#{@name}\", #{@year}, реж: #{@produser}, #{@price} руб. (осталось #{@quantity} шт) "
  end
end 