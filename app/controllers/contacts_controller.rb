class ContactsController < ApplicationController
  def first
    @contact = Contact.find_by(id: 1)
    p @contact.phone_number
    render template: "contacts/show"
  end

  def all
    @contacts = Contact.all    

    # serialization, how to i get my data into json
    render template: "contacts/index"
  end
end