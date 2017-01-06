class CreateReportes < ActiveRecord::Migration[5.0]
  def change
    create_table :reportes do |t|

      t.timestamps
    end
  end
end
