class AddSetorIdToMetas < ActiveRecord::Migration
  def change
    add_column :metas, :setor_id, :integer
    add_column :metas, :setor_nome, :string
  end
end
