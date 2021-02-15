class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      # タイトル
      t.string :title
      # タイトルロゴ画像
      t.string :logo
      # 場所
      t.string :place
      t.string :address
      # サークル入場開始時間
      t.time :open_time_to_seller
      # 一般入場開始時間
      t.time :open_time_to_buyer
      # 終了時間
      t.time :close_time
      # 説明文
      t.string :description

      t.timestamps
    end
  end
end
