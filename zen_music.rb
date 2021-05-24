
E3 = chord(:E3, :major)
Fs3 = chord(:Fs3, :minor)
Gs3 = chord(:Gs3, :minor)
As4 = chord(:As4, :major)
B4 = chord(:B4, :major)
Cs4 = chord(:Cs4, :major)
Ds4 = chord(:Ds4, :dim)
use_bpm 60



live_loop :melody do
  use_synth :kalimba
  2.times do
    play_pattern_timed [:E, :Ds, :Fs, :Ds], [1, 2.5, 3, 1.5]
    play_pattern_timed [:E, :Cs, :Ds, :Fs], [1.5, 2, 1.5, 1]
  end
  
  2.times do
    play_pattern_timed [:E, :Ds, :Fs, :Ds], [2.5, 3.5, 1, 1]
    play_pattern_timed [:E, :Cs, :Ds, :Fs], [1.5, 2, 1.5, 2]
  end
  
  2.times do
    play_pattern_timed [:B, :As, :E, :Fs], [1, 3, 1, 1]
    play_pattern_timed [:B, :As, :Ds, :As], [1, 2, 1, 3]
  end
  
  2.times do
    play_pattern_timed [:Gs, :Fs, :E, :Fs], [1, 3, 1, 1]
    play_pattern_timed [:Gs, :Fs, :Ds, :Fs], [1, 2, 1, 3]
  end
  
  2.times do
    play_pattern_timed [Gs3, Fs3, E3, Fs3], [1, 3, 1, 1]
  end
  
  2.times do
    play_pattern_timed [E3, :B, E3, :Fs], [1, 3, 1, 3]
    play_pattern_timed [Gs3, :Fs, E3, :Fs], [1, 2, 1, 3]
  end
  
  2.times do
    play_pattern_timed [E3, Fs3, E3, Fs3], [1, 3, 1, 1]
    play_pattern_timed [Gs3, Fs3, E3, Fs3], [1, 2, 1, 3]
  end
  
  2.times do
    play_pattern_timed [E3, B4, E3, Fs3], [1, 3, 1, 1]
    play_pattern_timed [Gs3, Fs3, E3, Fs3], [1, 2, 1, 3]
  end
  
end

live_loop :ambient do
  use_bpm 50
  8.times do
    sample :ambi_glass_hum, amp: 0.5, decay: 3, pitch: 4
    sleep 8
    sample :ambi_glass_hum, amp: 0.5, decay: 3, pitch: 2
    sleep 8
    sample :ambi_glass_hum, amp: 0.5, decay: 3, pitch: 6
    sleep 8
    sample :ambi_glass_hum, amp: 0.5, decay: 3, pitch: 2
    sleep 8
  end
end




