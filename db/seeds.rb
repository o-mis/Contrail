# 管理ユーザー作成
User.create!(name: 'Admin User',
             email: 'admin-contrail@example.com',
             password: 'abcdefg',
             password_confirmation: 'abcdefg',
             avatar: open("#{Rails.root}/db/fixtures/avatar/admin.png"),
             admin: true)

# ユーザー作成
50.times do |n|
  name = Faker::Name.name
  email = "sample#{n + 1}@sample.com"
  password = 'password'
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               confirmed_at: Time.zone.now,
               created_at: Time.zone.now)
end

# ユーザー画像作成
users = User.order(:id).take(13)
users.each_with_index do |user, i|
  user.avatar = open("#{Rails.root}/db/fixtures/avatar/avatar-#{i + 1}.jpg")
  user.save
end

# 一般ユーザーの投稿作成
Micropost.create!(
  [
    {
      user_id: 1,
      image: open("#{Rails.root}/db/fixtures/pic/pic-1.JPG"),
      arrived_at: 'day',
      budget: 'yen0',
      address: 'まる伊 銀座総本店',
      content: 'ボリュームたっぷりのづけあなちらしがおすすめです。コスパが良い。',
      tag_list: '銀座,寿司,おすすめ,コスパ'
    },
    {
      user_id: 2,
      image: open("#{Rails.root}/db/fixtures/pic/pic-17.jpg"),
      arrived_at: 'night',
      budget: 'yen10',
      address: '群馬県 土号駅',
      content: '森の中でバーベキューしてきた！他のお客さんを気にせずゆっくり焼いて食べれる最高の場所。',
      tag_list: '群馬,バーベキュー,三密'
    },
    {
      user_id: 3,
      image: open("#{Rails.root}/db/fixtures/pic/pic-8.jpg"),
      arrived_at: 'day',
      budget: 'yen2',
      address: '北千住駅',
      content: 'お気に入りのクロワッサンを朝食に。',
      tag_list: '北千住,クロワッサン,カフェ'
    },
    {
      user_id: 4,
      image: open("#{Rails.root}/db/fixtures/pic/pic-12.jpg"),
      arrived_at: 'night',
      budget: 'yen7',
      address: '浅草駅',
      content: 'あまり知られたくない穴場スポット。ここはコスパが良すぎる。',
      tag_list: '浅草,ピザ,GoToイート'
    },
    {
      user_id: 5,
      image: open("#{Rails.root}/db/fixtures/pic/pic-14.jpg"),
      arrived_at: 'night',
      budget: 'yen3',
      address: '六本木駅',
      content: 'ポテトが特に美味しかった。ついついビールも頼んでいた...',
      tag_list: '六本木,ハンバーガー,GoToイート'
    },
    {
      user_id: 6,
      image: open("#{Rails.root}/db/fixtures/pic/pic-7.jpg"),
      arrived_at: 'day',
      budget: 'yen4',
      address: '日暮里駅',
      content: 'フルーツたっぷりのフレンチトースト。お腹いっぱいになった。',
      tag_list: '日暮里,スイーツ'
    },
    {
      user_id: 7,
      image: open("#{Rails.root}/db/fixtures/pic/pic-15.jpg"),
      arrived_at: 'night',
      budget: 'yen30',
      address: '新宿駅',
      content: 'ワインの種類が豊富で楽しい。緑を感じるテラス席で開放感も抜群。',
      tag_list: '新宿,ワイン,GoToイート'
    },
    {
      user_id: 8,
      image: open("#{Rails.root}/db/fixtures/pic/pic-5.jpg"),
      arrived_at: 'night',
      budget: 'yen5',
      address: '神楽坂駅',
      content: '一番安いおまかせを注文。ハマチが美味しかった。',
      tag_list: '神楽坂,寿司,GoToイート'
    },
    {
      user_id: 9,
      image: open("#{Rails.root}/db/fixtures/pic/pic-11.jpg"),
      arrived_at: 'day',
      budget: 'yen2',
      address: '吉祥寺駅',
      content: 'なめらかプリンでとっても美味しかった。お店の雰囲気も好み。',
      tag_list: '吉祥寺,プリン,穴場'
    },
    {
      user_id: 10,
      image: open("#{Rails.root}/db/fixtures/pic/pic-6.jpg"),
      arrived_at: 'day',
      budget: 'yen2',
      address: '四ツ谷駅',
      content: 'お腹があまり空いていないときふらっと入ったお店。',
      tag_list: '四ツ谷,サラダ'
    },
    {
      user_id: 11,
      image: open("#{Rails.root}/db/fixtures/pic/pic-10.jpg"),
      arrived_at: 'day',
      budget: 'yen8',
      address: '三軒茶屋駅',
      content: 'お店の人がハムサービスしてくれた。また行きます。',
      tag_list: '三軒茶屋,サンドイッチ'
    },
    {
      user_id: 12,
      image: open("#{Rails.root}/db/fixtures/pic/pic-18.jpg"),
      arrived_at: 'day',
      budget: 'yen1',
      address: '上野駅',
      content: '大好きなあれを食べるためだけに上野来た。',
      tag_list: '上野,ケバブ'
    },
    {
      user_id: 13,
      image: open("#{Rails.root}/db/fixtures/pic/pic-16.jpg"),
      arrived_at: 'day',
      budget: 'yen6',
      address: '代官山駅',
      content: 'ティラミス美味しかった！お店ものんびり過ごしたい日に最適。',
      tag_list: '代官山,カフェ,ケーキ'
    },
    {
      user_id: 14,
      image: open("#{Rails.root}/db/fixtures/pic/pic-4.jpg"),
      arrived_at: 'night',
      budget: 'yen20',
      address: '新橋駅',
      content: '中トロが美味しくて驚いた店。寿司は最高だ。',
      tag_list: '新橋,寿司'
    },
    {
      user_id: 15,
      image: open("#{Rails.root}/db/fixtures/pic/pic-3.jpg"),
      arrived_at: 'night',
      budget: 'yen9',
      address: '表参道駅',
      content: 'この日はお目当てのパスタを食べに。味も良かったけど個人的に店員さんが親切でほっこりした。'
    }
  ]
)

