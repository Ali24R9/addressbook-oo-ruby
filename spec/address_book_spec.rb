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

  describe '.all' do
    it 'should be empty at first' do
      Contact.all.should eq []
    end
  end

  describe '#save' do
    it 'should save the contact to the list of contacts' do
      test_contact = Contact.new('jack', 'john')
      test_contact.save
      Contact.all.should eq [test_contact]
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
end

describe Address do

  it 'should initialize the object instance' do
    test_address = Address.new('7654 NE 112th Ave')
    test_address.should be_an_instance_of Address
  end
end

describe Email do

  it 'should initialize the object instance' do
    test_email = Email.new('joeblow@hotmail.com')
    test_email.should be_an_instance_of Email
  end
end
