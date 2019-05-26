class Gate
  STATIONS = [:umeda, :juso, :mikuni]
  FARES = [150, 190]

  # 駅名を取得(Gate.new(:name)となる)
  # 乗車駅駅のみを区別するため
  def initialize(name)
    @name = name
  end

  # 乗車駅の駅名を取得
  def enter(ticket)
    ticket.stamp(@name)
  end

  #　降車駅の駅名を取得(@name)
  # 乗車駅の駅名(tikcet.stamped_at)と降車駅の駅名(name)から運賃を取得
  # 実際の運賃(fare)と購入したチケットの運賃(tikcet.fare)を比較し真偽値を返す
  def exit(ticket)
    fare = calc_fare(ticket)
    fare <= ticket.fare
  end

  def calc_fare(ticket)
    from = STATIONS.index(ticket.stamped_at)
    to = STATIONS.index(@name)
    distance = to - from
    FARES[distance - 1]
  end
end
