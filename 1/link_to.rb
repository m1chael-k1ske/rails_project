# link_toメソッドとは?

  # 引数を指定することでリンクを作成できるRailsのヘルパーメソッド<ビューファイルで使用できる>
  # <%= %>(Rubyタグ)の中で使用できる
  # HTMLコードの<a href="">に相当する

# 基本的な書き方

  # <%= link_to 'ログインはこちら', 'root_path', class: 'text-white' %>
  #               　(テキスト)        (パス)     (class="text-white")