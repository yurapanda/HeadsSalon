class AddAttachmentAvatarToSalonEmployees < ActiveRecord::Migration
  def self.up
    change_table :salon_employees do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :salon_employees, :avatar
  end
end
