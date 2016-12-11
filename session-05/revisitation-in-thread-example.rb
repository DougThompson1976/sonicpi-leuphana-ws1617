# Revisitation of Previous Sessions
# filename: revisitation.rb

comment do
  # play_pattern_timed
  play_pattern_timed (ring :c3, :c3, :g3, :bb3), (ring 0.5)
end #comment

comment do
  # play_pattern_timed, synth, extended bassline

  # General Settings
  # What Temp?
  use_bpm 130

  # What synth?
  use_synth :fm
  use_synth_defaults divisor: 2 , depth: 2, attack: 0, sustain: 0, release: 0.5

  4.times do
    play_pattern_timed (ring :c3, :c3, :g3, :bb3, :c4, :g3, :bb3, :c4), (ring 0.5)
  end
end #comment

comment do
  ################################################################################
  # Using Functions
  ################################################################################

  # General Settings
  # What Temp?
  use_bpm 130

  # What synth?
  use_synth :fm
  use_synth_defaults divisor: 2 , depth: 2, attack: 0, sustain: 0, release: 0.5

  define :bassline_a do
    3.times do
      play_pattern_timed (ring :c3, :c3, :g3, :bb3), (ring 0.5)
    end
  end

  define :bassline_b do
    play_pattern_timed (ring :c4, :g3, :bb3, :c4), (ring 0.5)
  end

  # Play the Bassline (4 bars)
  bassline_a
  bassline_b

end #comment

comment do
  ################################################################################
  # Using a Live-Loop for the Bassline
  ################################################################################

  use_bpm 130

  use_synth :fm
  use_synth_defaults divisor: 2 , depth: 2, attack: 0, sustain: 0, release: 0.5

  bassline = (ring :c3, :c3, :g3, :bb3,
                   :c3, :c3, :g3, :bb3,
                   :c3, :c3, :g3, :bb3,
                   :c4, :g3, :bb3, :c4)

  live_loop :bass do
    play bassline.tick
    sleep 0.5
  end

end #comment


comment do
  ################################################################################
  # Adding Filters
  ################################################################################

  use_bpm 130

  use_synth :fm
  use_synth_defaults divisor: 2 , depth: 2, attack: 0, sustain: 0, release: 0.5

  bassline = (ring :c3, :c3, :g3, :bb3,
                   :c3, :c3, :g3, :bb3,
                   :c3, :c3, :g3, :bb3,
                   :c4, :g3, :bb3, :c4)

  live_loop :bass do
    with_fx :lpf, cutoff: 50 do
      play bassline.tick, amp: 3
    end
    sleep 0.5
  end

end #comment

uncomment do
  ################################################################################
  # Adding Let the Synth & Filter look
  ################################################################################

  use_bpm 130

  use_synth :fm
  use_synth_defaults divisor: 2 , depth: 2, attack: 0, sustain: 0, release: 0.75

  bassline = (ring :c3, :c3, :g3, :bb3,
                   :c3, :c3, :g3, :bb3,
                   :c3, :c3, :g3, :bb3,
                   :c4, :g3, :bb3, :c4)

  cutoff = (line 30, 120, steps: 128, inclusive: true).ramp
  depth = (line 0.5, 4, steps: 128, inclusive: true).ramp

  live_loop :bass do
    with_synth_defaults depth: depth.look, release: 0.75 do
      with_fx :lpf, cutoff: cutoff.look do
        play bassline.tick, amp: 1
      end
      sleep 0.5
    end
  end

end #comment


comment do
  ################################################################################
  # A Kick Drum
  ################################################################################

  use_bpm 130

  live_loop :kick do
    sample :bd_haus
    sleep 1
  end

end #comment


uncomment do
  ################################################################################
  # A Bit of Rhythm Variation
  ################################################################################

  use_bpm 130

  live_loop :kick do
    bd = (ring 2, 0, 0, 0, 2, 0, 0, 0.5, 2, 0, 0, 0, 2, 0.5, 0, 1)
    if bd.tick != 0
      sample :bd_haus, amp: bd.look
    end
    sleep 0.25
  end

end #comment

comment do
  ################################################################################
  # A Simple Hihat
  ################################################################################

  use_bpm 130

  live_loop :hihat do
    sleep 0.5
    sample :drum_cymbal_closed, amp: 2, finish: 0.15
    sleep 0.5
  end

end #comment

uncomment do
  ################################################################################
  # A Shaker
  ################################################################################

  use_bpm 130

  use_synth :noise
  use_synth_defaults release: 0.15

  live_loop :shaker do

    with_fx :hpf, cutoff: 115 do
      play :c, amp: 1.5
    end
    sleep 0.25

    with_fx :hpf, cutoff: 110 do
      play :c
    end
    sleep 0.25
  end

end #comment

comment do
  ################################################################################
  # Rhythm Chords
  ################################################################################

  use_bpm 130

  use_synth :dsaw
  use_synth_defaults release: 0.25
  chord_1 = chord(:c4, '7sus4')
  chord_rhythm = (ring 1, 0, 1, 0,
                       0, 1, 0, 1,
                       1, 0, 0, 0,
                       0, 1, 0, 1)

  live_loop :chords do

    if chord_rhythm.tick != 0
      play chord_1, amp: 3
    end
    sleep 0.25

  end

end #comment

comment do
  ################################################################################
  # Rhythm Chords with Random Variations
  ################################################################################

  use_bpm 130

  use_synth :dsaw
  use_synth_defaults release: 0.15

  chord = (ring :sus2, :r, :sus2, :r,
                :r, :sus2, :r, :sus2,
                :sus2, :r, :r, :r,
                :r, :sus2, :r, :sus2)

  live_loop :chords do

    if chord.tick != :r
      play chord.look, amp: 3
    end
    sleep 0.25

  end

end #comment
