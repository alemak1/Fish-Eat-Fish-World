//
//  CollisionConfiguration.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/7/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef CollisionConfiguration_h
#define CollisionConfiguration_h

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>


@interface CollisionConfiguration: NSObject


enum CategoryBitmask{
    PLAYER_CATEGORY_BITMASK = 0b0 << 0,
    ENEMY_CATEGORY_BITMASK = 0b1 << 0,
    COLLECTIBLE_CATEGORY_BITMASK = 0b1 << 1,
    BARRIER_CATEGORY_BITMASK = 0b1 << 2
};

+ (CollisionConfiguration*) playerCollisionConfiguration;
+ (CollisionConfiguration*) enemyCollisionConfiguration;
+ (CollisionConfiguration*) collectibleCollisionConfiguration;
+ (CollisionConfiguration*) barrierCollisionConfiguration;


-(id) initWithCategoryBitmask: (enum CategoryBitmask)categoryBitmask;

@property enum CategoryBitmask categoryBitMask;

/** Privately implemented definedCollisions and definedContacts dictionaries are used to determine the collisionBitMask as well as contactBitmask for a given bitmask category **/
@property(readonly) int32_t collisionBitMask;
@property(readonly) int32_t contactBitMask;


@property(readonly) NSDictionary* definedCollisions;
@property(readonly) NSDictionary* definedContacts;

@end

#endif /* CollisionConfiguration_h */
