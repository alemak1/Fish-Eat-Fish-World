//
//  CollisionConfiguration.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/7/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SpriteKit/SpriteKit.h>
#import "CollisionConfiguration.h"

@implementation CollisionConfiguration

+ (CollisionConfiguration*) playerCollisionConfiguration{
    static CollisionConfiguration* playerCollisionConfiguration = nil;
    
    if(playerCollisionConfiguration == nil){
        playerCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:PLAYER_CATEGORY_BITMASK];
    }
    
    return playerCollisionConfiguration;
}

+ (CollisionConfiguration*) enemyCollisionConfiguration{
    static CollisionConfiguration* enemyCollisionConfiguration = nil;
    
    if(enemyCollisionConfiguration == nil){
        enemyCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:ENEMY_CATEGORY_BITMASK];
    }
    
    return enemyCollisionConfiguration;
}

+ (CollisionConfiguration*) collectibleCollisionConfiguration{
    static CollisionConfiguration* collectibleConfiguration = nil;
    
    if(collectibleConfiguration == nil){
        
        collectibleConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:COLLECTIBLE_CATEGORY_BITMASK];
    }
    
    return collectibleConfiguration;
}

+ (CollisionConfiguration*) barrierCollisionConfiguration{
    static CollisionConfiguration* barrierCollisionConfiguration = nil;
    
    if(barrierCollisionConfiguration == nil){
        barrierCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:BARRIER_CATEGORY_BITMASK];
    }
    
    return barrierCollisionConfiguration;
}

-(id) initWithCategoryBitmask: (enum CategoryBitmask)categoryBitmask{
    
    self = [super init];
    
    _categoryBitMask = categoryBitmask;
    
    return self;
}


-(int32_t) collisionBitMask{
    return [self getCollisionBitmaskFor:[self categoryBitMask]];
}

-(int32_t) contactBitMask{
    
    return [self getContactBitmaskFor:[self categoryBitMask]];
}


-(NSDictionary*) definedCollisions{
    return @{\
    [NSNumber numberWithInteger:PLAYER_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK]],\
    
    [NSNumber numberWithInteger:ENEMY_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:PLAYER_CATEGORY_BITMASK],[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK]],
    
    [NSNumber numberWithInteger:COLLECTIBLE_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK]],
    
    [NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK]: @[[NSNumber numberWithInteger:PLAYER_CATEGORY_BITMASK],[NSNumber numberWithInteger:ENEMY_CATEGORY_BITMASK],[NSNumber numberWithInteger:COLLECTIBLE_CATEGORY_BITMASK]]
    
                                        
                                                                    };
}

-(NSDictionary*) definedContacts{
    return @{\
             [NSNumber numberWithInteger:PLAYER_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:ENEMY_CATEGORY_BITMASK],[NSNumber numberWithInteger:COLLECTIBLE_CATEGORY_BITMASK], [NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK]],\
             
             [NSNumber numberWithInteger:ENEMY_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:PLAYER_CATEGORY_BITMASK],[NSNumber numberWithInteger:ENEMY_CATEGORY_BITMASK],[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK]],\
             
             [NSNumber numberWithInteger:COLLECTIBLE_CATEGORY_BITMASK]: @[[NSNumber numberWithInteger:PLAYER_CATEGORY_BITMASK]],\
             
             [NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK]: @[[NSNumber numberWithInteger:PLAYER_CATEGORY_BITMASK],[NSNumber numberWithInteger:ENEMY_CATEGORY_BITMASK]]
             
             };
}

-(int32_t)getCollisionBitmaskFor:(enum CategoryBitmask)categoryBitmask{
    
    NSArray* definedCollisionsArray = [[self definedCollisions] objectForKey:[NSNumber numberWithInt:categoryBitmask]];
    
    int32_t combinedBitmasks = 0;
    
    for (NSNumber* bitmask in definedCollisionsArray) {
        combinedBitmasks = combinedBitmasks | (int32_t)[bitmask integerValue];
    }
    
    return combinedBitmasks;
}

-(int32_t) getContactBitmaskFor: (enum CategoryBitmask)categoryBitmask{
     NSArray* definedContactsArray = [[self definedContacts] objectForKey:[NSNumber numberWithInt:categoryBitmask]];

    int32_t combinedBitmasks = 0;
    
    for (NSNumber* bitmask in definedContactsArray) {
        combinedBitmasks = combinedBitmasks | (int32_t)[bitmask integerValue];
    }
    
    return combinedBitmasks;
}

@end
