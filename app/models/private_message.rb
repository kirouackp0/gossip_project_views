class PrivateMessage < ApplicationRecord
    belongs_to :sender, class_name: "User", foreign_key: "sender_id"
    has_and_belongs_to_many :recipients, class_name: "User", join_table: "private_messages_recipients"
end
