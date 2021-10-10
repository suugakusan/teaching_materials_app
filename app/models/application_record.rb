class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  enum schooltype: {
    未選択: 0,
    小学校: 1,
    中学校: 2,
    高校: 3
  }, _suffix: true
  
  enum grade: {
    未選択: 0,
    学年共通: 1,
    １年: 2,
    ２年: 3,
    ３年: 4,
    ４年: 5,
    ５年: 6,
    ６年: 7,
  }, _suffix: true
  
  def self.elementary_grade
    grades
  end
  
  def self.junior_grade
    grades.except(:４年, :５年, :６年)
  end
  
  enum subject_id: {
    未選択: 0,
    国語: 1,
    社会: 2,
    数学: 3,
    理科: 4,
    英語: 5,
    音楽: 6,
    保体: 7,
    技家: 8,
    美術: 9,
    算数: 10,
    生活: 11,
    家庭: 12,
    図画工作: 13
  }, _suffix: true
  
  
  enum junior_subject_id: {
    未選択: 0,
    国語: 1,
    社会: 2,
    数学: 3,
    理科: 4,
    英語: 5,
    音楽: 6,
    保体: 7,
    技家: 8,
    美術: 9
  }, _suffix: true
  
  enum elementary_subject_id: {
    未選択: 0,
    国語: 1,
    社会: 2,
    算数: 10,
    理科: 4,
    英語: 5,
    音楽: 6,
    保体: 7,
    生活: 11,
    家庭: 12,
    図画工作: 13
  }, _suffix: true
  
  enum prefecture_id: {
    北海道: 1,
    青森県: 2,
    岩手県: 3,
    宮城県: 4,
    秋田県: 5,
    山形県: 6,
    福島県: 7,
    茨城県: 8,
    栃木県: 9,
    群馬県: 10,
    埼玉県: 11,
    千葉県: 12,
    東京都: 13,
    神奈川県: 14,
    新潟県: 15,
    富山県: 16,
    石川県: 17,
    福井県: 18,
    山梨県: 19,
    長野県: 20,
    岐阜県: 21,
    静岡県: 22,
    愛知県: 23,
    三重県: 24,
    滋賀県: 25,
    京都府: 26,
    大阪府: 27,
    兵庫県: 28,
    奈良県: 29,
    和歌山県: 30,
    鳥取県: 31,
    島根県: 32,
    岡山県: 33,
    広島県: 34,
    山口県: 35,
    徳島県: 36,
    香川県: 37,
    愛媛県: 38,
    高知県: 39,
    福岡県: 40,
    佐賀県: 41,
    長崎県: 42,
    熊本県: 43,
    大分県: 44,
    宮崎県: 45,
    鹿児島県: 46,
    沖縄県: 47
  }, _suffix: true
  
  enum school_id: {
    小学校: 1,
    中学校: 2,
    高校: 3
  }, _suffix: true
  
  enum japanesebook: {
    未選択: 20,
    東京書籍: 0,
    三省堂: 1,
    教育出版: 2,
    光村図書出版: 3
  }, _suffix: true
  
  enum societybook: {
    未選択: 20,
    東京書籍: 0,
    教育出版: 2,
    帝国書院: 4,
    山川出版社: 5,
    日本文教出版: 6,
    自由社: 7,
    育鵬社: 8,
    清水書院: 9,
  }, _suffix: true
  
  enum mathbook: {
    未選択: 20,
    東京書籍: 0,
    大日本図書: 10,
    学校図書: 11,
    教育出版: 12,
    啓林館: 13,
    数研出版: 14,
    日本文教出版: 6
  }, _suffix: true
  
  enum sciencebook: {
    未選択: 20,
    東京書籍: 0,
    日本図書: 10,
    学校図書: 11,
    教育出版: 12,
    啓林館: 13,
  }, _suffix: true
  
  enum musicbook: {
    未選択: 20,
    教育出版: 12,
    教育芸術社: 15
  }, _suffix: true
  
  enum artbook: {
    未選択: 20,
    開隆堂出版: 16,
    光村図書出版: 3,
    日本文教出版: 6
  }, _suffix: true
  
  enum pebook: {
    未選択: 20,
    東京書籍: 0,
    大日本図書: 10,
    大修館書店: 17,
    学研教育みらい:18
  }, _suffix: true
  
  enum technologybook: {
    未選択: 20,
    東京書籍: 0,
    教育図書: 19,
    開隆堂出版: 16,
  }, _suffix: true
  
  enum englishbook: {
    未選択: 20,
    教育出版: 12,
    光村図書出版: 3,
    啓林館: 13
  }, _suffix: true
  
  enum lifebook: {
    未選択: 20,
    東京書籍: 0,
    大日本図書: 10,
    学校図書: 11,
    教育出版: 12,
    信州教育出版社: 21,
    光村図書出版: 3,
    啓林館: 13,
    日本文教出版: 6
  }, _suffix: true
  
  enum drawingbook: {
    未選択: 20,
    開隆堂出版: 16,
    日本文教出版: 6
  }, _suffix: true
  
  enum homebook: {
    未選択: 20,
    東京書籍: 0,
    開隆堂出版: 16,
  }, _suffix: true
end
