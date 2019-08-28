require 'rails_helper'

describe School do
  it { is_expected.to have_many(:courses) }
  it { is_expected.to validate_presence_of(:name) }
end
