require 'rails_helper'

RSpec.describe Book, type: :model do
  describe '#foo' do
    let!(:instance) { described_class.new }

    before do
      allow(described_class).to receive(:new).and_return(instance)
      allow(instance).to receive(:bar)
    end

    it '' do
      #expect(described_class.new.foo).to eq(3)
      described_class.new.foo

      expect(described_class.new).to have_received(:bar).with(1, 2).once
    end
  end
end
