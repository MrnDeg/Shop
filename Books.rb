class Books < Product
  attr_reader :genre, :author

  def initialize(param)
    super

    @genre = param[:genre]
    @author = param[:author]
  end

  def to_str
    puts "Книга \"#{@name}\", #{@genre}, автор: #{@author}, #{@price} руб. (осталось #{@quantity} шт)" 
  end 
end