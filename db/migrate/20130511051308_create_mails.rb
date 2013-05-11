class CreateMails < ActiveRecord::Migration
  def change
    create_table :mails do |t|
      t.string :sender
      t.string :receiver

      t.timestamps
    end
  end
end
