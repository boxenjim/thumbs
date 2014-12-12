require 'rails_helper'

describe Comment do

  context "with new comment instance" do
    let(:comment) { Comment.new(content: 'aComment', idea_id: 1) }

    it 'should exist' do
      expect(comment).to be_valid
    end

    it 'should have idea_id reference' do
      expect(comment.idea_id).to eq 1
    end

    it 'should have content column' do
      expect(comment.content).to eq 'aComment'
    end

  end

  it 'should validate presense of content' do
    expect(Comment.create).to be_invalid
  end

end
