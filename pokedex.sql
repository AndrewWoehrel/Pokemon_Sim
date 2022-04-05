BEGIN TRANSACTION;

DROP TABLE IF EXISTS pokemon;

CREATE TABLE pokemon (
	pokemon_id_number int NOT NULL DEFAULT,
	pokemon_name varchar NOT NULL,
	pokemon_type varchar NOT NULL,
	pokemon_HP float NOT NULL,
	pokemon_Attack float NOT NULL,
	pokemon_Speed int NOT NULL,
	pokemon_Move String NOT NULL,
	description String NOT NULL,
	
	CONSTRAINT PK_pokemon PRIMARY KEY (pokemon_id_number),
	
);

INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('001', 'Bulbasaur', 'Grass/Poison', '45.0', '5.0', '45', 'Vine Whip', 'Seed Pokemon - A strange seed was planted on its back at birth. The plant sprouts and grows with this POKéMON.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('002', 'Ivysaur', 'Grass/Poison', '80.0', '12.0', '60', 'Razor Leaf', 'Seed Pokemon - When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('003', 'Venusaur', 'Grass/Poison', '100.0', '22.0', '80','Solar Beam', 'Seed Pokemon - The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('004', 'Charmander', 'Fire', '40.0', '7.0', '65','Ember', 'Lizard Pokemon - Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('005', 'Charmeleon', 'Fire', '60.0', '13.0', '80','Fire Spin', 'Flame Pokemon - When it swings its burning tail, it elevates the temperature to unbearably high levels.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('006', 'Charizard', 'Fire/Flying', '80.0', '25.0', '100', 'Flamethrower', 'Flame Pokemon - Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('007', 'Squirtle', 'Water', '60.0', '5.0', '40','Bubble', 'Tiny Turtle Pokemon - After birth, its back swells and hardens into a shell. Powerfully sprays foam from its mouth.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('008', 'Wartortle', 'Water', '90.0', '12.0', '50','Bubble Beam', 'Turtle Pokemon - Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('009', 'Blastoise', 'Water', '120.0', '20.0', '70', 'Hydro Pump', 'Shellfish Pokemon - A brutal POKéMON with pressurized water jets on its shell. They are used for high speed tackles.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('010', 'Caterpie', 'Bug', '25.0', '2.0', '30', 'String Shot', 'Worm Pokemon - Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('011', 'Metapod', 'Bug', '80.0', '3.0', '35', 'Harden', 'Cocoon Pokemon - This POKéMON is vulnerable to attack while its shell is soft, exposing its weak and tender body.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('012', 'Butterfree', 'Bug/Flying', '90.0', '15.0', '80', 'Bug Buzz', 'Butterfly Pokemon - In battle, it flaps its wings at high speed to release highly toxic dust into the air.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('013', 'Weedle', 'Bug/Poison', '20.0', '5.0', '40', 'Poison Sting', 'Hairy Bug Pokemon - Often found in forests, eating leaves. It has a sharp venomous stinger on its head.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('014', 'Kakuna', 'Bug/Poison', '45.0', '6.0', '45', 'Harden', 'Cocoon Pokemon - Almost incapable of moving, this POKéMON can only harden its shell to protect itself from predators.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('015', 'Beedrill', 'Bug/Poison', '80.0', '18.0', '90', 'Fell Stinger', 'Poison Bee Pokemon - Flies at high speed and attacks using its large venomous stingers on its forelegs and tail.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('016', 'Pidgey', 'Normal/Flying', '30.0', '6.0', '50', 'Gust', 'Tiny Bird Pokemon - A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('017', 'Pidgeotto', 'Normal/Flying', '50.0', '15.0', '60', 'Whirlwind', 'Bird Pokemon - Very protective of its sprawling territorial area, this POKéMON will fiercely peck at any intruder.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('018', 'Pidgeot', 'Normal/Flying', '80.0', '18.0', '90', 'Hurricane', 'Bird Pokemon - When hunting, it skims the surface of water at high speed to pick off unwary prey such as MAGIKARP.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('019', 'Rattata', 'Normal', '30.0', '10.0', '70', 'Super Fang', 'Mouse Pokemon - Bites anything when it attacks. Small and very quick, it is a common sight in many places.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('020', 'Raticate', 'Normal', '70.0', '19.0', '90', 'Hyper Fang', 'Mouse Pokemon - It uses its whiskers to maintain its balance. It apparently slows down if they are cut off.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('021', 'Spearow', 'Normal/Flying', '40.0', '8.0', '40', 'Peck', 'Tiny Bird Pokemon - Eats bugs in grassy areas. It has to flap its short wings at high speed to stay airborne.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('022', 'Fearow', 'Normal/Flying', '90.0', '15.0', '100', 'Drill Peck', 'Beak Pokemon - With its huge and magnificent wings, it can keep aloft without ever having to land for rest.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('023', 'Ekans', 'Poison', '35.0', '9.0', '55', 'Constrict', 'Snake Pokemon - Moves silently and stealthily. Eats the eggs of birds, such as PIDGEY and SPEAROW, whole.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('024', 'Arbok', 'Poison', '70.0', '15.0', '90', 'Glare', 'Cobra Pokemon - It is rumored that the ferocious warning markings on its belly differ from area to area.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('025', 'Pikachu', 'Electric', '50.0', '16.0', '90', 'Thunder Shock', 'Mouse Pokemon - When several of these POKéMON gather, their electricity could build and cause lightning storms.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('026', 'Raichu', 'Electric', '75.0', '18.0', '80', 'Thunderbolt', 'Mouse Pokemon - Its long tail serves as a ground to protect itself from its own high voltage power.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('027', 'Sandshrew', 'Ground', '50.0', '8.0', '40', 'Scratch', 'Mouse Pokemon - Burrows deep underground in arid locations far from water. It only emerges to hunt for food.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('028', 'Sandslash', 'Ground', '80.0', '19.0', '50', 'Slash', 'Mouse Pokemon - Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('029', 'Nidoran (F)', 'Poison', '35.0', '6.0', '50', 'Tail Whip', 'Poison Pin Pokemon - Although small, its venomous barbs render this POKéMON dangerous. The female has smaller horns.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('030', 'Nidorina', 'Poison', '70.0', '14.0', '60', 'Double Kick', 'Poison Pin Pokemon - The female’s horn develops slowly. Prefers physical attacks such as clawing and biting.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('031', 'Nidoqueen', 'Ground/Poison', '100.0', '19.0', '65', 'Fissure', 'Drill Pokemon - Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('032', 'Nidoran (M)', 'Poison', '30.0', '8.0', '50', 'Tackle', 'Poison Pin Pokemon - Stiffens its ears to sense danger. The larger its horns, the more powerful its secreted venom.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('033', 'Nidorino', 'Poison', '65.0', '12.0', '60', 'Body Slam', 'Poison Pin Pokemon - An aggressive POKéMON that is quick to attack. The horn on its head secretes a powerful venom.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('034', 'Nidoking', 'Ground/Poison', '90.0', '18.0', '65', 'Megahorn', 'Drill Pokemon - It uses its powerful tail in battle to smash, constrict, then break the prey’s bones.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('035', 'Clefairy', 'Normal', '70.0', '10.0', '60', 'Metronome', 'Fairy Pokemon - Its magical and cute appeal has many admirers. It is rare and found only in certain areas.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('036', 'Clefable', 'Normal', '95.0', '15.0', '65', 'Dazzling Gleam', 'Fairy Pokemon - A timid fairy POKéMON that is rarely seen. It will run and hide the moment it senses people.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('037', 'Vulpix', 'Fire', '40.0', '12.0', '65', 'Fire Lash', 'Fox Pokemon - At the time of birth, it has just one tail. The tail splits from its tip as it grows older.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('038', 'Ninetales', 'Fire', '80.0', '16.0', '80', 'Will - o - Wisp', 'Fox Pokemon - Very smart and very vengeful. Grabbing one of its many tails could result in a 1000-year curse.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('039', 'Jigglypuff', 'Normal', '115.0', '5.0', '50', 'Pound', 'Balloon Pokemon - When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('040', 'Wigglytuff', 'Normal', '140.0', '10.0', '60', 'Bounce', 'Balloon Pokemon - The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('041', 'Zubat', 'Poison/Flying', '40.0', '5.0', '55', 'Leech Life', 'Bat Pokemon - Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('042', 'Golbat', 'Poison/Flying', '75.0', '15.0', '70', 'Wing Attack', 'Bat Pokemon - Once it strikes, it will not stop draining energy from the victim even if it gets too heavy to fly.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('043', 'Oddish', 'Grass/Poison', '45.0', '4.0', '30', 'Absorb', 'Weed Pokemon - During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('044', 'Gloom', 'Grass/Poison', '60.0', '10.0', '70', 'Mega Drain', 'Weed Pokemon - The fluid that oozes from its mouth isn’t drool. It is a nectar that is used to attract prey.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('045', 'Vileplume', 'Grass/Poison', '80.0', '18.0', '90', 'Giga Drain', 'Flower Pokemon - The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('046', 'Paras', 'Bug/Grass', '35.0', '7.0', '25', 'Stun Spore', 'Mushroom Pokemon - Burrows to suck tree roots. The mushrooms on its back grow by drawing nutrients from the bug host.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('047', 'Parasect', 'Bug/Grass', '60.0', '10.0', '30', 'Spore', 'Mushroom Pokemon - A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('048', 'Venonat', 'Bug/Poison', '60.0', '5.0', '50', 'Poison Powder', 'Insect Pokemon - Lives in the shadows of tall trees where it eats insects. It is attracted by light at night.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('049', 'Venomoth', 'Bug/Poison', '80.0', '17.0', '70', 'Toxic', 'Poison Moth Pokemon - The dust-like scales covering its wings are color coded to indicate the kinds of poison it has.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('050', 'Diglett', 'Ground', '20.0', '10.0', '90', 'Dig', 'Mole Pokemon - Lives about one yard underground where it feeds on plant roots. It sometimes appears above ground.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('051', 'Dugtrio', 'Ground', '50.0', '15.0', '120', 'Magnitude', 'Mole Pokemon - A team of DIGLETT triplets. It triggers huge earthquakes by burrowing 60 miles underground.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('052', 'Meowth', 'Normal', '40.0', '10.0', '90', 'Payday', 'Scratch Cat Pokemon - Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('053', 'Persian', 'Normal', '60.0', '15.0', '100', 'Payback', 'Classy Cat Pokemon - Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('054', 'Psyduck', 'Water', '50.0', '4.0', '55', 'Confusion', 'Duck Pokemon - While lulling its enemies with its vacant look, this wily POKéMON will use psychokinetic powers.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('055', 'Golduck', 'Water', '80.0', '13.0', '80', 'Aqua Tail', 'Duck Pokemon - Often seen swimming elegantly by lake shores. It is often mistaken for the Japanese monster, Kappa.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('056', 'Mankey', 'Fighting', '40.0', '11.0', '70', 'Fury Swipes', 'Pig Monkey Pokemon - Extremely quick to anger. It could be docile one moment then thrashing away the next instant.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('057', 'Primeape', 'Fighting', '80.0', '16.0', '80', 'Thrash', 'Pig Monkey Pokemon - Always furious and tenacious to boot. It will not abandon chasing its quarry until it is caught.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('058', 'Growlithe', 'Fire', '55.0', '10.0', '60', 'Bite', 'Puppy Pokemon - Very protective of its territory. It will bark and bite to repel intruders from its space.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('059', 'Arcanine', 'Fire', '90.0', '20.0', '95', 'Flare Blitz', 'Legendary Pokemon - A POKéMON that has been admired since the past for its beauty. It runs agilely as if on wings.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('060', 'Poliwag', 'Water', '40.0', '5.0', '90', 'Water Sport', 'Tadpole Pokemon - Its newly grown legs prevent it from running. It appears to prefer swimming than trying to stand.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('061', 'Poliwhirl', 'Water', '70.0', '10.0', '95', 'Whirlpool', 'Tadpole Pokemon - Capable of living in or out of water. When out of water, it sweats to keep its body slimy.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('062', 'Poliwrath', 'Water/Fighting', '90.0', '16.0', '100', 'Submission', 'Tadpole Pokemon - An adept swimmer at both the front crawl and breast stroke. Easily overtakes the best human swimmers.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('063', 'Abra', 'Psychic', '25.0', '1.0', '90', 'Teleport', 'Psi Pokemon - Using its ability to read minds, it will identify impending danger and TELEPORT to safety.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('064', 'Kadabra', 'Psychic', '50.0', '19.0', '105', 'Future Sight', 'Psi Pokemon - It emits special alpha waves from its body that induce headaches just by being close by.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('065', 'Alakazam', 'Psychic', '70.0', '25.0', '120', 'Psychic', 'Psi Pokemon - Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5,000.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('066', 'Machop', 'Fighting', '50.0', '12.0', '35', 'Karate Chop', 'Superpower Pokemon - Loves to build its muscles. It trains in all styles of martial arts to become even stronger.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('067', 'Machoke', 'Fighting', '70.0', '15.0', '45', 'Seismic Toss', 'Superpower Pokemon - Its muscular body is so powerful, it must wear a power save belt to be able to regulate its motions.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('068', 'Machamp', 'Fighting', '100.0', '21.0', '55', 'Superpower', 'Superpower Pokemon - Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('069', 'Bellsprout', 'Grass/Poison', '50.0', '9.0', '40', 'Leech Seed', 'Flower Pokemon - A carnivorous POKéMON that traps and eats bugs. It uses its root feet to soak up needed moisture.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('070', 'Weepinbell', 'Grass/Poison', '60.0', '15.0', '55', 'Leaf Storm', 'Flycatcher Pokemon - It spits out POISONPOWDER to immobilize the enemy and then finishes it with a spray of ACID.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('071', 'Victreebell', 'Grass/Poison', '80.0', '18.0', '70', 'Poison Jab', 'Flycatcher Pokemon - Said to live in huge colonies deep in jungles, although no one has ever returned from there.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('072', 'Tentacool', 'Water/Poison', '40.0', '8.0', '70', 'Wrap', 'Jellyfish Pokemon - Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('073', 'Tentacruel', 'Water/Poison', '80.0', '15.0', '100', 'Coil', 'Jellyfish Pokemon - The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('074', 'Geodude', 'Ground/Rock', '60.0', '10.0', '20', 'Rock Throw', 'Rock Pokemon - Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('075', 'Graveler', 'Ground/Rock', '90.0', '15.0', '30', 'Rollout', 'Rock Pokemon - Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('076', 'Golem', 'Ground/Rock', '130.0', '20.0', '30', 'Stone Edge', 'Megaton Pokemon - Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without damage.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('077', 'Ponyta', 'Fire', '50.0', '10.0', '90', 'Stomp', 'Fire Horse Pokemon - Its hooves are 10 times harder than diamonds. It can trample anything completely flat in little time.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('078', 'Rapidash', 'Fire', '65.0', '17.0', '105', 'Incinerate', 'Fire Horse Pokemon - Very competitive, this POKéMON will chase anything that moves fast in the hopes of racing it.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('079', 'Slowpoke', 'Water/Psychic', '90.0', '6.0', '15', 'Headbutt', 'Dopey Pokemon - Incredibly slow and dopey. It takes 5 seconds for it to feel pain when under attack.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('080', 'Slowbro', 'Water/Psychic', '150.0', '15.0', '30', 'Slack Off', 'Hermit Crab Pokemon - The SHELLDER that is latched onto SLOWPOKE’s tail is said to feed on the host’s left over scraps.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('081', 'Magnemite', 'Electric', '50.0', '12.0', '45', 'Thunder Wave', 'Magnet Pokemon - Uses anti-gravity to stay suspended. Appears without warning and uses THUNDER WAVE and similar moves.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('082', 'Magneton', 'Electric', '70.0', '16.0', '60', 'Shock Wave', 'Magnet Pokemon - Formed by several MAGNEMITEs linked together. They frequently appear when sunspots flare up.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('083', 'Farfetchd', 'Flying', '50.0', '8.0', '70', 'Leaf Blade', 'Wild Duck Pokemon - The sprig of green onions it holds is its weapon. It is used much like a metal sword.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('084', 'Doduo', 'Flying/Normal', '50.0', '7.0, '75', 'Double Hit', 'Twin Bird Pokemon - A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('085', 'Dodrio', 'Flying/Normal', '70.0', '14.0', '90', 'Tri-Attack', 'Triple Bird Pokemon - Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('086', 'Seel', 'Water/Ice', '65.0', '10.0', '45', 'Icy Wind', 'Sea Lion Pokemon - The protruding horn on its head is very hard. It is used for bashing through thick ice.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('087', 'Dewgong', 'Water/Ice', '90.0', '14.0', '70', 'Ice Beam', 'Sea Lion Pokemon - Stores thermal energy in its body. Swims at a steady 8 knots even in intensely cold waters.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('088', 'Grimer', 'Poison', '80.0', '13.0', '70', 'Sludge', 'Sludge Pokemon - Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('089', 'Muk', 'Poison', '120.0', '16.0', '75', 'Sludge Wave', 'Sludge Pokemon - Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('090', 'Shellder', 'Water', '100.0', '2.0', '40', 'Withdraw', 'Bivalve Pokemon - Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('091', 'Cloyster', 'Water/Ice', '180.0', '10.0', '70', 'Shell Smash', 'Bivalve Pokemon - When attacked, it launches its horns in quick volleys. Its innards have never been seen.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('092', 'Gastly', 'Poison/Ghost', '30.0', '10.0', '80', 'Confuse Ray', 'Gas Pokemon - Almost invisible, this gaseous POKéMON cloaks the target and puts it to sleep without notice.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('093', 'Haunter', 'Poison/Ghost', '50.0', '20.0', '95', 'Shadow Claw', 'Gas Pokemon - Because of its ability to slip through block walls, it is said to be from another dimension.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('094', 'Gengar', 'Poison/Ghost', '55.0', '23.0', '120', 'Shadow Ball', 'Shadow Pokemon - Under a full moon, this POKéMON likes to mimic the shadows of people and laugh at their fright.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('095', 'Onix', 'Ground/Rock', '80.0', '10.0', '70', 'Rock Slide', 'Rock Snake Pokemon - As it grows, the stone portions of its body harden to become similar to a diamond, but colored black.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('096', 'Drowzee', 'Psychic', '60.0', '9.0', '40', 'Dream Eater', 'Hypnosis Pokemon - Puts enemies to sleep then eats their dreams. Occasionally gets sick from eating bad dreams.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('097', 'Hypno', 'Psychic', '85.0', '14.0', '65', 'Hypnosis', 'Hypnosis Pokemon - When it locks eyes with an enemy, it will use a mix of PSI moves such as HYPNOSIS and CONFUSION.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('098', 'Krabby', 'Water', '50.0', '12.0', '65', 'Crush Claw', 'River Crab Pokemon - Its pincers are not only powerful weapons, they are used for balance when walking sideways.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('099', 'Kingler', 'Water', '70.0', '16.0', '75', 'Crabhammer', 'Pincer Pokemon - The large pincer has 10000 hp of crushing power. However, its huge size makes it unwieldy to use.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('100', 'Voltorb', 'Electric', '50.0', '12.0', '100', 'Volt Switch', 'Ball Pokemon - Usually found in power plants. Easily mistaken for a POKé BALL, they have zapped many people.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('101', 'Electrode', 'Electric', '70.0', '15.0', '120', 'Sonic Boom', 'Ball Pokemon - It stores electric energy under very high pressure. It often explodes with little or no provocation.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('102', 'Exeggcute', 'Grass/Psychic', '60.0', '8.0', '40', 'Egg Bomb', 'Egg Pokemon - Often mistaken for eggs. When disturbed, they quickly gather and attack in swarms.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('103', 'Exeggutor', 'Grass/Psychic', '95.0', '16.0', '60', 'Energy Ball', 'Coconut Pokemon - Legend has it that on rare occasions, one of its heads will drop off and continue on as an EXEGGCUTE.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('104', 'Cubone', 'Ground', '60.0', '8.0', '40', 'Skull Bash', Lonely Pokemon - Because it never removes its skull helmet, no one has ever seen this POKéMON’s real face.);
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('105', 'Marowak', 'Ground', '80.0', '16.0', '45', 'Bone Rush', 'Bone Keeper Pokemon - The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to KO targets.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('106', 'Hitmonlee', 'Fighting', '80.0', '19.0', '80', 'Mega Kick', 'Kicking Pokemon - When in a hurry, its legs lengthen progressively. It runs smoothly with extra long, loping strides.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('107', 'Hitmonchan', 'Fighting', '70.0', '20.0', '70', 'Bullet Punch', 'Punching Pokemon - While apparently doing nothing, it fires punches in lightning fast volleys that are impossible to see.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('108', 'Lickitung', 'Normal', '90.0', '15.0', '30', 'Lick', 'Licking Pokemon - Its tongue can be extended like a chameleon’s. It leaves a tingling sensation when it licks enemies.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('109', 'Koffing', 'Poison', '80.0', '12.0', '35', 'Poison Smog', 'Poison Gas Pokemon - Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('110', 'Weezing', 'Poison', '100.0', '16.0', '60', 'Sludge Bomb', 'Poison Gas Pokemon - Where two kinds of poison gases meet, 2 KOFFINGs can fuse into a WEEZING over many years.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('111', 'Rhyhorn', 'Ground/Rock', '80.0', '11.0', '25', 'Horn Attack', 'Spikes Pokemon - Its massive bones are 1000 times harder than human bones. It can easily knock a trailer flying.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('112', 'Rhydon', 'Ground/Rock', '120.0', '19.0', '40', 'Earthquake', 'Drill Pokemon - Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('113', 'Chansey', 'Normal', '200.0', '1.0', '50', 'Softboiled', 'Egg Pokemon - A rare and elusive POKéMON that is said to bring happiness to those who manage to get it.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('114', 'Tangela', 'Grass', '65.0', '8.0', '60', 'Sleep Powder', 'Vine Pokemon - The whole body is swathed with wide vines that are similar to seaweed. Its vines shake as it walks.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('115', 'Kangaskhan', 'Normal', '130.0', '15.0', '90', 'Mega Punch', 'Parent Pokemon - The infant rarely ventures out of its mother’s protective pouch until it is 3 years old.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('116', 'Horsea', 'Water', '30.0', '10.0', '60', 'Aqua Jet', 'Dragon Pokemon - Known to shoot down flying bugs with precision blasts of ink from the surface of the water.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('117', 'Seadra', 'Water', '55.0', '14.0', '85', 'Liquidation', 'Dragon Pokemon - Capable of swimming backwards by rapidly flapping its wing-like pectoral fins and stout tail.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('118', 'Goldeen', 'Water', '45.0', '10.0', '60', 'Water Gun', 'Goldfish Pokemon - Its tail fin billows like an elegant ballroom dress, giving it the nickname of the Water Queen.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('119', 'Seaking', 'Water', '80.0', '14.0', '70', 'Waterfall', 'Goldfish Pokemon - In the autumn spawning season, they can be seen swimming powerfully up rivers and creeks.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('120', 'Staryu', 'Water', '40.0', '10.0', '70', 'Water Pulse', 'Star Shape Pokemon - An enigmatic POKéMON that can effortlessly regenerate any appendage it loses in battle.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('121', 'Starmie', 'Water/Psychic', '80.0', '15.0', '115', 'Psyshock', 'Mysterious Pokemon - Its central core glows with the seven colors of the rainbow. Some people value the core as a gem.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('122', 'Mr. Mime', 'Psychic', '40.0', '14.0', '90', 'Doubleslap', 'Barrier Pokemon - If interrupted while it is miming, it will slap around the offender with its broad hands.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('123', 'Scyther', 'Bug/Flying', '70.0', '15.0', '105', 'Fury Cutter', 'Mantis Pokemon - With ninja-like agility and speed, it can create the illusion that there is more than one.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('124', 'Jynx', 'Ice/Psychic', '65.0', '11.0', '95', 'Ice Punch', 'Human Shape Pokemon - It seductively wiggles its hips as it walks. It can cause people to dance in unison with it.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('125', 'Electabuzz', 'Electric', '65.0', '13.0', '105', 'Thunder Punch', 'Electric Pokemon - Normally found near power plants, they can wander away and cause major blackouts in cities.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('126', 'Magmar', 'Fire', '80.0', '12.0', '90', 'Fire Punch', 'Spitfire Pokemon - Its body always burns with an orange glow that enables it to hide perfectly among flames.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('127', 'Pinsir', 'Bug', '65.0', '16.0', '90', 'Cut', 'Stag Beetle Pokemon - If it fails to crush the victim in its pincers, it will swing it around and toss it hard.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('128', 'Tauros', 'Normal', '100.0', '18.0', '110', 'Giga Impact', 'Wild Bull Pokemon - When it targets an enemy, it charges furiously while whipping its body with its long tails.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('129', 'Magikarp', 'Water', '20.0', '1.0', '80', 'Splash', 'Fish Pokemon - In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('130', 'Gyarados', 'Water/Flying', '100.0', '20.0', '80', 'Ice Fang', 'Atrocious Pokemon - Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('131', 'Lapras', 'Water/Ice', '140.0', '15.0', '60', 'Perish Song', 'Transport Pokemon - A POKéMON that has been overhunted almost to extinction. It can ferry people across the water.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('132', 'Ditto', 'Normal', '100.0', '10.0', '50', 'Transform', 'Transform Pokemon - Capable of copying an enemy’s genetic code to instantly transform itself into a duplicate of the enemy.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('133', 'Eevee', 'Normal', '50.0', '11.0', '100', 'Quick Attack', 'Evolution Pokemon - Its genetic code is irregular. It may mutate if it is exposed to radiation from element STONEs.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('134', 'Vaporeon', 'Water', '140.0', '16.0', '100', 'Aurora Beam', 'Bubble Jet Pokemon - Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaid’s.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('135', 'Jolteon', 'Electric', '70.0', '17.0', '130', 'Thunder', 'Lightning Pokemon - It accumulates negative ions in the atmosphere to blast out 10000-volt lightning bolts.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('136', 'Flareon', 'Fire', '70.0', '18.0', '100', 'Fire Fang', 'Flame Pokemon - When storing thermal energy in its body, its temperature could soar to over 1600 degrees.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('137', 'Porygon', 'Normal', '80.0', '20.0', '70', 'Hyper Beam', 'Virtual Pokemon - A POKéMON that consists entirely of programming code. Capable of moving freely in cyberspace.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('138', 'Omanyte', 'Water/Rock', '35.0', '9.0', '35', 'Water Gun', 'Spiral Pokemon - Although long extinct, in rare cases, it can be genetically resurrected from fossils.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('139', 'Omastar', 'Water/Rock', '100.0', '12.0', '55', 'Waterfall', 'Spiral Pokemon - A prehistoric POKéMON that died out when its heavy shell made it impossible to catch prey.')
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('140', 'Kabuto', 'Water/Rock', '30.0', '10.0', '55', 'Bubble', 'Shellfish Pokemon - A POKéMON that was resurrected from a fossil found in what was once the ocean floor eons ago.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('141', 'Kabutops', 'Water/Rock', '60.0', '13.0', '80', 'Razor Shell', 'Shellfish Pokemon - Its sleek shape is perfect for swimming. It slashes prey with its claws and drains the body fluids.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('142', 'Aerodactyl', 'Rock/Flying', '80.0', '14.0', '130', 'Ancient Power', 'Fossil Pokemon - A ferocious, prehistoric POKéMON that goes for the enemy’s throat with its serrated saw-like fangs.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('143', 'Snorlax', 'Normal', '180.0', '15.0', '85', 'Snore', 'Sleeping Pokemon - Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('144', 'Articuno', 'Ice/Flying', '90.0', '20.0', '85', 'Blizzard', 'Freeze Pokemon - A legendary bird POKéMON that is said to appear to doomed people who are lost in icy mountains.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('145', 'Zapdos', 'Electric/Flying', '80.0', '19.0', '100', 'Electro Ball', 'Electric Pokemon - A legendary bird POKéMON that is said to appear from clouds while dropping enormous lightning bolts.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('146', 'Moltres', 'Fire/Flying', '70.0', '21.0', '90', 'Fire Blast', 'Flame Pokemon - Known as the legendary bird of fire. Every flap of its wings creates a dazzling flash of flames.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, Shellfish Pokemon - A POKéMON that was resurrected from a fossil found in what was once the ocean floor eons ago.description)
VALUES ('147', 'Dratini', 'Dragon', '40.0', '10.0', '50', 'Twister', 'Dragon Pokemon - Long considered a mythical POKéMON until recently when a small colony was found living underwater.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('148', 'Dragonair', 'Dragon', '60.0', '15.0', '65', 'Dragon Rage', 'Dragon Pokemon - A mystical POKéMON that exudes a gentle aura. Has the ability to change climate conditions.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('149', 'Dragonite', 'Dragon', '100.0', '25.0', '95', 'Outrage', 'Dragon Pokemon - An extremely rarely seen marine POKéMON. Its intelligence is said to match that of humans.');
INSERT INTO pokemon (pokemon_id_number, pokemon_name, pokemon_type, pokemon_HP, pokemon_Attack, pokemon_Speed, pokemon_Move, description)
VALUES ('150', 'Mewtwo', 'Psychic', '100.0', '30.0', '100', 'Psystrike', 'Genetic Pokemon - It was created by a scientist after years of horrific gene splicing and DNA engineering experiments.');

COMMIT;
