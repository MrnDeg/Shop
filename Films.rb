class Films < Product

  attr_reader :year, :produser 

  def initialize(param)
    super

    @year = param[:year]
    @produser = param[:produser]
  end

  #Еще один способ сеттера - для перезаписи переменной
  def year=(year)
    @year = year
  end

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

      self.new(
        name: lines[0],
        year: lines[2],
        produser: lines[1],
        price: lines[3],
        quantity: lines[4]
      )
  end

  def update(param)
    super

    @year = param[:year] if param[:year]
    @produser = param[:year] if param[:produser]
  end

  def to_str
    puts "Фильм \"#{@name}\", #{@year}, реж: #{@produser}, #{@price} руб. (осталось #{@quantity} шт) "
  end
  
end 