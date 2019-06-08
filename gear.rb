class Gear
  # ギアインチ=車輪の直径✖ギア比
  # ただし車輪の直径=リムの直径+タイヤの厚みの2倍とする
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end
end
