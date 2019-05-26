# チケットの乗車駅と購入金額がわかるクラス
class Ticket
  attr_reader :fare, :stamped_at

  # ticket.fare チケットの購入金額を取得
  def initialize(fare)
    @fare = fare
  end

  # 乗車駅名を取得
  def stamp(name)
    @stamped_at = name
  end
end
