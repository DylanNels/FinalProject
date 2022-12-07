//
//  MyGame.swift
//  FinalProject
//
//  Created by user223537 on 11/20/22.
//

let story = Story(pages: [
    StoryPage( // 0
        """
        Welcome to Choose Your Own Story
        Dungeon Run
        
        As the old rotting wooden doors leading into this crypt like place shut behind you, you realize there are three different paths forwards...
        """,
        choices: [
            Choice(text: "Go forwards, deeper into the dungeon...", destination: 1),
            Choice(text: "Go left, there seems to be light in that direction...", destination: 1),
            Choice(text: "Go right, it's darker that way, but who knows...", destination: 3),
        ]
    ),
    StoryPage( // 1
        """
        You encounter a monster!
        
        Lucky for you, it doesn't appear to have spotted you quite yet...
        
        """,
        choices: [
            Choice(text: "Run away!", destination: 0),
            Choice(text: "Attack it!", destination: 2),
            Choice(text: "Try going around?", destination: 3),
        ]
    ),
    StoryPage( // 2
        """
        It's time for battle!
        
        Due to catching the beast unwares, your attack - whatever it may be - strikes true, dealing lethal damage. It won't have much time left now!
        
        Unfortunately, it wasn't enough to drop it in one go.
        
        The beast turns to you, and swings its claws at you wildly! Trying to take you down with it.
        
        There is no chance for escape anymore, what will you do?
        
        """,
        choices: [
            Choice(text: "Dodge and weave, try and outlast it!", destination: 4),
            Choice(text: "Meet it's attacks head on!", destination: 10),
        ]
    ),
    StoryPage( // 3
        """
        You enter into a long dark hall, the likes of which you can barely see down.
        
        The air here is cool, and damp, sticking to your attire as you walk.
        
        The dark hall doesn't seem to have an end to it. Although you feel no danger, the lack of it creates tension enough.
        
        What shall you do?
        
        """,
        choices: [
            Choice(text: "Go back...", destination: 0),
            Choice(text: "Persit.", destination: 5),
        ]
    ),
    StoryPage( // 4
        """
        The monster, desperate as it is, can't seem to land any of it's flailing hits on you.
        
        It's stamina drained, and life depleting, it falls to the floor.
        
        Unmoving, not breathing.
        
        You, have won!
        
        You could try and see if the monster was hiding or protecting anything, but they may take time...and there could be more.
        
        What will you do?
        
        """,
        choices: [
            Choice(text: "Search", destination: 5),
            Choice(text: "Continue On.", destination: 3),
        ]
    ),
    StoryPage( // 5
        """
        It would appear your tenacity won out, as you have stumbled upon a chest!
        
        An old, dusty, and rusty chest. But still a chest none the less...
        
        It would appear, thankfully, that the chest is not a monster, however, the rusty and old lock and and bolts holding it together is keeping the chest from being openned in a timely manner.
        
        You could brute force it, but the noise may attract attentention...then again, so could staying here and fiddling with for a time.
        
        What will you do?
        
        """,
        choices: [
            Choice(text: "Brute force it!", destination: 6),
            Choice(text: "Take it nice and slow...", destination: 8),
        ]
    ),
    StoryPage( // 6
        """
        With the load ear piercing noise of metal grinding and shattering against old wood, you shatter the chest open.
        
        You weren't sure what you were expecting...but the strange helmet looking artifact inside probably wasn't it.
        
        You feel a slight compulsion to just put it on, that would be easier to carry and more usefull that way...but still.
        
        Strange chest helmet.
        
        What will you do?
        
        """,
        choices: [
            Choice(text: "Put it on, it'll be fine, right...?", destination: 9),
            Choice(text: "Strange chest helmet. Store it away, not on the head.", destination: 7),
        ]
    ),
    StoryPage( // 7
        """
        You store away said helmet in a backpack you brough with for such an occasion, and you continue to venture on...
        
        Though, what else is down there has yet to be seen.
        
        END OF DEMO
        
        """,
        choices: [
            Choice(text: "Try Another Path?", destination: 0),
        ]
    ),
    StoryPage( // 8
        """
        As you sit there, fiddling with the lock on the old chest, it draws your focus just enough that you don't notice the sounds of feet against the cold stone floor...
        
        Not until it's the last thing you hear before something smashes you over the head, and you get knocked out cold.
        
        You aren't to sure if it was another monster who did it, or even another dungeon crawler...but the point is, you're out.
        
        Your Dungoen Run is over.
        """,
        choices: [
            Choice(text: "Try Again.", destination: 0),
            ]
    ),
    StoryPage( // 9
        """
        You put the helmet over your head, and set it on snuggly...and then you instantly regret it, as you sneeze and a miniture dust explosion wafts into the air.
        
        Other then that, though? It seems fine, shockingly enough.
        
        Questioning your sense of self preservation, you continue on further into the dungeon...
        
        But that's a story for another time.
        
        END OF DEMO.
        
        """,
        choices: [
            Choice(text: "Try Another Route?", destination: 0),
        ]
    ),
    StoryPage( // 10
        """
        You decided to face the monster head on!
        
        Unfortunately, you underestimated the sharpness of its claws, and the thing tears through metal, cloth and flesh like a knife through butter.
        
        You manage to ward off the beast, forcing it down with a few more blows of your own...but not before taking a few solid hits of your own.
        
        You don't have much longer, it would appear. As soon as your wounds register to your senses, you vision darkens, and you think no more.
        
        Your Dungeon Run is over.
        
        """,
        choices: [
            Choice(text: "Try Again.", destination: 0),
        ]
    ),
])
