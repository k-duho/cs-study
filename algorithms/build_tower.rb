def towerBuilder(n_floors)
  total_slot = n_floors + (n_floors - 1)
  center_index = total_slot / 2
  build_floor_with_stars = lambda do |total_slot, star_count|
    side_space_slots = " " * ((total_slot - star_count) / 2)
    side_space_slots + ("*" * star_count) + side_space_slots
  end
  
  idx = 1
  n_floors.times.with_object([]) do |_, arr|
    arr << build_floor_with_stars.call(total_slot, idx)
    idx += 2
  end
end
