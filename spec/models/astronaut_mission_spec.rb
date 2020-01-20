require 'rails_helper'

describe AstronautMission, type: :model do
  describe 'Validations' do
    it { should belong_to :mission }
    it { should belong_to :astronaut }
  end
end
