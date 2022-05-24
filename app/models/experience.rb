class Experience < ApplicationRecord

  def position
    [title, url].reject(&:blank?).join(' / ')
  end
end
