require 'rspec'
require 'address_book'
require 'Phone'
require 'Address'
require 'Email'


describe Contact do

  before do
    Contact.clear
  end

  it 'should initialize the object instance' do
    test_contact = Contact.new('jack', 'john')
    test_contact.should be_an_instance_of Contact
  end

  it 'should save the contact to the list of contacts' do
    test_contact = Contact.new('jack', 'john')
    test_contact.save
    Contact.all.should eq [test_contact]
  end
  describe '#add_number' do
    it 'should add a new phone number' do
      test_contact = Contact.new('jack', 'john')
      test_phone = Phone.new('4455966897')
      test_contact.add_number(test_phone)
      test_contact.show_phone.should eq [test_phone]
    end
  end

  describe '.all' do
    it 'should be empty at first' do
      Contact.all.should eq []
    end
  end

  describe '.clear' do
    it 'should clear the array of contacts' do
      new_contact = Contact.new('john', 'jack')
      new_contact.save
      Contact.clear
      Contact.all.should eq []
    end
  end

  describe '.create' do
    it 'creates a new instance' do
      new_contact = Contact.new('smith', 'ireland')
      new_contact.should be_an_instance_of Contact
    end

    it 'should save the contact' do
      new_contact = Contact.new('smith', 'ireland')
      new_contact.save
      Contact.all.should eq [new_contact]
    end
  end
end

describe Phone do

  it 'should initialize the object instance' do
    test_phone = Phone.new('4432355887')
    test_phone.should be_an_instance_of Phone
  end

  describe '#all' do
    it 'should be empty to begin with' do
      test_phone = Phone.new('4432355887')
      Phone.all.should eq []
    end
  end

  describe '#save' do
    it 'saves the number to a list of phone numbers' do
      test_phone = Phone.new('4432355887')
      test_phone.save
      test_phone.all.should eq [test_phone]
    end
  end

  describe '.create' do
    it 'creates a new phone number instance' do
      test_phone = Phone.new('4432355887')
      test_phone.should be_an_instance_of Phone
    end
  end
end

describe Address do

  it 'should initialize the object instance' do
    test_address = Address.new('7654 NE 112th Ave')
    test_address.should be_an_instance_of Address
  end

  it 'should be empty to begin with' do
    test_address = Address.new('4432355887')
    test_address.all.should eq []
  end

  it 'saves the address to a list of addresses' do
    test_address = Address.new('4432355887')
    test_address.save
    test_address.all.should eq [test_address]
  end

  describe '.create' do
    it 'creates a new address instance' do
      test_address = Address.new('4432355887')
      test_address.should be_an_instance_of Address
    end
  end
end

describe Email do

  it 'should initialize the object instance' do
    test_email = Email.new('joeblow@hotmail.com')
    test_email.should be_an_instance_of Email
  end

    it 'should be empty to begin with' do
      test_email = Email.new('4432355887')
      test_email.all.should eq []
    end

    it 'saves the email to a list of emails' do
      test_email = Email.new('4432355887')
      test_email.save
      test_email.all.should eq [test_email]
    end

  describe '.create' do
    it 'creates a new email instance' do
      test_email = Email.new('4432355887')
      test_email.should be_an_instance_of Email
    end
  end
end




