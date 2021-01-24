# Validation(バリデーション)とは

  ユーザー登録などの入力フォームに入力されたデータが有効なものかどうかをチェックすることをValidation(バリデーション)という
  Railsにはデータ保存の前に, Validationを自動的に行うようにする validatesメソッドが用意されている
  バリデーションをつけていないとname, email, passwordが同じユーザーが出来てしまいます
  バリデーションはモデルにも定義でき, マイグレーションファイル に定義することもできる
  
# Validationの記述法

  validates バリデーションを付けたいカラム名, バリデーションヘルパー
  同時に複数のカラムも記述できる
  
  <例> validates :name, presence: true

# バリデーションヘルパーの種類

  <!--presence: true--> 
  入力フォームが空欄ではないか判断(空欄ではない状態だとtrue)
  
  validates :name, presence: true
  
  <!--uniqueness: true-->  
  重複していないかどうかを判断(既に値が存在しているものと同じ値であれば保存されない)
  下記の様にに記述するとカラムに既に存在している内容と同じものがあるかどうかを検証することができる
  
  validates :name, uniqueness: true
  
  <!--length:-->
   値の長さを検証する, 下記のオプションを使って定義する

   minimum  ==>  最小値を指定する
   maximum  ==>  最大値を指定する
     in     ==>  長さの範囲を指定する
     is     ==>  値の長さを指定する
     
     validates :カラム名, length: { minimum: 8 } # 最低でも8文字以上か
     validates :カラム名, length: { maximum: 15 } # 15文字以下か
     validates :カラム名, length: { in: 8..15 } # 8文字以上15文字以下か
     validates :カラム名, length: { is: 8 } # 8文字であるか(8文字のみ)
     
  <!--numericality-->
  数値のみが使われているか
  
  validates :カラム名, numericality: true