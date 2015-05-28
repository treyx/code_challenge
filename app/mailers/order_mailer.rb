class OrderMailer < ActionMailer::Base
  default from: "admin@storedom.com"

  def order_email(order)
    @order = order
    mail(to: "storedom-overlord@example.com", subject: "You Have Recieved a New Order")
  end
end
