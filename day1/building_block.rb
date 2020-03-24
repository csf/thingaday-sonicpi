# Welcome to Sonic Pi v2.9
use_bpm 128

live_loop :foo do
  cue :tick
  sample :bd_mehackit
  sleep 1
end

live_loop :ork do
  sleep 12
  live_loop :cork do
    my_sound
    sleep 4
  end
end

live_loop :dork do
  sleep 44
  live_loop :bork do
    my_sing
  end
end


define :my_sound do
  sample :glitch_robot2
  sleep 4
end

define :my_sing do
  sample :elec_mid_snare
  sleep 2
end
