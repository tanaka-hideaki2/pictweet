class Tweet < ApplicationRecord
   validates :text, presence: true
   belongs_to :user
   has_many :comments
   
   # def self.search(search)
   #    if search != ""
   #      Tweet.where('text LIKE(?)', "%#{search}%")
   #    else
   #      Tweet.all
   #    end
   #  end
   #モデルに、検索する処理を記述したメソッドを定義します。
   #ビジネスロジックとは、データに対する処理などを行うプログラム処理のことです。
   #具体的には、「データをどのように処理するのか」「どのデータを取得するのか」「どのような手順で処理をしていくのか」などを指します。
   #もし検索フォームに何も入力をせずに検索ボタンを押すと、引数で渡されるsearchの中身は空になります。
   # この場合はelseに該当し、Tweet.allという記述は、そのときすべての投稿を取得して表示するためのものです。
   # 実際の開発現場でも、テーブルとのやりとりに関するメソッドはモデルに置くという意識が必要です。
   # コントローラーはあくまでモデルの機能を利用し処理を呼ぶだけで、複雑な処理は組みません。
   #なぜ、このように処理をモデルへ切り出すのかを考えましょう。それは、可読性を高めるためです。各ファイルには、あらかじめ想定された処理内容のみが書かれていることが大切です。そのような前提を共有することで、共同で開発する複数のWebエンジニアはファイルの内容を理解しやすくなります。
   #コントローラーの役割は「リクエストを受け取り、レスポンスを返すこと」であり、細かいデータの処理を行うことではありません。それは、モデルの役割です。
   #本章で、コントローラーの処理をモデルに切り出す方法を学習しましたが、モデルに記述する処理は他にも多くあり、モデルの記述は肥大化しやすいという注意点があります。
   #そこで、肥大化を避ける意味でも、複雑な処理はサービスクラスに切り出していきましょう。
   #まず、app/servicesのように、appディレクトリ配下にservicesというディレクトリを作成してください。
   #その配下にsearch_tweets_service.rbという、検索処理を定義するファイルを作成します。
end