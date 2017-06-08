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

/** Each colored fish, blow fish, colored plant, collectible, and barrier entity's collision properties can be accessed via static variables **/

+ (CollisionConfiguration*) greenFishCollisionConfiguration{
    static CollisionConfiguration* greenFishCollisionConfiguration = nil;
    
    if(greenFishCollisionConfiguration == nil){
        greenFishCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:GREEN_FISH_CATEGORY_BITMASK];
    }
    
    return greenFishCollisionConfiguration;
}

+ (CollisionConfiguration*) pinkFishCollisionConfiguration{
    static CollisionConfiguration* pinkFishCollisionConfiguration = nil;
    
    if(pinkFishCollisionConfiguration == nil){
        pinkFishCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:PINK_FISH_CATEGORY_BITMASK];
    }
    
    return pinkFishCollisionConfiguration;
}

+ (CollisionConfiguration*) redFishCollisionConfiguration{
    static CollisionConfiguration* redFishCollisionConfiguration = nil;
    
    if(redFishCollisionConfiguration == nil){
        redFishCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:RED_FISH_CATEGORY_BITMASK];
    }
    
    return redFishCollisionConfiguration;
}

+ (CollisionConfiguration*) blueFishCollisionConfiguration{
    static CollisionConfiguration* blueFishCollisionConfiguration = nil;
    
    if(blueFishCollisionConfiguration == nil){
        blueFishCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:BLUE_FISH_CATEGORY_BITMASK];
    }
    
    return blueFishCollisionConfiguration;
}

+ (CollisionConfiguration*) orangeFishCollisionConfiguration{
    static CollisionConfiguration* orangeFishCollisionConfiguration = nil;
    
    if(orangeFishCollisionConfiguration == nil){
        
        orangeFishCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:ORANGE_FISH_CATEGORY_BITMASK];
    }
    
    return orangeFishCollisionConfiguration;
}

+ (CollisionConfiguration*) collectibleCollisionConfiguration{
    static CollisionConfiguration* collectibleCollisionConfiguration = nil;
    
    if(collectibleCollisionConfiguration == nil){
        collectibleCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:COLLECTIBLE_CATEGORY_BITMASK];
    }
    
    return collectibleCollisionConfiguration;
}

+ (CollisionConfiguration*) barrierCollisionConfiguration{
    static CollisionConfiguration* barrierCollisionConfiguration = nil;
    
    if(barrierCollisionConfiguration == nil){
        barrierCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:BARRIER_CATEGORY_BITMASK];
    }
    
    return barrierCollisionConfiguration;
}

+ (CollisionConfiguration*) purplePlantCollisionConfiguration{
    static CollisionConfiguration* purplePlantCollisionConfiguration = nil;
    
    if(purplePlantCollisionConfiguration == nil){
        purplePlantCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:PURPLE_PLANT_CATEGORY_BITMASK];
    }
    
    return purplePlantCollisionConfiguration;
}

+ (CollisionConfiguration*) greenPlantCollisionConfiguration{
    static CollisionConfiguration* greenPlantCollisionConfiguration = nil;
    
    if(greenPlantCollisionConfiguration == nil){
        greenPlantCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:BARRIER_CATEGORY_BITMASK];
    }
    
    return greenPlantCollisionConfiguration;
}

+ (CollisionConfiguration*) eelCollisionConfiguration{
    static CollisionConfiguration* eelCollisionConfiguration = nil;
    
    if(eelCollisionConfiguration == nil){
        eelCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:EEL_CATEGORY_BITMASK];
    }
    
    return eelCollisionConfiguration;
}

+ (CollisionConfiguration*) orangePlantCollisionConfiguration{
    static CollisionConfiguration* orangePlantCollisionConfiguration = nil;
    
    if(orangePlantCollisionConfiguration == nil){
        orangePlantCollisionConfiguration = [[CollisionConfiguration alloc] initWithCategoryBitmask:ORANGE_PLANT_CATEGORY_BITMASK];
    }
    
    return orangePlantCollisionConfiguration;
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
    //Red Fish
    [NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK], [NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK], [NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]],\
    
    //Blue Fish
    [NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK], [NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]],
    
    //Pink Fish
    [NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK], [NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]],
    
    //Orange Fish
     [NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK], [NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]],
    
    //Green Fish
     [NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK], [NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]],
    
    //Eel
    [NSNumber numberWithInteger:EEL_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK], [NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]],
    
    //Collectibles
    [NSNumber numberWithInteger:COLLECTIBLE_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK]],
    
    //Green Plant
    [NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK]: @[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK], [NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK]],
    
    //Purple Plant
    [NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK]: @[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK], [NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK]],
    
    //Blowfish
      [NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK]: @[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK]],
    
    //Barriers
    [NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK]: @[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK]]
    
                                                                    };
}

-(NSDictionary*) definedContacts{
    return @{\
             
             //Blowfish
             [NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:COLLECTIBLE_CATEGORY_BITMASK], [NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]],\
             
             //Eel
             [NSNumber numberWithInteger:EEL_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:COLLECTIBLE_CATEGORY_BITMASK], [NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]],\
             
             //Red Fish
             [NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:COLLECTIBLE_CATEGORY_BITMASK], [NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]],\
             
             //Blue Fish
             [NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:COLLECTIBLE_CATEGORY_BITMASK], [NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]],\
             
             //Green Fish
             [NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:COLLECTIBLE_CATEGORY_BITMASK], [NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]],\
             
             //Pink Fish
             [NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:COLLECTIBLE_CATEGORY_BITMASK], [NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]],\
             
             //Orange Fish
             [NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:COLLECTIBLE_CATEGORY_BITMASK], [NSNumber numberWithInteger:BARRIER_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]],\
             
             //Collectible
             [NSNumber numberWithInteger:COLLECTIBLE_CATEGORY_BITMASK]:@[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK]],\
             
             //Green Plant
             [NSNumber numberWithInteger:GREEN_PLANT_CATEGORY_BITMASK]: @[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK]],\
             
             //Purple Plant
              [NSNumber numberWithInteger:PURPLE_PLANT_CATEGORY_BITMASK]: @[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK]], \
             
             //Orange Plant
             [NSNumber numberWithInteger:ORANGE_PLANT_CATEGORY_BITMASK]: @[[NSNumber numberWithInteger:RED_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:GREEN_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLUE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:PINK_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:ORANGE_FISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:BLOWFISH_CATEGORY_BITMASK],[NSNumber numberWithInteger:EEL_CATEGORY_BITMASK]],
             
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
