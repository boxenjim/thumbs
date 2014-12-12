require 'rails_helper'

describe CommentsController do

  describe '#create' do
    let(:idea) { Idea.create(description: 'anIdea') }
    it 'should create new comment' do
      post idea_comments_path(idea), comment: {content: 'aComment'}, idea_id: idea.id
      expect(Comment.last.content).to eq 'aComment'
      expect(Comment.last.idea).to eq idea
    end
  end
end
