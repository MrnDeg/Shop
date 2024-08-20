class Books < Product
  attr_reader :genre, :author

  def initialize(param)
    super

    @genre = param[:genre]
    @author = param[:author]
  end

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
      name: lines[0],
      genre: lines[1],
      author: lines[2],
      price: lines[3],
      quantity: lines[4]
    )
  end

  def update(param)
    super

    @genre = param[:genre] if param[:genre]
    @author = param[:author] if param[:author]
  end 

  def to_str
    puts "Книга \"#{@name}\", #{@genre}, автор: #{@author}, #{@price} руб. (осталось #{@quantity} шт)" 
  end 

end