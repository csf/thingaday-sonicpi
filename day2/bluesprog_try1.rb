live_loop :bluesprog do
  
  r = 0.25
  s = 1 - r
  a = 0.25
  use_bpm 96
  define :the_one_bar do
    4.times do
      play chord(:C4, :minor7), release: r
      sleep s
      play chord(:C4, :minor7), release: r, amp: a
      sleep s
    end
  end
  
  define :the_four_bar do
    4.times do
      play chord(:F4, :minor7), release: r
      sleep s
      play chord(:F4, :minor7), release: r, amp: a
      sleep s
    end
  end
  
  define :the_five_bar do
    4.times do
      play chord(:G4, :minor7), release: r
      sleep s
      play chord(:G4, :minor7), release: r, amp: a
      sleep s
    end
  end
  
  use_synth :fm
  
  4.times do
    play the_one_bar
  end
  
  2.times do
    play the_four_bar
  end
  
  2.times do
    play the_one_bar
  end
  
  1.times do
    play the_five_bar
  end
  
  1.times do
    play the_four_bar
  end
  
  2.times do
    play the_one_bar
  end
  
end

