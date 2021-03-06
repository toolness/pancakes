"Pancakes" by Atul Varma

Release along with an interpreter.

The story creation year is 2015. The release number is 2.

Release along with cover art ("A stack of pancakes."), a "Pancakes" website, and source text.

Include Measured Liquid by Emily Short. Use mixed liquids.

When play begins, say "Ah, it's a beautiful Saturday morning. The perfect time to make a delicious, relaxing breakfast!"

The kitchen is a room. "You're standing in the open kitchen of your studio apartment. A dark granite counter-top separates you from the rest of your living space; beyond that is a wall-to-wall window through which the sun shines."

Part 1 - The Cupboard

Inside the kitchen is a closed, openable, fixed in place container called a cupboard. The description of the cupboard is "The cupboard has a dark oaky texture to it; you can't tell whether it's fake or made of real wood. [if the cupboard is closed]A brushed metal handle can be used to open it.[end if]". The initial appearance of the cupboard is "Just above your head, a cupboard is affixed to the wall.".

Inside the cupboard is a massive measuring cup. The massive measuring cup is a graduated fluid container. The fluid capacity of the massive measuring cup is 32.0 fl oz. The description of the massive measuring cup is "The massive measuring cup is approximately the size of your head. It is made of thick glass and has the word 'pyrex' written on it in a red font that looks like it's from the 1970s."

The whisk is in the cupboard. The description of the whisk is "A bulbous metallic instrument used for blending ingredients."

The spatula is in the cupboard. The description of the spatula is "A flat, black silicone pallet attached at an angle to the handle, used for flipping things. Apparently internet merchants refer to this as a 'flipper' or 'turner', but you grew up calling it a spatula.". Understand "flipper" and "turner" as the spatula.

Inside the cupboard is a Bisquick box. The description of the box is "It is bright yellow with blue text on it. Instructions are printed on the back.".

The instructions are part of the box. The description of the instructions is "'Combine Bisquick, milk, and an egg to create delicious pancake batter. Pour into a skillet under medium heat and flip when pancakes bubble and bottoms are golden brown.'". Understand "directions" as the instructions.

A thing can be readable. The instructions are readable. Understand "read [something readable]" as examining.

Part 2 - The Refrigerator

Inside the kitchen is a closed, openable, fixed in place container called a refrigerator. The description of the refrigerator is "The refrigerator is made of shiny brushed metal." Understand "fridge" as refrigerator. The initial appearance of the refrigerator is "Next to the cupboard sits a refrigerator."

Inside the refrigerator is a carton. The carton is a fluid container. The fluid capacity of the carton is 64.0 fl oz. The fluid content of the carton is 4.0 fl oz. The liquid of the carton is milk. The description of the carton is "A half-gallon cardboard carton of milk from the grocery store."

Inside the refrigerator is an egg. The egg is a fluid container. The fluid capacity of the egg is 2.0 fl oz. The fluid content of the egg is 2.0 fl oz. The liquid of the egg is raw egg.

Part 3 - The Stovetop

Inside the kitchen is a stovetop. The stovetop is a fixed in place device. Understand "stove", "burner", and "oven" as the stovetop.

The description of the stovetop is "It's a stovetop with a gas burner and a switch to control it. [If switched on]A ring of flames rises just below the burner grate, atop which [is-are a list of things on the burner grate][otherwise]Sitting atop its burner grate [is-are a list of things on the burner grate][end if]."

The initial appearance of the stovetop is "Under the cupboard is a stovetop[if the burner grate is not empty] with [a list of things on the burner grate] on it[end if]."

[Because the stovetop can't be both a device and a supporter, we need to make the supporter a part of the stovetop: we'll call it the burner grate.]

The burner grate is part of the stovetop.

Instead of putting the skillet on the stovetop, try putting the skillet on the burner grate.

