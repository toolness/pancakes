"Pancakes" by Atul Varma

Release along with an interpreter.

[Cover art taken from https://www.flickr.com/photos/kurmanphotos/14136765763]

Release along with cover art ("A stack of pancakes.").

Include Measured Liquid by Emily Short.

Use mixed liquids.

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

The kitchen is a room. "You're standing in the open kitchen of your studio apartment. A dark granite counter-top separates you from the rest of your living space; beyond that is a wall-to-wall window through which the sun shines."

when play begins:
  say "Ah, it's a beautiful Saturday morning. The perfect time to make a delicious, relaxing breakfast!"
  
Inside the kitchen is a closed, openable, fixed in place container called a cupboard. The description of the cupboard is "The cupboard has a dark oaky texture to it; you can't tell whether it's fake or made of real wood. [if the cupboard is closed]A brushed metal handle can be used to open it.[end if]". The initial appearance of the cupboard is "Just above your head, a cupboard is affixed to the wall.".

Inside the cupboard is a Bisquick box. The box is a fluid container. The fluid capacity of the box is 32.0 fl oz. The fluid content of the box is 8.0 fl oz. The liquid of the box is pancake mix. The description of the box is "It is bright yellow with blue text on it. Instructions are printed on the back.".

The instructions are part of the box. The description of the instructions is "'Combine Bisquick, milk, and an egg to create delicious pancake batter.'".

Inside the cupboard is a massive measuring cup. The massive measuring cup is a graduated fluid container. The fluid capacity of the massive measuring cup is 32.0 fl oz. The description of the massive measuring cup is "The massive measuring cup is approximately the size of your head. It is made of thick glass and has the word 'pyrex' written on it in a red font that looks like it's from the 1970s."

Inside the kitchen is a window. The window is scenery. The description of the window is "Through the window you see the gray rooftops of the brick dwellings outside. Above them is a clear blue sky.".

Inside the kitchen is a closed, openable, fixed in place container called a refrigerator. The description of the refrigerator is "The refrigerator is made of shiny brushed metal." Understand "fridge" as refrigerator. The initial appearance of the refrigerator is "Next to the cupboard sits a refrigerator."

Inside the refrigerator is a carton. The carton is a fluid container. The fluid capacity of the carton is 64.0 fl oz. The fluid content of the carton is 4.0 fl oz. The liquid of the carton is milk. The description of the carton is "A half-gallon cardboard carton of milk from the grocery store."

Inside the refrigerator is an egg. The egg is a fluid container. The fluid capacity of the egg is 2.0 fl oz. The fluid content of the egg is 2.0 fl oz. The liquid of the egg is raw egg. The egg is closed and opaque.

The egg shell is a thing. The description of the egg shell is "It is all that remains of your formerly unbroken egg."

Definition: a thing is egglike if it is the egg.

Understand "crack [something egglike] in/into [a fluid container]" as pouring it into.
Understand "break [something egglike] in/into [a fluid container]" as pouring it into.
Understand "put [something egglike] in/into [a fluid container]" as pouring it into.

[Understand the command "crack" as something new. Understand the command "crack" as "pour".]
[Understand the command "break" as something new. Understand the command "break" as "pour".]

Before pouring egg into something:
	now the egg is open;
	Say "You crack the egg open by tapping it on the counter-top."

Last check pouring egg into something:
	remove the noun from play;
	now the egg shell is in the kitchen.

Test me with "open cupboard / open fridge / take all / pour milk into cup / pour pancake mix into cup / crack egg into cup".
