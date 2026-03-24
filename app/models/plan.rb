class Plan < ApplicationRecord
  # 必須項目の設定
  validates :title, presence: true, length: { maximum: 20 }
  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :content, length: { maximum: 500 }

  # 終了日が開始日より前にならないようにするルール
  validate :end_time_cannot_be_before_start_time

  private

  def end_time_cannot_be_before_start_time
    if start_time.present? && end_time.present? && end_time < start_time
      errors.add(:end_time, "は開始日以降の日付を選択してください")
    end
  end
end