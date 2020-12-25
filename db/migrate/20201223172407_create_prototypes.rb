class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|

      t.string :title,            null: false
      t.text :catch_copy,         null: false
      t.text :concept,            null: false

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end



# これを入れておくと、指定したカラムに空の状態で保存させるのを防＝null: false


# | title      | string     | null: false                    |
# | catch_copy | text       | null: false                    |
# | concept    | text       | null: false                    |
# | user       | references | null: false, foreign_key: true |

# t.references :room, foreign_key: true
#       t.references :user, foreign_key: true

# テーブルで見るとカラム名がroom_id、user＿idになってる
      # ここに保存する「ユーザー」と「チャットグループ」は必ず存在している事が前提
      # 「usersテーブル」と「roomsテーブル」の情報を参照する必要がある
      # この参照する役割を果たすのが「foreign_key: true」