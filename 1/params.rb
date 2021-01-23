# paramsとは

  Railsで送られてきたパラメーターを受け渡しするメソッド(パラメーターを入れる箱)
  送られてくるパラメーターは主に、GET(HTTPメソッド)のクエリパラメーターとPOST(HHTPメソッド)でformを使って送信されるデータの2つ
  Viewでフォームに入力された情報が入っている変数（箱）
  パラメーターは「サービスの利用者がサーバーに対して送ってきた値」、その値を格納する箱がparams
  params[:title]だと、titleという名前のパラメーターを利用者がサーバに飛ばし、それをparamsと言いう箱に格納している
  
  <!--クエリパラメーターとは-->
       様々な情報をwebサーバーに伝えるためにURLの末尾に付け加える情報（文字列）
       "パラメーター"="値"
       
       http://rails_project.jp/?s=rapj
       
       この場合は「?s=rapj」がクエリパラメーター
       *追々追記
  　　   
# 送信されるパラメーター

  投稿フォームで入力された情報が次のアクションに送られるために箱に入れられる
  その際キーとバリューのセットになって箱に入る（名前 = name(カラム)、メールアドレス = email(カラム)）
  
# 投稿フォームの情報の流れ

  投稿フォームの内容を次のアクションへ渡す時も同じように箱の様なものに入れて送る
  newアクションで投稿されたフォームに入力された情報は箱に入り、createアクションへ渡される
  
  パラメーターが箱に入ってcreateアクションに渡されました
  ですがcreateアクションは箱に入ったままではデータベースに保存できない
  データベースへ保存するためには入力された情報を箱から取り出さなくてはならない
  
  その時に使うのが paramsメソッド
  paramsメソッドを使うと投稿フォームに入力された情報を箱から取り出すことができる

# 取り出す際の注意点

  それは箱には投稿フォームで入力された情報以外のものも自動で入ってしまうこと
  箱には登録された情報がキーとバリューのセットで入っている（名前 = name(カラム)、メールアドレス = email(カラム)）
  それらの情報をデータベースに保存するメソッドがcreateメソッド
  
  createメソッドは引数にキーとバリューのセットの情報を渡す
  paramsで取得した情報はその状態になっているため、User.create(params)の様にしてあげると投稿フォームの情報を保存できる
  
  <ただ、これではセキュリティに関して非常に問題があるためストロングパラメーターを使う必要がある>
  
  
  
  
  <例> <app/views/users/new.html.erb>
  
       <%= form_for @user do |f| %>
         <div class="form-group">
           <%= f.label :name, class: 'text-white' %>
           <%= f.text_field :name, class: 'form-control' %>
         </div> 
         <div class="form-group">  
           <%= f.label :email, class: 'text-white' %> 
          <%= text_field :email, class: 'form-control' %>
         </div>
     
         <%= f.submit "登録", class: 'btn-block btn-white'%>
       <% end %>
       
  text_fieldに入力されたデータは、submitボタンを押すと、paramsにそれぞれのシンボル(カラム?)で格納される
  シンボルとは文字列とよく似たオブジェクトで、「:name」や「:email」の様に頭に「:」がついてオブジェクトのことをいう
  設定されたデータは送信先のアクションでも使用することができ、そのparamsを元にデータを作成
  
  フォームに値を入力する　=> 送信ボタンを押す => フォームの内容がparamsに値が格納される => paramsの値を元にデータを作成する
  
  
  # paramsの値を確認する
  
    Gemfileに gem 'pry-rails' を追記 => bundle install
    「binding.pry」を使用し、確認する
    binding.pryはそのコード部分で処理を止めるための機能(バグやエラーの解決に能力を発揮する)
    binding.pryはコード上にbinding.pryを記述することで、binding.pryの書かれている箇所までの処理を実行し
    binding.pryの書かれている箇所で処理を一時的に止めることができる
    
    <例> class TweetsController < ApplicationController
    
           def index
             @tweets = Tweet.all
           end
           
           def new
           end
           
           def create
             Tweet.create(tweet_params)
             binding.pry # <= ここに追加
           end
           
           private
           def tweet_params
             params.permit(:name, :image, :text)
           end
           
         end
        
  # createアクションで投稿ボタンを押し、params(params)で持ってきた値をcreateメソッドによってデータベースに保存する
    binding.pryを記述することによって投稿ボタンを押した後の処理をbinding.pryで止めている
    
    binding.pryを記述したことによって投稿ボタンを押しても画面が遷移せず留まり続けます
    ターミナルを見るとbinding.pryによってこの部分で処理を止めています、表示してくれる
    paramsの値が知りたい場合は、paramsと入力するとparamsの値を教えてくれます
    binding.pryは「quit」と入力することで停止状態を解除して、Railsコンソールから抜け出す
    <!--注意-->
    binding.pryはそのコード部分で処理を止め、確認するためのもの
    確認が終われば削除、又はコメントアウトすること
    