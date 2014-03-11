class Address
  def initialize(address)
    @address = address
    @all_addresses = []
  end

  def all
    @all_addresses
  end

  def save
    @all_addresses << self
  end

  def Address.create(address)
    new_address = Address.new(address)
    new_address.save
    new_address
  end
end
