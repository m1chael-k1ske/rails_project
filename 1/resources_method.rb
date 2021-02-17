# resourcesメソッドとは
  
  # Railsで定義されている7つのアクションのルーティングを自動で作成するメソッド
  # 使い方は config/routes.rb の中で下記の様に記述する
  
    resources :コントローラー名
    
# Railsで定義されている7つのアクション

  # index       リソースの一覧を表示させる
  # show        リソースの詳細を表示させる
  # new         投稿フォームを表示させる
  # create      リソースを追加させる
  # edit        更新フォームを表示させる
  # update      リソースを更新させる
  # destroy     リソースを削除する
  
# 「resources :コントローラー名」がどの様に定義されているかは rails route で確認