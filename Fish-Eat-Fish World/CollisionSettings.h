//
//  CollisionSettings.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/7/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef CollisionSettings_h
#define CollisionSettings_h

#import <Foundation/Foundation.h>




@interface BitmaskConfiguration: NSObject

struct BitmaskSettings{
    int32_t categoryBitmask;
    int32_t collisionBitmask;
    int32_t contactBitmask;
};

+ (BitmaskConfiguration*) playerBitmaskConfiguration;
+ (BitmaskConfiguration*) enemyBitmaskConfiguration;
+ (BitmaskConfiguration*) barrierBitmaskConfiguration;
+ (BitmaskConfiguration*) collectiblesBitmaskConfiguration;

- (id) initWithBitmaskSettings: (struct BitmaskSettings)bitmaskSettings;
- (id) initWithCategoryBitmask: (int32_t)categoryBitmask andWithCollisionBitmask:(int32_t)collisionBitmask andWithContactBitMask:(int32_t)contactBitmask;


/** The bitmask properties are not backed by individual instance variables but rather by a wrapper struct **/

@property(getter=getCategoryBitmask,setter=setCategoryBitmask:) int32_t categoryBitmask;
@property (getter=getCollisionBitmask,setter=setCollisionBitmask:) int32_t collisionBitmask;
@property (getter=getContactBitmask, setter=setContactBitmask:)int32_t contactBitmask;



@end

#endif /* CollisionSettings_h */
