class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|

      t.text :text,            null: false

      # 参照するための外部キーを記述
      t.references :user, foreign_key: true
      t.references :prototype, foreign_key: true

      t.timestamps
    end
  end
end


# コメントのテキスト（text型、カラム名はtext）

## comments テーブル

# | Column     | Type       | Options           |
# | ---------- | ---------- | ----------------- |
# | text       | text       | null: false       |
# | user       | references | foreign_key: true |
# | prototype  | references | foreign_key: true |

# ### Association
# - belongs_to :user
# - belongs_to :prototype