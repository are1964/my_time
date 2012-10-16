class CreateCspTImes < ActiveRecord::Migration
  def change
    create_table :csp_t_imes do |t|

      t.timestamps
    end
  end
end
