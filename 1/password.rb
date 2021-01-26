# パスワードの実装

  パスワードの実装には「has_secure_password」メソッドを使用
  パスワードを実装したいモデルに以下の記述を追加
  
  <例> app/models/user.rb
  
       class User < ApplicationRecord
         validates :name, presence: true
         validates :email, presence: true
         
         has_secure_password # <== 追記
       end
       
  has_secure_passwordを使うことで以下のような機能も簡単に実装可能
  
  1, 暗号化されたパスワードをデータベースのpassword_digestというカラムに保存できる
  2, passwordに加えてpassword_confirmation(パスワード確認の最入力)が使える
     また, 存在性と値が一致するかどうかのバリデーション(チェック)も追加される
  3, authenticateメソッドが使える様になる
     authenticateメソッドは, 引数と文字列がパスワードと一致したかどうかをtrue/falseで返す<パスワードを引数としてユーザーの認証を行うことができる>
     
     user = User.find_by(params[:email])
     if user && user.authenticate(params[:password])
       与えられたemail, passwordのユーザーが存在する場合の処理をここに記述
     end
     
# has_secure_passwordを使うには

　has_secure_passwordを持つModelにpassword_digestカラムが必要になる
　add columnメソッドを使ってテーブルに追加, 読み込み<rails db:migrate>
　
　rails g migration add_password_digest_to_users password_digest:string
　# usersテーブルにpassword_digestカラムを追加, 型はstring
　
# 暗号化

  has_secure_passwordは内部で暗号化する際にbcryptというgemを使用している
  Gemfileに追記し, bundle install