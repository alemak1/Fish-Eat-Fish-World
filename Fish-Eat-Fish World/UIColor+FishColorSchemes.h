//
//  UIColor+FishColorSchemes.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/2/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (FishColorSchemes)

/** Nested Enums for Different Fish Color Groups **/

typedef enum bonyFishColors{
    BONE_BEIGE,
    BONE_GREY
} BonyFishColor;

typedef enum eelColors{
    LIGHT_GREY,
    MEDIUM_GREY,
    DARK_GREY
} EelColor;

typedef enum greenFishColor{
    LIGHT_GREEN,
    MEDIUM_GREEN,
    DARK_GREEN
    
} GreenFishColor;


typedef enum blueFishColors{
    LIGHT_BLUE,
    MEDIUM_BLUE,
    DARK_BLUE
} BlueFishColor;


typedef enum pinkFishColors{
    LIGHT_PINK,
    MEDIUM_PINK,
    DARK_PINK
} PinkFishColor;

typedef enum redFishColors{
    LIGHT_RED,
    MEDIUM_RED,
    DARK_RED
} RedFishColor;

typedef enum orangeFishColors{
    LIGHT_ORANGE,
    MEDIUM_ORANGE,
    DARK_ORANGE
} OrangeFishColor;


/** Blowfish Colors **/

+ (UIColor*) getBlowfishDarkBrown;
+ (UIColor*) getBlowfishLightBrown;
+ (UIColor*) getBlowfishBeige;
+ (NSArray<UIColor *>*) getBlowFishColors;

/** GreenFish Colors **/

+ (UIColor*) getUIColorForGreenFishColor:(GreenFishColor)greenFishColor;

/** BlueFish Colors **/

+ (UIColor*) getUIColorForBlueFishColor: (BlueFishColor)blueFishColor;

/** PinkFish Colors **/

+ (UIColor*) getUIColorForPinkFishColor: (PinkFishColor)pinkFishColor;

/** RedFish Colors **/

+ (UIColor*) getUIColorForRedFishColor: (RedFishColor)redFishColor;

/** OrangeFish Colors **/

+ (UIColor*) getUIColorForOrangeFishColors:(OrangeFishColor)orangeFishColor;

@end
