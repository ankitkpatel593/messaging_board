# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user

  validates_presence_of :title, :body
  scope :desc, -> { order('posts.created_at DESC') }
end
