live_loop :bluesprog do
  #sync :bass
  r = 0.20
  r2 = 0.60
  s = 1 - r
  s2 = 1 - r2
  a = 1
  use_bpm 128
  # bitcrusher and autotune here are cool effects
  #with_fx :distortion, distort: 0.40 do
  with_fx :mono do
    with_fx :distortion, distort: 0.70 do #best at 128 (.16,.48)
      # with_fx :flanger, depth: 2,  do weird
      #with_fx :tanh, krunch:6 do # good with distortion
      use_synth :fm
      define :the_one_bar do
        4.times do
          play chord(:C4, :minor7), release: r
          sleep s
          play chord(:C4, :minor7), release: r2 #, amp: a
          sleep s2
        end
      end
      
      define :the_four_bar do
        4.times do
          play chord(:F4, :minor7), release: r
          sleep s
          play chord(:F4, :minor7), release: r2 #, amp: a
          sleep s2
        end
      end
      
      define :the_five_bar do
        4.times do
          play chord(:G4, :minor7), release: r
          sleep s
          play chord(:G4, :minor7), release: r2 #, amp: a
          sleep s2
        end
      end
      
      
      
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
  end
  
  
  
end



