require 'rails_helper'

RSpec.describe 'OfferBU Factory', USE_VCR do
  it "runs without params" do
    expect(Offer.count).to eq(0)
    FG.create(:offer_bu)
    expect(Offer.count).to eq(1) #
  end

  it "has a default price and value" do
    result = FG.create(:offer_bu)
    expect(result.price).to_not be_nil
    expect(result.volume).to_not be_nil
  end

  it "generates a valid user" do
    offer = FG.create(:offer_bu).offer
    expect(User.count).to eq(1)
    expect(offer.user).to_not be_nil
  end

  it "accepts a user attribute" do
    usr   = FG.create(:user).user
    offer = FG.create(:offer_bu, user: usr).offer
    expect(offer.user).to eq(usr)
  end

end

