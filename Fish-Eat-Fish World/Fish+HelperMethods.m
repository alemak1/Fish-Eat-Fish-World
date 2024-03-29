//
//  Fish+HelperMethods.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/4/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fish+HelperMethods.h"
#import "TextureAtlasManager.h"
#import "FishColor.h"

@implementation Fish(HelperMethods)

+ (int) getRandomFishColor{
    
    uint32_t totalRandomFishColors = UINT32_C(5);
    int randomFishColorIndex = arc4random_uniform(totalRandomFishColors);
    
    FishColor randomFishColor = randomFishColorIndex;
    
    return randomFishColor;
}


+(SKTexture*) getRandomFishColorTexture{
    
    /** Get a reference to the shared texture atlas manager **/
    TextureAtlasManager* textureAtlasManager = [TextureAtlasManager sharedManager];
    
    uint32_t totalRandomFishColors = UINT32_C(5);
    int randomFishColorIndex = arc4random_uniform(totalRandomFishColors);
    
    FishColor randomFishColor = randomFishColorIndex;
    
    SKTexture* fishTexture = [[SKTexture alloc] init];
    
    switch(randomFishColor){
        case ORANGE:
            fishTexture = [textureAtlasManager getColoredFishTextureWithName:OrangeFishNormalTextureName];
            break;
        case RED:
            fishTexture = [textureAtlasManager getColoredFishTextureWithName:RedFishNormalTextureName];
            break;
        case BLUE:
            fishTexture = [textureAtlasManager getColoredFishTextureWithName:BlueFishNormalTextureName];
            break;
        case PINK:
            fishTexture = [textureAtlasManager getColoredFishTextureWithName:PinkFishNormalTextureName];
            break;
        case GREEN:
            fishTexture = [textureAtlasManager getColoredFishTextureWithName:GreenFishNormalTextureName];
            break;
    }
    
    return fishTexture;
    
}



+(SKTexture*) getTextureForFishColor: (FishColor)fishColor andForFishOrientation: (FishOrientation)fishOrientation;{
    
    /** Get a reference to the shared texture atlas manager **/
    TextureAtlasManager* textureAtlasManager = [TextureAtlasManager sharedManager];
    
    NSString* textureName;
    SKTexture* fishTexture;
    
    switch(fishColor){
        case ORANGE:
            textureName = (fishOrientation == RIGHT) ? OrangeFishNormalTextureName : OrangeFishNormalTextureLeftName;
            fishTexture = [textureAtlasManager getColoredFishTextureWithName:textureName];
            break;
        case RED:
            textureName = (fishOrientation == RIGHT) ? RedFishNormalTextureName : RedFishNormalTextureLeftName;
            fishTexture = [textureAtlasManager getColoredFishTextureWithName:textureName];
            break;
        case BLUE:
            textureName = (fishOrientation == RIGHT) ? BlueFishNormalTextureName : BlueFishNormalTextureLeftName;
            fishTexture = [textureAtlasManager getColoredFishTextureWithName:textureName];
            break;
        case PINK:
            textureName = (fishOrientation == RIGHT) ? PinkFishNormalTextureName : PinkFishNormalTextureLeftName;
            fishTexture = [textureAtlasManager getColoredFishTextureWithName:textureName];
            break;
        case GREEN:
            textureName = (fishOrientation == RIGHT) ? GreenFishNormalTextureName : GreenFishNormalTextureLeftName;
            fishTexture = [textureAtlasManager getColoredFishTextureWithName: textureName];
            break;
    }
    
    return fishTexture;
}

+ (CollisionConfiguration*) getCollisionConfigurationForFishColor: (FishColor) fishColor{
    
    CollisionConfiguration* collisionConfiguration;
    
    switch (fishColor) {
        case RED:
            collisionConfiguration = [CollisionConfiguration redFishCollisionConfiguration];
            break;
        case ORANGE:
            collisionConfiguration = [CollisionConfiguration orangeFishCollisionConfiguration];
            break;
        case BLUE:
            collisionConfiguration = [CollisionConfiguration blueFishCollisionConfiguration];
            break;
        case GREEN:
            collisionConfiguration = [CollisionConfiguration greenFishCollisionConfiguration];
            break;
        case PINK:
            collisionConfiguration = [CollisionConfiguration pinkFishCollisionConfiguration];
            break;
    }
    
    return collisionConfiguration;
}

+ (SKTexture*) getSkeletonTextureForFishColor: (FishColor)fishColor andForFishOrientation:(FishOrientation) fishOrientation{
    
    
    /** Get a reference to the shared texture atlas manager **/
    TextureAtlasManager* textureAtlasManager = [TextureAtlasManager sharedManager];
    
    NSString* textureName;
    SKTexture* fishTexture;
    
    switch(fishColor){
        case ORANGE:
            textureName = (fishOrientation == RIGHT) ? OrangeFishBonyEmptyTextureName : OrangeFishBonyEmptyTextureLeftName;
            fishTexture = [textureAtlasManager getColoredFishTextureWithName:textureName];
            break;
        case RED:
            textureName = (fishOrientation == RIGHT) ? RedFishBonyEmptyTextureName : RedFishBonyEmptyTextureLeftName;
            fishTexture = [textureAtlasManager getColoredFishTextureWithName:textureName];
            break;
        case BLUE:
            textureName = (fishOrientation == RIGHT) ? BlueFishBonyEmptyTextureName : BlueFishBonyEmptyTextureLeftName;
            fishTexture = [textureAtlasManager getColoredFishTextureWithName:textureName];
            break;
        case PINK:
            textureName = (fishOrientation == RIGHT) ? PinkFishBonyEmptyTextureName : PinkFishBonyEmptyTextureLeftName;
            fishTexture = [textureAtlasManager getColoredFishTextureWithName:textureName];
            break;
        case GREEN:
            textureName = (fishOrientation == RIGHT) ? GreenFishBonyEmptyTextureName : GreenFishBonyEmptyTextureLeftName;
            fishTexture = [textureAtlasManager getColoredFishTextureWithName: textureName];
            break;
    }
    
    return fishTexture;
    
}

+ (NSString*) getFishColorNameForFishColorEnum:(FishColor)fishColor{
    
    switch (fishColor) {
        case RED:
            return @"RED";
        case BLUE:
            return @"BLUE";
        case GREEN:
            return @"GREEN";
        case ORANGE:
            return @"ORANGE";
        case PINK:
            return @"PINK";
    }
}


@end
