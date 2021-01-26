# Strong Parametesとは

  フォームから入力された情報を指定して安全に受け取るための仕組み
  設定して置くことにより不正な情報を受け取ることを防ぐ
  ストロングパラメータを設定しておくと指定したカラムだけ受け取ることができる
  
# 記述法

  モデル名_params
  
  <例> <users_controller.rb>
  
    private
    def user_params
      params.require(:キー名(モデル)).permit(:カラム名1, :カラム名2)
    end
    
  requireメソッドを使用し, params内の特定のキーに紐付く値だけを抽出する<引数には取り出したい値のキーを指定する>
  permitメソッドを使用し, 許可されたカラム<値>のみを取得することができる<permitメソッドの引数には許可するカラム名を指定する>
  