Race.find_or_create_by!(name: 'Dwarf') do |user|
  user.url = 'http://paizo.com/pathfinderRPG/prd/races.html#dwarves'
  user.size = 'medium'
  user.speed = 20
  user.description = 'Dwarves are a stoic but stern race, ensconced in cities carved from the hearts of mountains and fiercely determined to repel the depredations of savage races like orcs and goblins. More than any other race, the dwarves have acquired a reputation as dour and humorless craftsmen of the earth. It could be said that dwarven history shapes the dark disposition of many dwarves, for they reside in high mountains and dangerous realms below the earth, constantly at war with giants, goblins, and other such horrors.'
  user.save!
end
Race.find_or_create_by!(name: 'Elf') do |user|
  user.url = 'http://paizo.com/pathfinderRPG/prd/races.html#elves'
  user.size = 'medium'
  user.speed = 30
  user.description = 'The long-lived elves are children of the natural world, similar in many superficial ways to fey creatures, yet different as well. Elves value their privacy and traditions, and while they are often slow to make friends, at both the personal and national levels, once an outsider is accepted as a comrade, such alliances can last for generations. Elves have a curious attachment to their surroundings, perhaps as a result of their incredibly long lifespans or some deeper, more mystical reason. Elves who dwell in a region for long find themselves physically adapting to match their surroundings, most noticeably taking on coloration reflecting the local environment. Those elves that spend their lives among the short-lived races, on the other hand, often develop a skewed perception of mortality and become morose, the result of watching wave after wave of companions age and die before their eyes.'
  user.save!
end
Race.find_or_create_by!(name: 'Gnome') do |user|
  user.url = 'http://paizo.com/pathfinderRPG/prd/races.html#gnomes'
  user.size = 'small'
  user.speed = 20
  user.description = 'Gnomes trace their lineage back to the mysterious realm of the fey, a place where colors are brighter, the wildlands wilder, and emotions more primal. Unknown forces drove the ancient gnomes from that realm long ago, forcing them to seek refuge in this world; despite this, the gnomes have never completely abandoned their fey roots or adapted to mortal culture. As a result, gnomes are widely regarded by the other races as alien and strange.'
  user.save!
end
Race.find_or_create_by!(name: 'Half-Elf') do |user|
  user.url = 'http://paizo.com/pathfinderRPG/prd/races.html#half-elves'
  user.size = 'medium'
  user.speed = 30
  user.description = 'Elves have long drawn the covetous gazes of other races. Their generous life spans, magical affinity, and inherent grace each contribute to the admiration or bitter envy of their neighbors. Of all their traits, however, none so entrance their human associates as their beauty. Since the two races first came into contact with each other, the humans have held up elves as models of physical perfection, seeing in the fair folk idealized versions of themselves. For their part, many elves find humans attractive despite their comparatively barbaric ways, drawn to the passion and impetuosity with which members of the younger race play out their brief lives. Sometimes this mutual infatuation leads to romantic relationships. Though usually short-lived, even by human standards, these trysts commonly lead to the birth of half-elves, a race descended of two cultures yet inheritor of neither. Half-elves can breed with one another, but even these “pureblood” half-elves tend to be viewed as bastards by humans and elves alike.'
  user.save!
end
Race.find_or_create_by!(name: 'Half-Orc') do |user|
  user.url = 'http://paizo.com/pathfinderRPG/prd/races.html#half-orcs'
  user.size = 'medium'
  user.speed = 30
  user.description = "Half-orcs are monstrosities, their tragic births the result of perversion and violence—or at least, that's how other races see them. It's true that half-orcs are rarely the result of loving unions, and as such are usually forced to grow up hard and fast, constantly fighting for protection or to make names for themselves. Feared, distrusted, and spat upon, half-orcs still consistently manage to surprise their detractors with great deeds and unexpected wisdom—though sometimes it's easier just to crack a few skulls."
  user.save!
end
Race.find_or_create_by!(name: 'Halfling') do |user|
  user.url = 'http://paizo.com/pathfinderRPG/prd/races.html#halflings'
  user.size = 'small'
  user.speed = 20
  user.description = "Optimistic and cheerful by nature, blessed with uncanny luck and driven by a powerful wanderlust, halflings make up for their short stature with an abundance of bravado and curiosity. At once excitable and easy-going, halflings like to keep an even temper and a steady eye on opportunity, and are not as prone as some of the more volatile races to violent or emotional outbursts. Even in the jaws of catastrophe, a halfling almost never loses his sense of humor.  Halflings are inveterate opportunists. Unable to physically defend themselves from the rigors of the world, they know when to bend with the wind and when to hide away. Yet a halfling's curiosity often overwhelms his good sense, leading to poor decisions and narrow escapes.  Though their curiosity drives them to travel and seek new places and experiences, halflings possess a strong sense of house and home, often spending above their means to enhance the comforts of home life."
  user.save!
end
Race.find_or_create_by!(name: 'Human') do |user|
  user.url = 'http://paizo.com/pathfinderRPG/prd/races.html#humans'
  user.size = 'medium'
  user.speed = 30
  user.description = "Humans possess exceptional drive and a great capacity to endure and expand, and as such are currently the dominant race in the world. Their empires and nations are vast, sprawling things, and the citizens of these societies carve names for themselves with the strength of their sword arms and the power of their spells. Humanity is best characterized by its tumultuousness and diversity, and human cultures run the gamut from savage but honorable tribes to decadent, devil-worshiping noble families in the most cosmopolitan cities. Human curiosity and ambition often triumph over their predilection for a sedentary lifestyle, and many leave their homes to explore the innumerable forgotten corners of the world or lead mighty armies to conquer their neighbors, simply because they can."
  user.save!
end
