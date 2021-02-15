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

  def gear_inches
    # タイヤはリムの周りを囲むので直径を計算するためには2倍する
    ratio * (rim + (tire * 2))
  end
end

puts Gear.new(52, 11, 26, 1.5).gear_inches
# -> 137.0909090909091
puts Gear.new(52, 11, 24, 1.25).gear_inches
# -> 125.27272727272728
