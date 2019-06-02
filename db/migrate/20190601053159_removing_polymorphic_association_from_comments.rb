class RemovingPolymorphicAssociationFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_reference :comments, :writer, polymorphic: true, index: true
  end
end
