require 'rails_helper'

describe "Rewards" do

  let(:user)     { FG.create(:user).user              }
  let(:contract) { Contract.create                    }
  let(:taken)    { FG.create(:taken_contract)         }

  it "renders index" do
    visit "/rewards"
    expect(page).to_not be_nil
  end

  it "renders show" do
    visit "/rewards/#{contract.id}"
    expect(page).to_not be_nil
  end
end
