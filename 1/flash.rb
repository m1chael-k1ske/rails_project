# flashとは

  ユーザーに対してページ遷移した時に簡単なメッセージを一時的に表示させる機能
  
# 記述法

  <Controller>
  flash[:キー名] = "表示させたいメッセージ"
  
  flashメッセージはハッシュであるので, keyとvalueを設定すること
  
  <View>
  <%= flash[:キー名] %>
  

# flashとflash.nowの違い

  flashは次のアクションが動いた後のビューファイルにflashメッセージを表示する時に(nowを付けない場合はずっとメッセージが残る)
  flash.nowは現在のアクションで表示するビューファイルのみ有効なflashメッセージを表示させたい時(renderで表示させたい時)に使用
  移動した次のページのみメッセージが表示されるようになる
