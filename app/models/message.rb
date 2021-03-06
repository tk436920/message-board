class Message < ActiveRecord::Base
    # 名前は必須入力かつ100文字以内
    validates :name , length: {  maximum: 100 } , presence: true
    # 年齢は必須入力かつ0以上の数字かつ3文字以内
    validates :age , length: {  maximum: 3 } , numericality: { only_integer: true , greater_than_or_equal_to: 0} , presence: true
    # 内容は必須入力かつ2文字以上500文字以下
    validates :body , length: {minimum: 2 , maximum: 500 } , presence: true
end
