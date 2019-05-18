class User < ApplicationRecord
  validates :name, {presence: true, length: {maximum: 15}}
  validates :email, {
    presence: true, 
    format: {with: /\A[a-zA-Z0-9_\#!$%&`'*+\-{|}~^\/=?\.]+@[a-zA-Z0-9][a-zA-Z0-9\.-]+\z/, }
    # 正規表現の終了文字を打つ方法が不明。,をつけるとうまく行くが、その後のmessageなどを入れない場合少し汚く見える
  }
  validates :password, {
    presence: true, 
    length: { in: 8..32 },
    format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, }
  }
  
  has_secure_password
end
