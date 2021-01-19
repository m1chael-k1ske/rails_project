# 使うことが多いかもGem


# group :development, :test do <開発環境とテスト環境で使うGem群>
#  デバック
# gem 'pry-rails'
#  確認
# gem 'pry-doc'
#  プラグイン
# gem 'pry-bybug'
#  スタックリスト
# gem 'pry-stack_explorer'

# cssでフレームワークで一番よく使用されるのがBootstrap<すごく便利>
# gem 'capistrano-rails', group: :development の下に記述

# gem 'bootstrap-sass'

# app/assets/stylesheets にある application.cssというファイルを
# application.scss というファイル名に修正
# そして application.scss の中身をを全て削除する<CSSでの書き方なので書き換えが必要>
# 下記の2行を記述

# @import "bootstrap-sprockets";
# @import "bootstrap";

# 次にJavaScriptを読み込むため app/assets/javascripts/application.js に追記
# //= require_tree . の上に //= require bootstrap-sprockets
# その後, railsのサーバを再起動

# Windows does not include zoneinfo files, so bundle the tzinfo-data gemより下<最後>に記述
# JavaScriptを簡単に使えるようにしたもの

# gem 'jquery-rails'

# *gemをインストール後、jQueryを使えるように宣言するために
# app/assets/javascripts/application.js に追記
# //= require rails-ujs の上に //= require jquery を追記する
# 例 jQueryを使ってアラートの表示が消えるようにする場合
# app/views/layouts/application.html.erb に追記

# has_secure_passwordは内部で暗号化する際にbcryptというgemを使用
# gem 'bcrypt'

# 画像投稿機能の作成にcarrierwaveというgemを使用

# gem 'carrierwave'

# 次に画像をアップロードするためのコードを生成
# rails g uploader image <これで app/uploaders/image_uploader.rb が生成される>
# config/application.rb に追記<config.load_defaults 5.2 の下に追記する>

# config.autoload_paths += Dir[Rails.root.join('app', 'uploaders')]
# end

# そして画像をアップロードするModelに追記

# mount_uploader :image, ImageUploader



