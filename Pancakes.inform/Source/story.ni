"Pancakes" by Atul Varma

Release along with an interpreter.

[Cover art taken from https://www.flickr.com/photos/kurmanphotos/14136765763]

Release along with cover art ("A stack of pancakes.") and source text.

Include Measured Liquid by Emily Short.

Use mixed liquids.

The kitchen is a room. "You're standing in the open kitchen of your studio apartment. A dark granite counter-top separates you from the rest of your living space; beyond that is a wall-to-wall window through which the sun shines."

when play begins:
	say "Ah, it's a beautiful Saturday morning. The perfect time to make a delicious, relaxing breakfast!"

Inside the kitchen is a closed, openable, fixed in place container called a cupboard. The description of the cupboard is "The cupboard has a dark oaky texture to it; you can't tell whether it's fake or made of real wood. [if the cupboard is closed]A brushed metal handle can be used to open it.[end if]". The initial appearance of the cupboard is "Just above your head, a cupboard is affixed to the wall.".

[For the purposes of our simulation, we're going to treat the pancake mix as a liquid. This also means we don't want the game telling players that liquid containers hold *only* liquids.]

The can't put solids into a fluid container rule response (A) is "[The second noun] hold[s] only liquids and other mixable ingredients."

Inside the cupboard is a Bisquick box. The box is a fluid container. The fluid capacity of the box is 32.0 fl oz. The fluid content of the box is 8.0 fl oz. The liquid of the box is pancake mix. The description of the box is "It is bright yellow with blue text on it. Instructions are printed on the back.".

A thing can be readable.

Understand "read [something readable]" as examining.

The instructions are part of the box. The description of the instructions is "'Combine Bisquick, milk, and an egg to create delicious pancake batter. Pour into a skillet under medium heat and flip when pancakes bubble and bottoms are golden brown.'". The instructions are readable. Understand "directions" as the instructions.

Inside the cupboard is a massive measuring cup. The massive measuring cup is a graduated fluid container. The fluid capacity of the massive measuring cup is 32.0 fl oz. The description of the massive measuring cup is "The massive measuring cup is approximately the size of your head. It is made of thick glass and has the word 'pyrex' written on it in a red font that looks like it's from the 1970s."

Inside the kitchen is a window. The window is scenery. The description of the window is "Through the window you see the gray rooftops of the brick dwellings outside. Above them is a clear blue sky.".

Inside the kitchen is a closed, openable, fixed in place container called a refrigerator. The description of the refrigerator is "The refrigerator is made of shiny brushed metal." Understand "fridge" as refrigerator. The initial appearance of the refrigerator is "Next to the cupboard sits a refrigerator."

Inside the refrigerator is a carton. The carton is a fluid container. The fluid capacity of the carton is 64.0 fl oz. The fluid content of the carton is 4.0 fl oz. The liquid of the carton is milk. The description of the carton is "A half-gallon cardboard carton of milk from the grocery store."

Inside the refrigerator is an egg. The egg is a fluid container. The fluid capacity of the egg is 2.0 fl oz. The fluid content of the egg is 2.0 fl oz. The liquid of the egg is raw egg.

[If we make the egg closed and opaque, the Measured Liquid extension won't describe it as an "egg of raw egg". But we'll need to do a bit of trickery to secretly "open" it just before the game's pouring rules are consulted, so that it can actually be poured.]

The egg is closed and opaque.

Before pouring egg into something:
	now the egg is open.

Last check pouring egg into something:
	Say "You crack the egg open by tapping it on the counter-top.";
	remove the noun from play;
	now the egg shell is in the location.

Definition: a thing is egglike if it is the egg.

Understand the commands "break" and "crack" as something new.

Understand "crack [something egglike] in/into/on/onto [a fluid container]" as pouring it into.
Understand "break [something egglike] in/into/on/onto [a fluid container]" as pouring it into.

The egg shell is a thing. The description of the egg shell is "It is all that remains of your formerly unbroken egg."

Inside the kitchen is a stovetop. The stovetop is a fixed in place device. Understand "stove" and "oven" as the stovetop. The description of the stovetop is "It's a stovetop with a gas burner and a switch to control it. [If switched on]A ring of flames rises just below the burner grate, atop which [is-are the list of things on the burner grate][otherwise]Sitting atop the burner grate [is-are the list of things on the burner grate][end if]." The initial appearance of the stovetop is "Under the cupboard is a stovetop."

[Because the stovetop can't be both a device and a supporter, we need to make the supporter a part of the stovetop: we'll call it the burner grate.]

The burner grate is part of the stovetop.

Definition: a thing is heated if it is on the burner grate and the stovetop is switched on.

Instead of putting the skillet on the stovetop:
	try putting the skillet on the burner grate.

A cast-iron skillet is on the burner grate. The skillet is an open, transparent container. The description of the skillet is "It's a pre-seasoned, cast iron 10-inch skillet. Virtually indestructible, it doubles up as an excellent source of nutritional iron. A heat-resistant silicone handle allows you to wield it under extreme heat." Understand "pan" as the skillet.

Cooking stage is a kind of value.  The cooking stages are goopy, slightly bubbly, rather bubbly, very bubbly, and ridiculously bubbly. 

A thing can be flippable.

The pancake-shaped blob is a flippable thing. The description of the blob is "It is a pancake-shaped blob of pancake batter. It is currently [the cooking stage]." Understand "pancake" as the pancake-shaped blob.

The pancake-shaped blob has a cooking stage. The cooking stage of the pancake-shaped blob is goopy.

Instead of eating the pancake-shaped blob, say "But it's not fully cooked yet!"
Instead of taking the pancake-shaped blob, say "That would be very goopy."
Before printing the name of the pancake-shaped blob: say "[cooking stage] ".

Every turn:
	repeat with item running through flippable things in a heated thing:
		if the cooking stage of the item is ridiculously bubbly:
			say "Smoke emanates from the underside of the [item].";
		otherwise:
			now the cooking stage of the item is the cooking stage after the cooking stage of the item;
			say "The [the printed name of the item] is now [the cooking stage of the item]."

Flipping is an action applying to one thing.
Understand "flip [something flippable]" as flipping.
Understand "turn [something flippable]" as flipping.

Check flipping:
	if the cooking stage of the noun is goopy:
		say "But [the noun] isn't cooked at all!";
		stop the action.

Carry out flipping:
	say "You deftly flip the pancake with the silicone handle of the skillet. After waiting a few moments, you transfer your creation to a plate, pour some syrup on the side, and consume it.";
	if the cooking stage of the noun is slightly bubbly, say "It was pretty good, albeit slightly undercooked.";
	if the cooking stage of the noun is rather bubbly, say "It was ridiculously delicious: perfectly golden brown and crisp on the edges.";
	if the cooking stage of the noun is very bubbly, say "It was quite tasty, albeit slightly burnt in areas.";
	if the cooking stage of the noun is ridiculously bubbly, say "It was burnt as hell.";
	remove the noun from play;
	end the story finally.

Definition: a thing is fluid-receiving:
	if it is the skillet, yes;
	if it is a fluid container, yes;
	no.

Understand "add [a fluid container] in/into/on/onto/to [something fluid-receiving]" as pouring it into.
Understand "put [a fluid container] in/into/on/onto [something fluid-receiving]" as pouring it into.

Check an actor pouring something into the skillet (this is the pouring batter into skillets rule):
	if the liquid poured is pancake batter:
		if the fluid content of the noun is greater than 0.0 fl oz:
			Now the fluid content of the noun is 0.0 fl oz;
			Now the pancake-shaped blob is in the skillet;
			Say "You pour the pancake batter into a pancake-shaped blob on the skillet.";
			stop the action;
	otherwise:
		Say "You should only pour ingredients ready for cooking onto the skillet.";
		stop the action.

the pouring batter into skillets rule is listed after the can't pour two untouched things rule in the check pouring it into rulebook.

Table of Liquids (continued)
liquid	potable	flavor
pancake mix	false	"ew."
raw egg	false	"eww."
milk	true	"It's creamy and refreshingly bland."
milky pancake mix	true	"It's viscous and bland and could use some egg in it."
pancake batter	true	"Nom, it's ready to cook!"
milky raw egg	true	"It's creamy and eggy. Could use some pancake mix."
eggy pancake mix	true	"It's still very powdery. Could use some milk."

Table of Liquid Mixtures (continued)
mix-list	result
{ milk, pancake mix }	milky pancake mix
{ pancake mix, raw egg }	eggy pancake mix
{ milk, raw egg }	milky raw egg
{ milky raw egg, pancake mix }	pancake batter
{ eggy pancake mix, milk }	pancake batter
{ milky pancake mix, raw egg}	pancake batter

Understand "milk" as milky pancake mix.
Understand "milk" as milky raw egg.
Understand "mix" as pancake mix.
Understand "mix" as pancake batter.
Understand "batter" as pancake batter.

Test me with "open cupboard / open fridge / put milk into cup / pour mix into cup / crack egg into cup / pour batter into skillet".
