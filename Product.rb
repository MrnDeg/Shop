class Product

  #attr_writer - это сеттер, чтобы можно быдл менять 
  #внутреннюю переменную экземпляра класса
  attr_writer :price, :quantity, :name

  def initialize(param)
    @name = param[:name]
    @price = param[:price]
    @quantity = param[:quantity]
  end

  def to_str

  end

  def self.from_file(file_path)
    raise NotImplementedError
  end

  def update(param)
    @name = param[:name] if param[:name]
    @price = param[:price] if param[:price]
    @quantity = param[:quantity] if param[:quantity]
  end

end