class CreateMeasurementAlloweds < ActiveRecord::Migration[5.0]
  def change
    create_table :measurement_alloweds do |t|
      t.references :ingredient, foreign_key: true
      t.references :measurement, foreign_key: true

      t.timestamps
    end
  end
end
