require 'rails_helper'

describe User do
  it { should validate_presence_of :name }
  it { should validate_presence_of :email }

  it { should validate_length_of :name }
  it { should validate_length_of :email }

  it { should validate_uniqueness_of :email }
  it { should validate_length_of :password }

  it { should_not allow_value("user@foo,com").for(:email) }
  it { should allow_value("user@foo.COM").for(:email)}
end





















#
