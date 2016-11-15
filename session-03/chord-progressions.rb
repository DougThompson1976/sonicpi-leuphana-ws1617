# filename: chord-progressions.rb
#



# iii - vi - iv - vii - i

# iii - vi - II - vii - vi
# iii - vi - II - v - vi
# iii - vi - iv - vii - vi
# iii - vi - iv - v - vi

comment do
  # V - I
  live_loop :n00 do
    play (chord_invert (chord_degree 5, :c4, :major, 3), 1)
    sleep 1
    play (chord_invert (chord_degree 1, :c5, :major, 3), 0)
    sleep 1
  end
end

comment do
  # II - V
  live_loop :n00 do
    play (chord_invert (chord_degree 2, :c5, :major, 3), 0)
    sleep 1
    play (chord_invert (chord_degree 5, :c4, :major, 3), 1)
    sleep 1
    play (chord_invert (chord_degree 2, :c5, :major, 3), 0)
    sleep 1
    play (chord_invert (chord_degree 5, :c4, :major, 3), 2)
    sleep 1
  end
end

comment do
  # III - VI - II - V - I
  live_loop :n01 do
    play (chord_invert (chord_degree 3, :c4, :major, 3), 2)
    sleep 1
    play (chord_invert (chord_degree 6, :c4, :major, 3), 1)
    sleep 1
    play (chord_invert (chord_degree 2, :c5, :major, 3), 0)
    sleep 1
    play (chord_invert (chord_degree 5, :c4, :major, 3), 1)
    sleep 1
    play (chord_invert (chord_degree 1, :c5, :major, 3), 0)
    sleep 2
  end
end

comment do
  # III - VI - II - V - VI
  live_loop :n01 do
    play (chord_invert (chord_degree 3, :c4, :major, 3), 2)
    sleep 1
    play (chord_invert (chord_degree 6, :c4, :major, 3), 1)
    sleep 1
    play (chord_invert (chord_degree 2, :c5, :major, 3), 0)
    sleep 1
    play (chord_invert (chord_degree 5, :c4, :major, 3), 1)
    sleep 1
    play (chord_invert (chord_degree 6, :c4, :major, 3), 1)
    sleep 2
  end
end

comment do
  # III - VI - II - VII - I
  live_loop :n01 do
    play (chord_invert (chord_degree 3, :c4, :major, 3), 2)
    sleep 1
    play (chord_invert (chord_degree 6, :c4, :major, 3), 1)
    sleep 1
    play (chord_invert (chord_degree 2, :c5, :major, 3), 0)
    sleep 1
    play (chord_invert (chord_degree 7, :c4, :major, 3), 1)
    sleep 1
    play (chord_invert (chord_degree 1, :c5, :major, 3), 0)
    sleep 4
  end
end

uncomment do
  # III - VI - II - VII - VI
  live_loop :n01 do
    play (chord_invert (chord_degree 3, :c4, :major, 3), 2)
    sleep 1
    play (chord_invert (chord_degree 6, :c4, :major, 3), 1)
    sleep 1
    play (chord_invert (chord_degree 2, :c5, :major, 3), 0)
    sleep 1
    play (chord_invert (chord_degree 7, :c4, :major, 3), 1)
    sleep 1
    play (chord_invert (chord_degree 6, :c4, :major, 3), 2)
    sleep 2
  end
end

comment do
  # III - VI - IV - V - I
  live_loop :n01 do
    play (chord_invert (chord_degree 3, :c4, :major, 3), 2)
    sleep 1
    play (chord_invert (chord_degree 6, :c4, :major, 3), 1)
    sleep 1
    play (chord_invert (chord_degree 2, :c5, :major, 3), 0)
    sleep 1
    play (chord_invert (chord_degree 4, :c4, :major, 3), 2)
    sleep 1
    play (chord_invert (chord_degree 1, :c5, :major, 3), 0)
    sleep 4
  end
end
