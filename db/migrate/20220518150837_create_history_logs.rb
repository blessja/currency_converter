class CreateHistoryLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :history_logs do |t|
      t.string :from
      t.string :to
      t.float :amount
      t.float :result

      t.timestamps
    end
  end
end