# お店の投稿作成
Chef.create!(
  [
    {
      user_id: 16,
      image: open("#{Rails.root}/db/fixtures/pic/pic-2.jpg"),
      address: '東京駅',
      comment: '皆様にお知らせです。本日特別なお肉をご用意しております！金木犀の香りに誘われるように、うちにもぜひふらっとお立ち寄りくださいませ。',
      tag_list: 'ステーキ,GoToイート,感染症対策'
    },
    {
      user_id: 17,
      image: open("#{Rails.root}/db/fixtures/pic/pic-13.jpg"),
      address: '神保町駅',
      comment: '店長です。季節の変わり目体調いかがでしょうか。スパイシーなカレーで毎日頑張るあなたを応援します。',
      tag_list: 'カレー,GoToイート,感染症対策'
    },
    {
      user_id: 18,
      image: open("#{Rails.root}/db/fixtures/pic/pic-19.jpg"),
      address: '錦糸町駅',
      comment: '本日のおすすめは...。',
      tag_list: '小籠包,中華,GoToイート,感染症対策'
    },
    {
      user_id: 19,
      image: open("#{Rails.root}/db/fixtures/pic/pic-20.jpg"),
      address: '渋谷駅',
      comment: 'こちら季節のおまかせにぎりです。毎日限定30食です。ぜひお越しください。',
      tag_list: '寿司,GoToイート,感染症対策'
    },
    {
      user_id: 20,
      image: open("#{Rails.root}/db/fixtures/pic/pic-23.jpg"),
      address: '目黒駅',
      comment: '寒くなってきましたね。魚介のスープで体を温めませんか?',
      tag_list: '目黒,GoToイート,感染症対策'
    },
    {
      user_id: 21,
      image: open("#{Rails.root}/db/fixtures/pic/pic-21.jpg"),
      address: '阿佐ヶ谷駅',
      comment: '今日はサービスデーです。「投稿見たよ」と教えていただければ、ささやかですが一品サービスしますよー。',
      tag_list: '中華,GoToイート,感染症対策'
    },
    {
      user_id: 22,
      image: open("#{Rails.root}/db/fixtures/pic/pic-23.jpg"),
      address: '目黒駅',
      comment: '寒くなってきましたね。魚介のスープで体を温めませんか?',
      tag_list: '目黒,GoToイート,感染症対策'
    },
    {
      user_id: 23,
      image: open("#{Rails.root}/db/fixtures/pic/pic-24.jpg"),
      address: '自由が丘駅',
      comment: '一日数量限定のモーニングセットをご紹介。早起きされた方はぜひいらしてくださいね。',
      tag_list: 'クロワッサン,GoToイート,感染症対策'
    },
    {
      user_id: 24,
      image: open("#{Rails.root}/db/fixtures/pic/pic-25.jpg"),
      address: '亀戸駅',
      comment: '自慢のウイークエンドシトロンです。先日知り合った農家さんのレモンが美味しすぎてパワーアップです。',
      tag_list: 'スイーツ,GoToイート,感染症対策'
    },
    {
      user_id: 25,
      image: open("#{Rails.root}/db/fixtures/pic/pic-26.jpg"),
      address: '六本木駅',
      comment: 'お二人用のハンバーガーセットです。ビールを豊富に揃えておりますのでご一緒にどうですか。もちろんお一人でも大歓迎です。',
      tag_list: 'ハンバーガー,GoToイート,感染症対策'
    },
    {
      user_id: 26,
      image: open("#{Rails.root}/db/fixtures/pic/pic-27.jpg"),
      address: '恵比寿駅',
      comment: '新商品のボロネーゼ、もう召し上がりましたか?チーズたっぷりでたまりません。',
      tag_list: 'パスタ,GoToイート,感染症対策'
    },
    {
      user_id: 27,
      image: open("#{Rails.root}/db/fixtures/pic/pic-28.jpg"),
      address: '荻窪駅',
      comment: '当店で一番人気のメニューはこちら。併せておすすめなのはアヒージョですよ〜。',
      tag_list: 'ピザ,GoToイート,感染症対策'
    },
    {
      user_id: 28,
      image: open("#{Rails.root}/db/fixtures/pic/pic-29.jpg"),
      address: '亀戸駅',
      comment: '最近クリスマス専用の料理を追加しようか考えております。今年もとびきり美味しいの出します。',
      tag_list: 'フレンチ,GoToイート,感染症対策'
    },
    {
      user_id: 29,
      image: open("#{Rails.root}/db/fixtures/pic/pic-30.jpg"),
      address: '学芸大学駅',
      comment: '本格的な寒さに対抗して今月はこちらを作りました。',
      tag_list: 'ドリア,GoToイート,感染症対策'
    },
    {
      user_id: 30,
      image: open("#{Rails.root}/db/fixtures/pic/pic-31.jpg"),
      address: '赤坂駅',
      comment: '先日ご来店いただいたお客様から絶賛してもらったお料理です。お店を続けられることがありがたい。',
      tag_list: '赤坂,GoToイート,感染症対策'
    },
    {
      user_id: 31,
      image: open("#{Rails.root}/db/fixtures/pic/pic-32.jpg"),
      address: '下北沢駅',
      comment: '今月最後のメキシコデー。メキシコ料理初挑戦の方もきっと気に入るような仕掛けがあります。',
      tag_list: 'メキシコ料理,GoToイート,感染症対策'
    },
    {
      user_id: 32,
      image: open("#{Rails.root}/db/fixtures/pic/pic-33.jpg"),
      address: '原宿駅',
      comment: '生クリーム盛り盛りドリンクです。甘党にはたまりません。',
      tag_list: 'スイーツ,GoToイート,感染症対策'
    },
    {
      user_id: 33,
      image: open("#{Rails.root}/db/fixtures/pic/pic-34.jpg"),
      address: '駒込駅',
      comment: 'シンプルイズベスト。目玉焼きの下にアボカドを敷き詰めました。',
      tag_list: 'モーニング,GoToイート,感染症対策'
    },
    {
      user_id: 34,
      image: open("#{Rails.root}/db/fixtures/pic/pic-35.jpg"),
      address: '上町駅',
      comment: '新作パイです。中にどんな果物が入っているでしょうか...',
      tag_list: 'スイーツ,GoToイート,感染症対策'
    },
    {
      user_id: 35,
      image: open("#{Rails.root}/db/fixtures/pic/pic-36.jpg"),
      address: '泉岳寺駅',
      comment: 'チョコレートをのせてアレンジしたエッグタルト。ぜひ食べてみてください。',
      tag_list: 'タルト,スイーツ,GoToイート,感染症対策'
    },
    {
      user_id: 36,
      image: open("#{Rails.root}/db/fixtures/pic/pic-37.jpg"),
      address: '原宿駅',
      comment: 'お知らせです。試作品が大成功しました！これは来週から店頭に並べます。',
      tag_list: 'スイーツ,GoToイート,感染症対策'
    }
  ]
)

# フォロー・フォロワー関係
users = User.all
user = users.first
following = users[2..20]
followers = users[3..10]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }

# いいね
users = User.order(:id).take(10)
microposts = Micropost.order(:id).take(15)
users.each do |u|
  microposts.each do |micropost|
    micropost.like(u)
  end
end
