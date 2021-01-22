# redirect_toとは

  指定したパスに遷移させることができるメソッド 遷移 = 移り変わること
  コントローラーのアクション内で自動的にページを切り替えるためのメソッド
  
  # 1, URLで指定
       redirect_to "URL"
       
  # 2, path(Prefix)で指定
       redirect_to root_path
       
  # 3, アクションで指定
       redirect_to action: :アクション名
       同一コントローラーの指定したアクション
  
  # 4, 指定したコントローラーのアクションで指定
       redirect_to controller: :コントローラー名, action: :アクション名
    例 redirect_to controller: :users, action: :show
 
  # 5, アクションの個別のリソースを指定
     # usersコントローラーのshowアクションにid=1を渡す
       redirect_to controller: :users, action: :show, id: 1
     
  # 6, 前のページに戻る
       redirect_to :back