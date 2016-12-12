# Session 05
# Revisitation of Previous Sessions
# filename: revisitation-live-loop-example.rb

use_bpm 130

live_loop :beat do
  sleep 1
end

live_loop :bar, sync: :beat do
  sleep 4
end


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
  # Using a Live-Loop for the Bassline
  ################################################################################
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

comment do
  ################################################################################
  # Adding Let the Synth & Filter look
  ################################################################################
  use_synth :fm
  use_synth_defaults divisor: 2 , depth: 2, attack: 0, sustain: 0, release: 0.75

  bassline = (ring :c3, :c3, :g3, :bb3,
                   :c3, :c3, :g3, :bb3,
                   :c3, :c3, :g3, :bb3,
                   :c4, :g3, :bb3, :c4)

  # bassline = (ring :c2, :c2, :g2, :bb2,
  #                  :c2, :c2, :g2, :bb2,
  #                  :c2, :c2, :g2, :bb2,
  #                  :c3, :g2, :bb2, :c3)

  cutoff = (line 30, 130, steps: 128, inclusive: true).ramp
  depth = (line 0.5, 4, steps: 128, inclusive: true).ramp
  res = (line 0.5, 0.95, steps: 264, inclusive: true).ramp

  live_loop :bass do
    sync :beat
    2.times do
      with_synth_defaults depth: depth.look, release: 0.75 do
        with_fx :rlpf, cutoff: cutoff.look, res: res.look do
          play bassline.tick, amp: 1
        end
        sleep 0.5
      end
    end
  end

end #comment


comment do
  ################################################################################
  # A Kick Drum
  ################################################################################
  live_loop :kick do
    sample :bd_haus
    sleep 1
  end

end #comment

comment do
  ################################################################################
  # A Bit of Rhythm Variation
  ################################################################################
  live_loop :kick do
    sync :beat
    bd = (ring 2, 0, 0, 0, 2, 0, 0, 0.5, 2, 0, 0, 0, 2, 0.5, 0, 1)
    4.times do
      if bd.tick != 0
        sample :bd_haus, amp: bd.look
      end
      sleep 0.25
    end
  end

end #comment

comment do
  ################################################################################
  # A Simple Hihat
  ################################################################################

  live_loop :hihat do
    sync :beat
    4.times do
      sleep 0.5
      sample :drum_cymbal_closed, amp: 3, finish: 0.15
      sleep 0.5
    end
  end

end #comment

comment do
  ################################################################################
  # A Shaker
  ################################################################################

  use_synth :noise
  use_synth_defaults release: 0.15

  live_loop :shaker do
    sync :beat
    2.times do
      with_fx :hpf, cutoff: 115 do
        play :c, amp: 1.5
      end
      sleep 0.25

      with_fx :hpf, cutoff: 110 do
        play :c
      end
      sleep 0.25
    end
  end

end #comment

comment do
  ################################################################################
  # Rhythm Chords
  ################################################################################
  use_synth :dsaw
  use_synth_defaults release: 0.25
  my_chord = chord(:c4, '7sus4')
  chord_rhythm = (ring 3, 0, 1.5, 0,
                       0, 3, 0, 1.5,
                       3, 0, 0, 0,
                       0, 1.5, 0, 2)

  live_loop :chords do
    if chord_rhythm.tick != 0
      play my_chord, amp: chord_rhythm.look
    end
    sleep 0.25
  end

end #comment

comment do
  ################################################################################
  # Rhythm Chords, setting differnt chords
  ################################################################################
  use_synth :dsaw
  use_synth_defaults release: 0.25

  my_chords = (ring :sus2, :r, :sus2, :r,
                    :r, :sus2, :r, '9sus4',
                    :sus2, :r, :r, :r,
                    :r, '9sus4', :r, '9sus4')
  my_chords_amp = (line 0, 3, steps: 528, inclusive: true).ramp

  live_loop :chords do
    sync :beat
    4.times do
      if my_chords.tick != :r
        play chord(:c4, my_chords.look), amp: my_chords_amp.look
      end
      sleep 0.25
    end
  end

end #comment

comment do
  ################################################################################
  # Ornamental Synth Phrase
  ################################################################################
  use_synth :pretty_bell
  use_synth_defaults release: 0.5
  my_ornament = (ring :f4,:bb4,:a4,:bb4,:c5,:a4,:bb4,:c5)
  my_ornament = (ring :g5,:c6,:bb5,:c6,:d6,:bb5,:c6,:d6)

  live_loop :ornament do
    sync :beat
    2.times do
      with_fx :reverb, room: 0.5, mix: 0.5 do
        play my_ornament.tick, amp: 1.5
      end
      sleep 0.5
    end
  end

end #comment

################################################################################
# Drum Samples
################################################################################
comment do

  # http://99sounds.org/radiophonic-atmospheres/
  s_path = "/home/marty/projects/sonicpi/playground/audio/samples/99Sounds Radiophonic Atmospheres by Red Sky Lullaby/Rhythmic Atmospheres"

  # 1 = Bit Beat
  # 5 = Clicktronic (amp 8)
  # 16 = Hex Beat
  #  32 = Vocodey Beat

  live_loop :radiophonic_sample do
    sync :bar
    s_no = 15
    s_stretch = 32
    s_amp = 5
    with_fx :pitch_shift, pitch: 0 do
      sample s_path, s_no, beat_stretch: s_stretch, amp: s_amp
    end
    sleep sample_duration(s_path, s_no, beat_stretch: s_stretch)
  end

end #comment
