class AddIdeaRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :idea, index: true
  end
end
