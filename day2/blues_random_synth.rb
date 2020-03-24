use_synth :tb303
live_loop :bob do
  cue :hey
  x = 0.25
  release = 1
  rl = 60
  rh = 120
  4.times do
    play choose(chord(:C, :major)), release: release, cutoff: rrand(rl, rh)
    sleep x
  end
  2.times do
    play choose(chord(:F, :major)), release: release, cutoff: rrand(rl, rh)
    sleep x
  end
  2.times do
    play choose(chord(:C, :major)), release: release, cutoff: rrand(rl, rh)
    sleep x
  end
  play choose(chord(:G, :major)), release: release, cutoff: rrand(rl, rh)
  sleep x
  play choose(chord(:F, :major)), release: release, cutoff: rrand(rl, rh)
  sleep x
  2.times do
    play choose(chord(:C, :major)), release: release, cutoff: rrand(rl, rh)
    sleep x
  end
  
end