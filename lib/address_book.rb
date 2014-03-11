class Contact

  @@all_contacts = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @phone = []
    @address = []
    @email = []
  end

  def Contact.all
    @@all_contacts
  end

  def save
    @@all_contacts << self
  end

  def Contact.clear
    @@all_contacts = []
  end

  def Contact.create (first_name, last_name)
    new_contact = Contact.new(first_name, last_name)
    new_contact.save
    new_contact
  end

  def show_phone
    @phone
  end

  def show_address
    @address
  end

  def show_email
    @email
  end

  def show_name
    @first_name + " " + @last_name
  end
end

# jack  = Contact.create("jack","jack")
# jack.show_name
