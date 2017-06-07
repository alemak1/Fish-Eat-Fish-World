//
//  CollisionSettings.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/7/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CollisionSettings.h"

@implementation BitmaskConfiguration

/** Wrapper struct is a private instance variable that underlies the individual bitmask properties in the public interface **/

struct BitmaskSettings _basicBitmaskSettings;

+ (BitmaskConfiguration*) playerBitmaskConfiguration{
    static BitmaskConfiguration* playerBitmaskConfiguration = nil;
    
    if(playerBitmaskConfiguration == nil){
        playerBitmaskConfiguration = [[BitmaskConfiguration alloc] initWithBitmaskSettings:[BitmaskConfiguration getPlayerBitmaskSetting]];
    }
    
    return playerBitmaskConfiguration;
}

+ (BitmaskConfiguration*) enemyBitmaskConfiguration{
    static BitmaskConfiguration* enemyBitmaskConfiguration = nil;
    
    if(enemyBitmaskConfiguration == nil){
        enemyBitmaskConfiguration = [[BitmaskConfiguration alloc] initWithBitmaskSettings:[BitmaskConfiguration getEnemyBitmaskSettings]];
    }
    
    return enemyBitmaskConfiguration;
}

+ (BitmaskConfiguration*) collectiblesBitmaskConfiguration{
    
    static BitmaskConfiguration* collectiblesBitmaskConfiguration = nil;
    
    if(collectiblesBitmaskConfiguration == nil){
        collectiblesBitmaskConfiguration = [[BitmaskConfiguration alloc] initWithBitmaskSettings:[BitmaskConfiguration getCollectibleBitmaskSettings]];
    }
    
    return collectiblesBitmaskConfiguration;
}

+ (BitmaskConfiguration*) barrierBitmaskConfiguration{
    static BitmaskConfiguration* barrierBitmaskConfiguration = nil;
    
    if(barrierBitmaskConfiguration == nil){
        barrierBitmaskConfiguration = [[BitmaskConfiguration alloc] initWithBitmaskSettings:[BitmaskConfiguration getBarrierBitmaskSettings]];
    }
    
    return barrierBitmaskConfiguration;
}


/** Initializers **/

- (id) initWithBitmaskSettings: (struct BitmaskSettings)bitmaskSettings{
    
    self = [super init];
    
    _basicBitmaskSettings.categoryBitmask = bitmaskSettings.categoryBitmask;
    _basicBitmaskSettings.collisionBitmask = bitmaskSettings.collisionBitmask;
    _basicBitmaskSettings.contactBitmask = bitmaskSettings.contactBitmask;
    
    
    return self;

}

- (id) initWithCategoryBitmask: (int32_t)categoryBitmask andWithCollisionBitmask:(int32_t)collisionBitmask andWithContactBitMask:(int32_t)contactBitmask{
    
    self = [super init];
    
    _basicBitmaskSettings.categoryBitmask = categoryBitmask;
    _basicBitmaskSettings.collisionBitmask = collisionBitmask;
    _basicBitmaskSettings.contactBitmask = contactBitmask;
    
    return self;
    
}


/** Implementation for custom getters and setter for bitmask properties **/

- (int32_t) getContactBitmask{
    return _basicBitmaskSettings.contactBitmask;
}

- (int32_t) getCategoryBitmask{
    return _basicBitmaskSettings.categoryBitmask;
}

- (int32_t) getCollisionBitmask{
    return _basicBitmaskSettings.collisionBitmask;
}

- (void) setCategoryBitmask:(int32_t)categoryBitmask{
    
    _basicBitmaskSettings.categoryBitmask = categoryBitmask;
}

- (void) setCollisionBitmask:(int32_t)collisionBitmask{
    
    _basicBitmaskSettings.collisionBitmask = collisionBitmask;

}

- (void) setContactBitmask:(int32_t)contactBitmask{
    
    _basicBitmaskSettings.contactBitmask = contactBitmask;
}


//TODO: **************  Define the bitmask settings for each game objects/character

+ (struct BitmaskSettings) getPlayerBitmaskSetting{
    struct BitmaskSettings playerBitmaskSettings;
    
    playerBitmaskSettings.categoryBitmask = 0;
    playerBitmaskSettings.collisionBitmask = 0 | 1;
    playerBitmaskSettings.contactBitmask = 0;
    
    return playerBitmaskSettings;
}

+ (struct BitmaskSettings) getEnemyBitmaskSettings{
    struct BitmaskSettings enemyBitmaskSettings;
    
    enemyBitmaskSettings.categoryBitmask = 0;
    enemyBitmaskSettings.collisionBitmask = 0 | 1;
    enemyBitmaskSettings.contactBitmask = 0;
    
    return enemyBitmaskSettings;
}

+ (struct BitmaskSettings) getBarrierBitmaskSettings{
    struct BitmaskSettings barrierBitmaskSettings;
    
    barrierBitmaskSettings.categoryBitmask = 0;
    barrierBitmaskSettings.collisionBitmask = 0 | 1;
    barrierBitmaskSettings.contactBitmask = 0;
    
    return barrierBitmaskSettings;
}

+ (struct BitmaskSettings) getCollectibleBitmaskSettings{
    struct BitmaskSettings collectibleBitmaskSettings;
    
    collectibleBitmaskSettings.categoryBitmask = 0;
    collectibleBitmaskSettings.collisionBitmask = 0 | 1;
    collectibleBitmaskSettings.contactBitmask = 0;
    
    return collectibleBitmaskSettings;
}

@end
