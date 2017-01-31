require 'spec_helper'

describe PivotalTracker::Account do
  # We will be testing the class, not the instance
  subject { PivotalTracker::Account }

  before do
    set_token
    VCR.insert_cassette 'account', :record => :new_episodes
  end

  after do
    VCR.eject_cassette
  end

  describe "#find" do
    let(:account) { subject.find(account_id) }
    context "with a valid account id" do
      let(:account_id) { 962753 }

      it "is an account" do
        expect(account).to be_a(PivotalTracker::Account)
      end

      it "has the right id" do
        expect(account.id).to eq(account_id)
      end
    end

    context "with an invalid account id" do
      let(:account_id) { 123456789123456789 }

      it "returns nil" do
        expect(account).to be_nil
      end
    end
  end

  describe '.memberships' do
    let(:account) { subject.find(962753) }

    it "returns all memberships" do
      expect(account.memberships).to be_an(Array)
    end

    it "all returned objects are memberships" do
      account.memberships.each do |membership|
        expect(membership).to be_a(PivotalTracker::AccountMembership)
      end
    end
  end
end
