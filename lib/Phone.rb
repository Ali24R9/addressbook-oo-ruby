class Phone

  def initialize(phone_number)
    @phone_number = phone_number
    @all_numbers = []
  end

  def all
    @all_numbers
  end

  # def add_phone(phone_number)
  #   @phone << phone_number
  # end

  def save
    @all_numbers << self
  end

  def Phone.create(phone_number)
    new_phone = Phone.new(phone_number)
    new_phone.save
    new_phone
  end
end
# phone = Phone.new('2342342342')
# phone.save
# Phone.all
