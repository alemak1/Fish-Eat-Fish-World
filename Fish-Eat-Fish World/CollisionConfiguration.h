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
    RED_FISH_CATEGORY_BITMASK = 0b0 << 1,
    GREEN_FISH_CATEGORY_BITMASK = 0b1 << 2,
    PINK_FISH_CATEGORY_BITMASK = 0b1 << 3,
    ORANGE_FISH_CATEGORY_BITMASK = 0b1 << 4,
    BLUE_FISH_CATEGORY_BITMASK = 0b1 << 5,
    BLOWFISH_CATEGORY_BITMASK = 0b1 << 6,
    GREEN_PLANT_CATEGORY_BITMASK = 0b1 << 7,
    PURPLE_PLANT_CATEGORY_BITMASK = 0b1 << 8,
    COLLECTIBLE_CATEGORY_BITMASK = 0b1 << 9,
    BARRIER_CATEGORY_BITMASK = 0b1 << 10,
    EEL_CATEGORY_BITMASK = 0b1 << 11,
    ORANGE_PLANT_CATEGORY_BITMASK = 0b1 << 12

};

+ (CollisionConfiguration*) redFishCollisionConfiguration;
+ (CollisionConfiguration*) greenFishCollisionConfiguration;
+ (CollisionConfiguration*) pinkFishCollisionConfiguration;
+ (CollisionConfiguration*) orangeFishCollisionConfiguration;
+ (CollisionConfiguration*) blueFishCollisionConfiguration;
+ (CollisionConfiguration*) blowFishCollisionConfiguration;
+ (CollisionConfiguration*) greenPlantCollisionConfiguration;
+ (CollisionConfiguration*) purplePlantCollisionConfiguration;
+ (CollisionConfiguration*) collectibleCollisionConfiguration;
+ (CollisionConfiguration*) barrierCollisionConfiguration;
+ (CollisionConfiguration*) eelCollisionConfiguration;
+ (CollisionConfiguration*) orangePlantCollisionConfiguration;





-(id) initWithCategoryBitmask: (enum CategoryBitmask)categoryBitmask;

@property enum CategoryBitmask categoryBitMask;

/** Privately implemented definedCollisions and definedContacts dictionaries are used to determine the collisionBitMask as well as contactBitmask for a given bitmask category **/
@property(readonly) int32_t collisionBitMask;
@property(readonly) int32_t contactBitMask;


@property(readonly) NSDictionary* definedCollisions;
@property(readonly) NSDictionary* definedContacts;

@end

#endif /* CollisionConfiguration_h */
