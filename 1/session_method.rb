# Sessionメソッドとは

  Railsにもともと定義されているメソッドで、Sessionに暗号化した情報を保存するためのメソッド
  viewsとcontrollerでのみ利用可能, 
  

  
  log_inメソッドでsession[:user_id]にログイン情報を保存
  
# 使い方

  sessionにデータを入れる
  
  
  session[:user_id]