class Transaction < ApplicationRecord

    belongs_to :sender, class_name: "User", foreign_key: :from_user_id
    belongs_to :receiver, class_name: "User", foreign_key: :to_user_id

    # def sender
    #     @transaction = User.find(self.from_user_id)
    # end
    #
    # def receiver
    #     @transaction = self.to_user_id
    # end
end
