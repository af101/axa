class CreateCausa < ActiveRecord::Migration
  def up
    create_table :causas do |t|
      t.string   'luogo'
      t.datetime 'data'
      t.string   'chiamante'
      t.string   'chiamato'
      t.string   'avvocato_chiamante'
      t.string   'avvocato_chiamato'
      t.string   'giudice'
      t.string   'codice_causa'
    end
  end
  def down; drop_table :causas; end
end
