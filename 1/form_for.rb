# form_forとは

  railsで情報を送信するためのヘルパーメソッド
  formを作るためのメソッド
  
  #投稿フォームを作成するにはform_forやform_tag, form_withといったヘルパーメソッドを使用する
   投稿フォームに投稿された内容を保存するテーブルが存在する時にform_forを使う
  #検索フォームの様なフォームはform_tagを使う

# form_forの使い方

#  <%= form_for モデルクラスから生成されたインスタンス do |f| %>
#  <% end %>

# 「form_for モデルクラスから生成されたインスタンス do |f|」 と「end」で囲むことでそのモデルのフォームを作成できる<|f| = form>
    
   form_forの引数には、モデルクラスのインスタンスを指定する
   モデルクラスのインスタンスとは保存したいテーブルのクラスのインスタンスのこと
     # |f| = form
     
　 コントローラーでnewアクションで作成したインスタンスが何も情報（処理）を持っていなければ自動的にcreateアクションへ
　 既に情報を持っている場合はupdateアクションに自動的に振り分けられる
　 
# def new
　  @user = User.new
　end

# createアクション(リソースを追加)に自動的に振り分けられる
　
# form_forで囲った処理の中には

  text_field
  text_area
  number_field
  password_field
  
  といったメソッドが使用できる様になる
 
# <%= f.text_field :name %>
#  f = form text_field = 一行のテキスト投稿フォーム :name = カラム
  
  