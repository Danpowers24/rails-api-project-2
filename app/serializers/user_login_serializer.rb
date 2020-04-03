# frozen_string_literal: true

class UserLoginSerializer < ActiveModel::Serializer
  attributes :id, :email, :token, :blegh

def blegh
  'hi, Danny boy, I worked'
end

  def token
    Rails.application.message_verifier(:signed_token).generate(object.token)
  end
end
