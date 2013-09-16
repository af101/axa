class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string   :name
      t.datetime :start_at
      t.datetime :end_at
      t.string   :luogo
      t.string   :chiamante
      t.string   :chiamato
      t.string   :avvocato_chiamante
      t.string   :avvocato_chiamato
      t.string   :giudice
      t.string   :codice_causa
      
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
