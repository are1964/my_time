class CreateCspTimes < ActiveRecord::Migration
  def change
    create_table :csp_times do |t|

      t.timestamps
    end
  end
end
