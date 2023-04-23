class CreateUploadedFiles < ActiveRecord::Migration[7.0]
  def change
    create_table :uploaded_files do |t|
      t.string :name
      t.binary :data

      t.timestamps
    end
  end
end
