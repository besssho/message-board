class Message < ActiveRecord::Base
    # 名前は必須入力かつ２０文字以内
    validates :name , length:{maximum:20} , presence:true
    # 内容は必須入力かつ２文字以上３０字以下
    validates :body , length:{minimum:2 , maximum:30} , presence:true
    # 年齢は０以上の数字のみ
    validates :age , numericality:{greater_than_or_equal_to:0 }
end
