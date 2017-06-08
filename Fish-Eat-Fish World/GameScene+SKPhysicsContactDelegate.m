//
//  GameScene+SKPhysicsContactDelegate.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/7/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameScene+SKPhysicsContactDelegate.h"
#import "SKPhysicsContact+HelperMethods.h"
#import "CollisionConfiguration.h"

@implementation GameScene(SKPhysicsContactDelegate)

//Implement a generalized function that takes separate blocks of code as arguments for collision events with each of the possible collision bodies in the game
typedef void(^ContactHandler)(void);
typedef void(^OtherBodyContactHandler)(SKPhysicsBody*);



-(void) didBeginContact:(SKPhysicsContact *)contact{
    
    for (ContactHandler contactHandler in [SKPhysicsContact allContactHandlersForContact:contact]) {
        
        //Execute all of the callbacks required for handling the contact event
        contactHandler();
    }
    
}

-(void) didEndContact:(SKPhysicsContact *)contact{
    
    
}




@end
