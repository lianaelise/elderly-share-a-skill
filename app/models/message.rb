class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :sender
  belongs_to :recipient
end
