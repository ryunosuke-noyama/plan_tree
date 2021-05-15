class Status < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '未対応' },
    { id: 3, name: '対応中' },
    { id: 4, name: '確認中' },
    { id: 4, name: '対応完' }
  ]

  include ActiveHash::Associations
  has_many :events
  has_many :plans
  end