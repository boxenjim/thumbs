require 'rails_helper'

describe Idea do

  context 'with new idea instance' do
    let(:idea) { Idea.new(description: 'anIdea') }

    it 'should exist' do
      expect(idea).to be_valid
    end

    it 'should have description column' do
      expect(idea.description).to eq 'anIdea'
    end
  end

  it 'should validate presense of description' do
    expect(Idea.create).to be_invalid
  end

end
