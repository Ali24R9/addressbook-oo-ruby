class Email
  def initialize(email)
    @email = email
    @all_emails = []
  end

  def all
    @all_emails
  end

  def save
    @all_emails << self
  end

  def Email.create(email)
    new_email = Email.new(email)
    new_email.save
    new_email
  end
end
