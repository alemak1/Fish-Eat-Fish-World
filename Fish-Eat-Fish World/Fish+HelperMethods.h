//
//  Fish+HelperMethods.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/4/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef Fish_HelperMethods_h
#define Fish_HelperMethods_h

#import <SpriteKit/SpriteKit.h>
#import "Fish.h"
#import "FishColor.h"
#import "CollisionConfiguration.h"

@interface Fish(HelperMethods)

+ (SKTexture*) getTextureForFishColor:(FishColor)fishColor andForFishOrientation: (FishOrientation)fishOrientation;

+ (SKTexture*) getRandomFishColorTexture;

+ (SKTexture*) getSkeletonTextureForFishColor: (FishColor)fishColor andForFishOrientation:(FishOrientation) fishOrientation;

+ (CollisionConfiguration*) getCollisionConfigurationForFishColor: (FishColor) fishColor;


+ (int) getRandomFishColor;

@end

#endif /* Fish_HelperMethods_h */
