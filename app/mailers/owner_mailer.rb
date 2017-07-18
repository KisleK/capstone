class OwnerMailer < ApplicationMailer
   def accepted_walkl(owner)
    @owner = owner
    mail(to: owner.email, subject: "Your walk has been accepted")
  end
end
