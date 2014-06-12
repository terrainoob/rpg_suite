Condition.find_or_create_by!(name: 'Bleed') do |c|
  c.description = "A creature that is taking bleed damage takes the listed amount of damage at the beginning of its turn. Bleeding can be stopped by a DC 15 Heal check or through the application of any spell that cures hit point damage (even if the bleed is ability damage). Some bleed effects cause ability damage or even ability drain. Bleed effects do not stack with each other unless they deal different kinds of damage. When two or more bleed effects deal the same kind of damage, take the worse effect. In this case, ability drain is worse than ability damage."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#bleed"
  c.save!
end

Condition.find_or_create_by!(name: 'Blinded') do |c|
  c.description = "The creature cannot see. It takes a –2 penalty to Armor Class, loses its Dexterity bonus to AC (if any), and takes a –4 penalty on most Strength- and Dexterity-based skill checks and on opposed Perception skill checks. All checks and activities that rely on vision (such as reading and Perception checks based on sight) automatically fail. All opponents are considered to have total concealment (50% miss chance) against the blinded character. Blind creatures must make a DC 10 Acrobatics skill check to move faster than half speed. Creatures that fail this check fall prone. Characters who remain blinded for a long time grow accustomed to these drawbacks and can overcome some of them."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#blinded"
  c.save!
end

Condition.find_or_create_by!(name: 'Broken') do |c|
  c.description = "Items that have taken damage in excess of half their total hit points gain the broken condition, meaning they are less effective at their designated task. The broken condition has the following effects, depending upon the item.

    If the item is a weapon, any attacks made with the item suffer a –2 penalty on attack and damage rolls. Such weapons only score a critical hit on a natural 20 and only deal ×2 damage on a confirmed critical hit.
    If the item is a suit of armor or a shield, the bonus it grants to AC is halved, rounding down. Broken armor doubles its armor check penalty on skills.
    If the item is a tool needed for a skill, any skill check made with the item takes a –2 penalty.
    If the item is a wand or staff, it uses up twice as many charges when used.
    If the item does not fit into any of these categories, the broken condition has no effect on its use. Items with the broken condition, regardless of type, are worth 75% of their normal value. If the item is magical, it can only be repaired with a mending or make whole spell cast by a character with a caster level equal to or higher than the item's. Items lose the broken condition if the spell restores the object to half its original hit points or higher. Non-magical items can be repaired in a similar fashion, or through the Craft skill used to create it. Generally speaking, this requires a DC 20 Craft check and 1 hour of work per point of damage to be repaired. Most craftsmen charge one-tenth the item's total cost to repair such damage (more if the item is badly damaged or ruined)."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#broken"
  c.save!
end

Condition.find_or_create_by!(name: 'Confused') do |c|
  c.description = "A confused creature is mentally befuddled and cannot act normally. A confused creature cannot tell the difference between ally and foe, treating all creatures as enemies. Allies wishing to cast a beneficial spell that requires a touch on a confused creature must succeed on a melee touch attack. If a confused creature is attacked, it attacks the creature that last attacked it until that creature is dead or out of sight.

