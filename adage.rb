def document_failures
  $player_hp = $player_hp
  
  if $player_hp < 1
    chapter_header = File.read("lib/data/chapters/written_chapter.txt")

    chapter_open  = chapter_header
    chapter_close = chapter_header

    File.open("lib/data/chapters/chapter_names.txt", "a") { |f|
      f.puts chapter_header
    }

    File.open("_data/chapters/previous_failures.txt", "a") { |f|
      ex_date         = File.read("lib/data/experience/date.txt").strip.to_s
      ex_feeling      = File.read("lib/data/experience/feelings.txt").strip.to_s
      ex_relationship = File.read("lib/data/experience/relationships.txt").strip.to_s

      f.puts "    <#{chapter_open}>"
      f.puts "      <experience"
      f.puts "        <ex_date>#{ex_date}</ex_date>"                         # The exact date that the event occurred.
      f.puts "        <ex_feeling>#{ex_feeling}</ex_feeling>"                # The specific feeling when the event happened.
      f.puts "        <ex_relationship>#{ex_relationship}</ex_relationship>" # The relationship you've had to the other NPCs involved.'
      f.puts "      </experience>"

      in_retrospect   = File.read("lib/data/insight/retrospect.txt").strip.to_s
      in_adage        = File.read("lib/data/insight/adage.txt").strip.to_s      

      f.puts "      <insight>"
      f.puts "        <in_reflection>#{in_retrospect}</in_reflection>" # Things you felt you should have done.
      f.puts "        <in_adage>#{in_adage}</in_adage>"                # Things to remember not to repeat or learned over time.
      f.puts "      </insight>"
      f.puts "    </#{chapter_close}>"
    }
  end
end

def document_wisdom
  agent_name = File.read("lib/data/npc/mentor/name.txt")
  chapters   = File.read("lib/data/chapters/previous_failures.txt")

  screen = "<screen>
    <container>
      <agent_name>#{agent_name}</agent_name>

      #{chapters}
    </container>
  </screen>"

  File.open("lib/data/wisdom/your_previous_incarnation.xml", "w") { |f|
    f.puts screen
  }
end

def choose_adage
  def give_advice
    chapters = File.readlines("lib/data/chapters/chapter_names.txt")
    headers = chapters.sample.strip.to_s

    reflection = "#{headers}/insight/in_reflection"
    adage      = "#{headers}/insight/in_adage"

    puts ">> #{reflection} #{adage}"
  end

  
  print ">> Would you like some advice?"; request = gets.chomp

  if    "I'm listening." == request; give_advice
  elsif    "Yes Sensei." == request; give_advice
  elsif  "Entertain me." == request; give_ddvice
  else
    puts ">> Perhaps another time."
  end
end
