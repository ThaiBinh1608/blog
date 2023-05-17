class Post < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5, maximum: 50 }
    validates :body, presence: true
    belongs_to :user
    has_many :comments, dependent: :destroy

    has_noticed_notifications model_name: 'Notification'
    has_many :notifications, through: :user, dependent: :destroy

    def self.ransackable_attributes(auth_object = nil)
      ["body", "created_at", "id", "title", "updated_at", "user_id", "views"]
    end
  end
  