require "rails_helper"

RSpec.describe OrderMailer, type: :mailer do
  it "sends an email" do
    order = Order.create(user_id: User.first.id, item_id: Item.first)
    OrderMailer.order_email(order).deliver
    binding.pry

    email = ActionMailer::Base.deliveries.last

    expect(email.to.first).to eq("storedom-overlord@example.com")
    expect(email.subject).to eq("You Have Recieved a New Order")
  end
end
