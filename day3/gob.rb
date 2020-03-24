bpm = 180
live_loop :bob do
  use_bpm bpm
  sample :bass_woodsy_c, attack: 0.05, sustain: 0.1, amp: 1
  sleep 0.375
end

live_loop :gob do
  use_bpm bpm
  sync :bob
  sleep 0.125
  sample :bass_hard_c, attack: 0.05, sustain: 0.1, amp: 0.7
  sleep 0.375
end

live_loop :mob do
  use_bpm bpm
  sync :bob
  sleep 0.225
  sample :bass_thick_c, attack: 0.025, sustain: 0.2, amp: 1.2
  sleep 0.375
end

live_loop :sob do
  use_bpm bpm
  sync :bob
  sample :drum_cymbal_pedal, amp: 0
  
  sleep 0.125
end

live_loop :crash do
  use_bpm bpm
  sync :bob
  sample :loop_garzul, amp: 1.5
  sleep sample_duration(:loop_garzul)
end

#live_loop :sob do
#  use_bpm bpm
#  sync :bob
#  sleep 0.125
#  sample :bass_hard_c, attack: 0.05, sustain: 0.1, amp: 0.8
#  sleep 0.375
#end