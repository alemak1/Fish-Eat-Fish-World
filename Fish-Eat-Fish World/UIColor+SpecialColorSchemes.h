//
//  UIColor+SpecialColorSchemes.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/2/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef UIColor_SpecialColorSchemes_h
#define UIColor_SpecialColorSchemes_h


#endif /* UIColor_SpecialColorSchemes_h */


#import <UIKit/UIKit.h>

@interface UIColor(SpecialColorSchemes)

/** Nested Enums **/

typedef enum backgroundColors{
    SAND_YELLOW_LIGHT,
    SAND_YELLOW_MEDIUM,
    SAND_YELLOW_DARK,
    DIRT_BROWN_LIGHT,
    DIRT_BROWN_MEDIUM,
    DIRT_BROWN_DARK,
    PLANT_DARK_GREEN,
    PLANT_LIGHT_GREEN,
    PLANT_BLUE,
    WATER_BLUE
} BackgroundColor;

/** Class Methods **/

+ (UIColor*) getNumberYellow;
+ (UIColor*) getUIColorForBackgroundColor: (BackgroundColor)backgroundColor;


/** Instance Methods **/

- (UIColor*) getApproximateInvertedColor;

@end