Roll on the following table at the beginning of each confused subject's turn each round to see what the subject does in that round.
d%  Behavior
01–25 Act normally.
26–50 Do nothing but babble incoherently.
51–75 Deal 1d8 points of damage + Str modifier to self with item in hand.
76–100  Attack nearest creature (for this purpose, a familiar counts as part of the subject's self).

A confused creature who can't carry out the indicated action does nothing but babble incoherently. Attackers are not at any special advantage when attacking a confused creature. Any confused creature who is attacked automatically attacks its attackers on its next turn, as long as it is still confused when its turn comes. Note that a confused creature will not make attacks of opportunity against anything that it is not already devoted to attacking (either because of its most recent action or because it has just been attacked)."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#confused"
  c.save!
end

Condition.find_or_create_by!(name: 'Cowering') do |c|
  c.description = "The character is frozen in fear and can take no actions. A cowering character takes a –2 penalty to Armor Class and loses his Dexterity bonus (if any)."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#cowering"
  c.save!
end

Condition.find_or_create_by!(name: 'Dazed') do |c|
  c.description = "The creature is unable to act normally. A dazed creature can take no actions, but has no penalty to AC.  A dazed condition typically lasts 1 round."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#dazed"
  c.save!
end

Condition.find_or_create_by!(name: 'Dazzled') do |c|
  c.description = "The creature is unable to see well because of overstimulation of the eyes. A dazzled creature takes a –1 penalty on attack rolls and sight-based Perception checks."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#dazzled"
  c.save!
end

Condition.find_or_create_by!(name: 'Dead') do |c|
  c.description = "The character's hit points are reduced to a negative amount equal to his Constitution score, his Constitution drops to 0, or he is killed outright by a spell or effect. The character's soul leaves his body. Dead characters cannot benefit from normal or magical healing, but they can be restored to life via magic. A dead body decays normally unless magically preserved, but magic that restores a dead character to life also restores the body either to full health or to its condition at the time of death (depending on the spell or device). Either way, resurrected characters need not worry about rigor mortis, decomposition, and other conditions that affect dead bodies."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#dead"
  c.save!
end

Condition.find_or_create_by!(name: 'Deafened') do |c|
  c.description = "A deafened character cannot hear. He takes a –4 penalty on initiative checks, automatically fails Perception checks based on sound, takes a –4 penalty on opposed Perception checks, and has a 20% chance of spell failure when casting spells with verbal components. Characters who remain deafened for a long time grow accustomed to these drawbacks and can overcome some of them."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#deafened"
  c.save!
end

Condition.find_or_create_by!(name: 'Disabled') do |c|
  c.description = "A character with 0 hit points, or one who has negative hit points but has become stable and conscious, is disabled. A disabled character may take a single move action or standard action each round (but not both, nor can he take full-round actions, but he can still take swift, immediate, and free actions). He moves at half speed. Taking move actions doesn't risk further injury, but performing any standard action (or any other action the GM deems strenuous, including some free actions such as casting a quickened spell) deals 1 point of damage after the completion of the act. Unless the action increased the disabled character's hit points, he is now in negative hit points and dying. A disabled character with negative hit points recovers hit points naturally if he is being helped. Otherwise, each day he can attempt a DC 10 Constitution check after resting for 8 hours, to begin recovering hit points naturally. The character takes a penalty on this roll equal to his negative hit point total. Failing this check causes the character to lose 1 hit point, but this does not cause the character to become unconscious. Once a character makes this check, he continues to heal naturally and is no longer in danger of losing hit points naturally."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#disabled"
  c.save!
end

Condition.find_or_create_by!(name: 'Dying') do |c|
  c.description = "A dying creature is unconscious and near death. Creatures that have negative hit points and have not stabilized are dying. A dying creature can take no actions. On the character's next turn, after being reduced to negative hit points (but not dead), and on all subsequent turns, the character must make a DC 10 Constitution check to become stable. The character takes a penalty on this roll equal to his negative hit point total. A character that is stable does not need to make this check. A natural 20 on this check is an automatic success. If the character fails this check, he loses 1 hit point. If a dying creature has an amount of negative hit points equal to its Constitution score, it dies."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#dying"
  c.save!
end

Condition.find_or_create_by!(name: 'Energy Drained') do |c|
  c.description = "The character gains one or more negative levels, which might become permanent. If the subject has at least as many negative levels as Hit Dice, he dies. See Energy Drain and Negative levels for more information. "
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#energy-drained"
  c.save!
end

Condition.find_or_create_by!(name: 'Entangled') do |c|
  c.description = "The character is ensnared. Being entangled impedes movement, but does not entirely prevent it unless the bonds are anchored to an immobile object or tethered by an opposing force. An entangled creature moves at half speed, cannot run or charge, and takes a –2 penalty on all attack rolls and a –4 penalty to Dexterity. An entangled character who attempts to cast a spell must make a concentration check (DC 15 + spell level) or lose the spell. "
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#entangled"
  c.save!
end

Condition.find_or_create_by!(name: 'Exhausted') do |c|
  c.description = "An exhausted character moves at half speed, cannot run or charge, and takes a –6 penalty to Strength and Dexterity. After 1 hour of complete rest, an exhausted character becomes fatigued. A fatigued character becomes exhausted by doing something else that would normally cause fatigue."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#exhausted"
  c.save!
end

Condition.find_or_create_by!(name: 'Fascinated') do |c|
  c.description = "A fascinated creature is entranced by a supernatural or spell effect. The creature stands or sits quietly, taking no actions other than to pay attention to the fascinating effect, for as long as the effect lasts. It takes a –4 penalty on skill checks made as reactions, such as Perception checks. Any potential threat, such as a hostile creature approaching, allows the fascinated creature a new saving throw against the fascinating effect. Any obvious threat, such as someone drawing a weapon, casting a spell, or aiming a ranged weapon at the fascinated creature, automatically breaks the effect. A fascinated creature's ally may shake it free of the spell as a standard action. "
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#fascinated"
  c.save!
end

Condition.find_or_create_by!(name: 'Fatigued') do |c|
  c.description = "A fatigued character can neither run nor charge and takes a –2 penalty to Strength and Dexterity. Doing anything that would normally cause fatigue causes the fatigued character to become exhausted. After 8 hours of complete rest, fatigued characters are no longer fatigued. "
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#fatigued"
  c.save!
end

Condition.find_or_create_by!(name: 'Flat-Footed') do |c|
  c.description = "A character who has not yet acted during a combat is flat-footed, unable to react normally to the situation. A flat-footed character loses his Dexterity bonus to AC (if any) and cannot make attacks of opportunity. "
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#flat-footed"
  c.save!
end

Condition.find_or_create_by!(name: 'Frightened') do |c|
  c.description = "A frightened creature flees from the source of its fear as best it can. If unable to flee, it may fight. A frightened creature takes a –2 penalty on all attack rolls, saving throws, skill checks, and ability checks. A frightened creature can use special abilities, including spells, to flee; indeed, the creature must use such means if they are the only way to escape.  Frightened is like shaken, except that the creature must flee if possible. Panicked is a more extreme state of fear."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#frightened"
  c.save!
end

Condition.find_or_create_by!(name: 'Grappled') do |c|
  c.description = "A grappled creature is restrained by a creature, trap, or effect. Grappled creatures cannot move and take a –4 penalty to Dexterity. A grappled creature takes a –2 penalty on all attack rolls and combat maneuver checks, except those made to grapple or escape a grapple. In addition, grappled creatures can take no action that requires two hands to perform. A grappled character who attempts to cast a spell or use a spell-like ability must make a concentration check (DC 10 + grappler's CMB + spell level), or lose the spell. Grappled creatures cannot make attacks of opportunity.  A grappled creature cannot use Stealth to hide from the creature grappling it, even if a special ability, such as hide in plain sight, would normally allow it to do so. If a grappled creature becomes invisible, through a spell or other ability, it gains a +2 circumstance bonus on its CMD to avoid being grappled, but receives no other benefit."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#grappled"
  c.save!
end

Condition.find_or_create_by!(name: 'Helpless') do |c|
  c.description = "A helpless character is paralyzed, held, bound, sleeping, unconscious, or otherwise completely at an opponent's mercy. A helpless target is treated as having a Dexterity of 0 (–5 modifier). Melee attacks against a helpless target get a +4 bonus (equivalent to attacking a prone target). Ranged attacks get no special bonus against helpless targets. Rogues can sneak attack helpless targets.  As a full-round action, an enemy can use a melee weapon to deliver a coup de grace to a helpless foe. An enemy can also use a bow or crossbow, provided he is adjacent to the target. The attacker automatically hits and scores a critical hit. (A rogue also gets his sneak attack damage bonus against a helpless foe when delivering a coup de grace.) If the defender survives, he must make a Fortitude save (DC 10 + damage dealt) or die. Delivering a coup de grace provokes attacks of opportunity.  Creatures that are immune to critical hits do not take critical damage, nor do they need to make Fortitude saves to avoid being killed by a coup de grace."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#helpless"
  c.save!
end

Condition.find_or_create_by!(name: 'Incorporeal') do |c|
  c.description = "Creatures with the incorporeal condition do not have a physical body. Incorporeal creatures are immune to all nonmagical attack forms. Incorporeal creatures take half damage (50%) from magic weapons, spells, spell-like effects, and supernatural effects. Incorporeal creatures take full damage from other incorporeal creatures and effects, as well as all force effects. "
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#incorporeal"
  c.save!
end

Condition.find_or_create_by!(name: 'Invisible') do |c|
  c.description = "Invisible creatures are visually undetectable. An invisible creature gains a +2 bonus on attack rolls against sighted opponents, and ignores its opponents' Dexterity bonuses to AC (if any). See Invisibility, under Special Abilities."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#invisible"
  c.save!
end

Condition.find_or_create_by!(name: 'Nauseated') do |c|
  c.description = "Creatures with the nauseated condition experience stomach distress. Nauseated creatures are unable to attack, cast spells, concentrate on spells, or do anything else requiring attention. The only action such a character can take is a single move actions per turn."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#nauseated"
  c.save!
end

Condition.find_or_create_by!(name: 'Panicked') do |c|
  c.description = "A panicked creature must drop anything it holds and flee at top speed from the source of its fear, as well as any other dangers it encounters, along a random path. It can't take any other actions. In addition, the creature takes a –2 penalty on all saving throws, skill checks, and ability checks. If cornered, a panicked creature cowers and does not attack, typically using the total defense action in combat. A panicked creature can use special abilities, including spells, to flee; indeed, the creature must use such means if they are the only way to escape.  Panicked is a more extreme state of fear than shaken or frightened."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#panicked"
  c.save!
end

Condition.find_or_create_by!(name: 'Paralyzed') do |c|
  c.description = "A paralyzed character is frozen in place and unable to move or act. A paralyzed character has effective Dexterity and Strength scores of 0 and is helpless, but can take purely mental actions. A winged creature flying in the air at the time that it becomes paralyzed cannot flap its wings and falls. A paralyzed swimmer can't swim and may drown. A creature can move through a space occupied by a paralyzed creature—ally or not. Each square occupied by a paralyzed creature, however, counts as 2 squares to move through."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#paralyzed"
  c.save!
end

Condition.find_or_create_by!(name: 'Petrified') do |c|
  c.description = "A petrified character has been turned to stone and is considered unconscious. If a petrified character cracks or breaks, but the broken pieces are joined with the body as he returns to flesh, he is unharmed. If the character's petrified body is incomplete when it returns to flesh, the body is likewise incomplete and there is some amount of permanent hit point loss and/or debilitation."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#petrified"
  c.save!
end

Condition.find_or_create_by!(name: 'Pinned') do |c|
  c.description = "A pinned creature is tightly bound and can take few actions. A pinned creature cannot move and is denied its Dexterity bonus.. A pinned character also takes an additional –4 penalty to his Armor Class. A pinned creature is limited in the actions that it can take. A pinned creature can always attempt to free itself, usually through a combat maneuver check or Escape Artist check. A pinned creature can take verbal and mental actions, but cannot cast any spells that require a somatic or material component. A pinned character who attempts to cast a spell or use a spell-like ability must make a concentration check (DC 10 + grappler's CMB + spell level) or lose the spell. Pinned is a more severe version of grappled, and their effects do not stack."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#pinned"
  c.save!
end

Condition.find_or_create_by!(name: 'Prone') do |c|
  c.description = "The character is lying on the ground. A prone attacker has a –4 penalty on melee attack rolls and cannot use a ranged weapon (except for a crossbow). A prone defender gains a +4 bonus to Armor Class against ranged attacks, but takes a –4 penalty to AC against melee attacks.  Standing up is a move-equivalent action that provokes an attack of opportunity."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#prone"
  c.save!
end

Condition.find_or_create_by!(name: 'Shaken') do |c|
  c.description = "A shaken character takes a –2 penalty on attack rolls, saving throws, skill checks, and ability checks. Shaken is a less severe state of fear than frightened or panicked."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#shaken"
  c.save!
end

Condition.find_or_create_by!(name: 'Sickened') do |c|
  c.description = "The character takes a –2 penalty on all attack rolls, weapon damage rolls, saving throws, skill checks, and ability checks."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#sickened"
  c.save!
end

Condition.find_or_create_by!(name: 'Stable') do |c|
  c.description = "A character who was dying but who has stopped losing hit points each round and still has negative hit points is stable. The character is no longer dying, but is still unconscious. If the character has become stable because of aid from another character (such as a Heal check or magical healing), then the character no longer loses hit points. The character can make a DC 10 Constitution check each hour to become conscious and disabled (even though his hit points are still negative). The character takes a penalty on this roll equal to his negative hit point total.  If a character has become stable on his own and hasn't had help, he is still at risk of losing hit points. Each hour he can make a Constitution check to become stable (as a character that has received aid), but each failed check causes him to lose 1 hit point."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#stable"
  c.save!
end

Condition.find_or_create_by!(name: 'Staggered') do |c|
  c.description = "A staggered creature may take a single move action or standard action each round (but not both, nor can he take full-round actions). A staggered creature can still take free, swift and immediate actions. A creature with nonlethal damage exactly equal to its current hit points gains the staggered condition."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#staggered"
  c.save!
end

Condition.find_or_create_by!(name: 'Stunned') do |c|
  c.description = "A stunned creature drops everything held, can't take actions, takes a –2 penalty to AC, and loses its Dexterity bonus to AC (if any)."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#stunned"
  c.save!
end

Condition.find_or_create_by!(name: 'Unconscious') do |c|
  c.description = "Unconscious creatures are knocked out and helpless. Unconsciousness can result from having negative hit points (but not more than the creature's Constitution score), or from nonlethal damage in excess of current hit points."
  c.url = "http://paizo.com/pathfinderRPG/prd/glossary.html#unconscious"
  c.save!
end

