# Rails scaffold とは

# scaffoldとは、Railsに備わっているコマンドの１つで、ルーティングやコントローラー(controller)、ビュー(view)、モデル(model)と
# テーブル（データベース）の記述やファイルなどを自動で作成してくれるコマンド、controllerやmodelを作成する手間を省くことができる
# scaffoldという言葉自体の意味は「土台」 すごく便利
# scaffoldを使って作成されるルーティングは、Railsが定める７つのアクションになる（index・show・new・edit・create・update・destroyアクションの７つ）

# scaffoldを使い、準備されたテンプレートファイルを利用することで、より迅速なサービス開発ができるようになる

# アプリケーションを作成後、ディレクトリ移動

# rails g scaffold モデル名 カラム名①:データの型① カラム名②:データの型② 
# rails g scaffold Tweet title:string content:text

# rails db:migrate