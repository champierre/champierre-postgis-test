class Point < ApplicationRecord
  before_save :set_prefecture

  private
  def set_prefecture
    # 県名を取得
    res = ActiveRecord::Base.connection.select_all("SELECT pref_name FROM prefectures WHERE ST_Within(ST_GeomFromText('POINT(#{lng} #{lat})'), geom);")
    self.prefecture = res.first["pref_name"]
  end
end
