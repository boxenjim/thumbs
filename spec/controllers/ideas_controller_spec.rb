require 'rails_helper'

describe IdeasController do
  describe '#index' do
    it 'should render index template' do
      get :index
      expect(response).to render_template :index
    end

    it 'should assign all Idea instances' do
      get :index
      expect(assigns(:ideas)).to eq Idea.all
    end
  end

  describe '#create' do
    it 'should create new idea' do
      post :create, idea: {description: 'anIdea'}
      expect(Idea.last.description).to eq 'anIdea'
    end
  end

  describe '#show' do
    it 'should render show template' do
      post :create, idea: {description: 'anIdea'}
      idea = Idea.last
      get :show, id: idea.id
      expect(response).to render_template :show
    end
  end

  describe '#thumbsup' do
    it 'should increase votes by 1' do
      post :create, idea: {description: 'anIdea'}
      idea = Idea.last
      post :thumbsup, id: idea.id
      expect(idea.reload.votes).to eq 1
    end
  end

end
