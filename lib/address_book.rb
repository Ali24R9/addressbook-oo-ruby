class Contact

  @@all_contacts = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @phones = []
    @addresses = []
    @emails = []
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

  def add_number(phone_number)
    @phones << phone_number
  end

  def add_address(address)
    @addresses << address
  end

  def add_emails(email)
    @emails << email
  end

  def show_phones
    @phones
  end

  def show_addresses
    @addresses
  end

  def show_emails
    @emails
  end

  def show_name
    @first_name + " " + @last_name
  end
end

# jack  = Contact.create("jack","jack")
# jack.show_name
