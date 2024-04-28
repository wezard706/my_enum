class Book < ApplicationRecord
  belongs_to :publisher

  enum :tag, { published: "PUBLISHED", closed: "CLOSED" }

  tags.keys.each do |tag|
    define_singleton_method "find_#{tag}!".to_sym do
      find_by!(tag:)
    end
  end

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :publisher, presence: true
  validates :published_at, presence: true

  def foo
    bar(1, 2)
    hoge
  end

  private

  def bar(a, b)
    a + b
  end

  def hoge
    puts 'hoge'
  end
end
