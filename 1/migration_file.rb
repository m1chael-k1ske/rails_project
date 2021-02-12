# Migrationファイルとは？
  
# Migrationファイルの状態を戻す
  
  rails db:migrateコマンドを実行してテーブルを作成した際
  記述が間違っていて意図しない名前や型を持つテーブルができてしまった時
  
  その際は
  
  rails db:rollback
  
  コマンドを実行し、直近で実行したMigrationファイルの読み込み前の状態に戻す
  rails db:migrateコマンドではなく, rails db:rollbackを実行する
  その後、rails db:migrateを実行すると最新のMigrationファイルが再度読み込まれる