A cast-iron skillet is on the burner grate. The skillet is an open, transparent container. The description of the skillet is "It's a pre-seasoned, cast iron 10-inch skillet. Virtually indestructible, it doubles up as an excellent source of nutritional iron. A heat-resistant silicone handle allows you to wield it under extreme heat." Understand "pan" as the skillet.

Part 4 - Mixable Ingredients

Chapter 1 - The Pancake Mix

[To the player, the pancake mix in the Bisquick box is a solid powder, but internally it's easier to treat as a liquid.]

The Bisquick box is a fluid container. The fluid capacity of the Bisquick box is 32.0 fl oz. The fluid content of the Bisquick box is 8.0 fl oz. The liquid of the Bisquick box is pancake mix.

[However, this means we don't want the game telling players that fluid containers hold *only* liquids...]

The can't put solids into a fluid container rule response (A) is "[The second noun] hold[s] only liquids and other mixable ingredients."

Chapter 2 - The Egg

[By default, the Measured Liquid extension will describe our egg as an "egg of raw egg", which is rather redundant.  We can get around this if we make the egg closed and opaque.]

The egg is closed and opaque.

[But we'll need to do a bit of trickery to surreptitiously "open" it just before the game's pouring rules are consulted, so that it can actually be poured.]

Before pouring egg into something:
	now the egg is open.

Last check pouring egg into something:
	say "You crack the egg open by tapping it on the counter-top.";
	remove the noun from play;
	now the egg shell is in the location.

Definition: a thing is egglike if it is the egg.

Understand the commands "break" and "crack" as something new.

Understand "crack [something egglike] in/into/on/onto [a fluid container]" as pouring it into.
Understand "break [something egglike] in/into/on/onto [a fluid container]" as pouring it into.

The egg shell is a thing. The description of the egg shell is "It is all that remains of your formerly unbroken egg."

Chapter 3 - Stirring

[The Measured Liquid extension's default mixing rules don't have a concept for stirring/blending: simply pouring one liquid into another will result in a new liquid. So we'll add some of our own logic for it here.]

A liquid can be stirrable. Raw egg, milky pancake mix, milky raw egg, eggy pancake mix, and pancake batter are stirrable.

A liquid can be well-stirred.

A thing can be stir-inducing. The whisk is stir-inducing.

After examining a fluid container (called the target):
	if the target is open and the liquid of the target is stirrable:
		if the liquid of the target is well-stirred:
			say "The [liquid of the target] is nicely blended.";
		otherwise:
			say "The [liquid of the target] is not very well-blended. It's rather lumpy, really.".

Stirring is an action applying to two things.
Understand "stir [a fluid container] with [something stir-inducing]" as stirring.
Understand "blend [a fluid container] with [something stir-inducing]" as stirring.
Understand "whisk [a fluid container] with [something stir-inducing]" as stirring.
Understand "beat [a fluid container] with [something stir-inducing]" as stirring.
Understand "mix [a fluid container] with [something stir-inducing]" as stirring.

Check an actor stirring something:
	if the noun is empty:
		say "But there's nothing in [the noun] to stir!";
		stop the action;
	if the liquid of the noun is not stirrable:
		say "You can't blend the [liquid of the noun] any further.";
		stop the action;
	if the liquid of the noun is well-stirred:
		say "You've already blended the [liquid of the noun] quite superbly.";
		stop the action.

Carry out stirring:
	say "You vigorously stir the [liquid of the noun] with [the second noun].";
	now the liquid of the noun is well-stirred.

Chapter 4 - Liquids and Their Mixtures

[These tables are originally defined in the Measured Liquid extension.]

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
Understand "mix" as pancake batter.

[Individual words in liquids don't seem to qualify as the liquids themselves, e.g. "pancake batter" can't simply be referred to as "batter" by itself, so we'll have to create those synonyms manually.]

Understand "mix" as pancake mix.
Understand "batter" as pancake batter.

Part 5 - The Pancake-Shaped Blob

Chapter 1 - Creating It

A batter-blob is a kind of thing. A batter-blob can be lumpy.

The pancake-shaped blob is a batter-blob. The description of the blob is "It is a [if lumpy]lumpy, [end if]pancake-shaped blob of pancake batter. It is currently [the cooking stage]." Understand "pancake" as the pancake-shaped blob.

Understand "add [a fluid container] in/into/on/onto/to [something]" as pouring it into.
Understand "put [a fluid container] in/into/on/onto [something]" as pouring it into.

Check an actor pouring something into the skillet (this is the pouring batter into skillets rule):
	if the liquid poured is pancake batter:
		if the noun is not empty:
			now the fluid content of the noun is 0.0 fl oz;
			now the pancake-shaped blob is in the skillet;
			if the liquid poured is not well-stirred:
				now the pancake-shaped blob is lumpy;
			say "You pour the pancake batter into a [pancake-shaped blob] on the skillet.";
			stop the action;
	otherwise:
		say "You should only pour ingredients ready for cooking onto the skillet.";
		stop the action.

The pouring batter into skillets rule is listed after the can't pour two untouched things rule in the check pouring it into rulebook.

Chapter 2 - Cooking It

Cooking stage is a kind of value.  The cooking stages are goopy, slightly bubbly, rather bubbly, very bubbly, and ridiculously bubbly. 

A batter-blob has a cooking stage. The cooking stage of a batter-blob is usually goopy.

Instead of eating a batter-blob, say "But it's not fully cooked yet!"
Instead of taking a batter-blob, say "That would be very goopy."
Before printing the name of a batter-blob: say "[if lumpy]lumpy, [end if][cooking stage] ".

Definition: a thing is heated if it is on the burner grate and the stovetop is switched on.

Every turn:
	repeat with item running through batter-blobs in a heated thing:
		if the cooking stage of the item is ridiculously bubbly:
			say "Smoke emanates from the underside of the [item].";
		otherwise:
			now the cooking stage of the item is the cooking stage after the cooking stage of the item;
			say "The [the printed name of the item] is now [the cooking stage of the item]."

Chapter 3 - Flipping It

A thing can be flip-inducing. The spatula is flip-inducing.

Flipping is an action applying to two things.
Understand "flip [a batter-blob] with [something flip-inducing]" as flipping.
Understand "turn [a batter-blob] with [something flip-inducing]" as flipping.

Check flipping:
	if the cooking stage of the noun is goopy:
		say "But [the noun] isn't cooked at all!";
		stop the action.

Carry out flipping:
	say "You deftly flip [the noun] with [the second noun]. After waiting a few moments, you transfer your creation to a plate, pour some syrup on the side, and consume it.";
	if the cooking stage of the noun is:
		-- slightly bubbly: say "It was pretty good, albeit slightly undercooked[if the noun is lumpy] and lumpy[end if].";
		-- rather bubbly: say "It was [if the noun is lumpy]lumpy but still fairly[otherwise]ridiculously[end if] delicious: perfectly golden brown and crisp on the edges.";
		-- very bubbly: say "It was quite tasty, albeit slightly burnt in areas[if the noun is lumpy], while lumpy in others[end if].";
		-- ridiculously bubbly: say "It was burnt[if the noun is lumpy] and lumpy[end if] as hell.";
	remove the noun from play;
	end the story finally.

Part 6 - The Window

[When looking out the window, we'd like to show the real-world weather outside if possible. An external program/script may have written it to a file; if so, we'll use that, but otherwise we'll just fallback to a default.]

Inside the kitchen is a window. The window is scenery. Understand "sky" and "outside" as the window. The description of the window is "Through the window you see the gray rooftops of the brick dwellings outside. Above them is a [cloudiness] sky."

The file of weather (owned by project "WEATHER-API") is called "weather".

To decide what text is cloudiness:
	if ready to read the file of weather:
		decide on "[text of the file of weather]";
	otherwise:
		decide on "clear blue".

Test me with "open cupboard / open fridge / put milk into cup / pour mix into cup / crack egg into cup / stir batter / pour batter into skillet".
