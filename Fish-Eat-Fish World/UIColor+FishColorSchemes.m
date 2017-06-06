//
//  UIColor+FishColorSchemes.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/2/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import "UIColor+FishColorSchemes.h"

@implementation UIColor (FishColorSchemes)


//Static methods for getting fish colors


/** Blowfish Colors **/

+ (UIColor*) getBlowfishDarkBrown{
    return [UIColor colorWithRed:153.0/255.0 green:102.0/255.0 blue:51.0/255.0 alpha:1.00];
}

+ (UIColor*) getBlowfishLightBrown{
    return [UIColor colorWithRed:197.0/255.0 green:135.0/255.0 blue:65.0/255.0 alpha:1.00];
}

+ (UIColor*) getBlowfishBeige{
    return [UIColor colorWithRed:238.0/255.0 green:229.0/255.0 blue:181.0/255.0 alpha:1.00];
}

+ (NSArray<UIColor *>*) getBlowFishColors{
    
    UIColor* darkBrown = [[UIColor alloc] initWithRed:153.0/255.0 green:102.0/255.0 blue:51.0/255.0 alpha:1.00];
    
    UIColor* lightBrown = [[UIColor alloc] initWithRed:197.0/255.0 green:135.0/255.0 blue:65.0/255.0 alpha:1.00];
    
    NSArray* blowFishColors = [NSArray arrayWithObjects:darkBrown,lightBrown, nil];
    
    return blowFishColors;
    
}


/** GreenFish Colors **/


+ (UIColor*) getUIColorForGreenFishColor:(GreenFishColor)greenFishColor{
    
    UIColor* greenFishLightGreen = [[UIColor alloc] initWithRed:29.0/255.0 green:200.0/255.0 blue:105.0/255.0 alpha:1.00];
    
    UIColor* greenFishMediumGreen = [[UIColor alloc] initWithRed:26.0/255.0 green:175.0/255.0 blue:93.0/255.0 alpha:1.00];
    
    UIColor* greenFishDarkGreen = [[UIColor alloc] initWithRed:20.0/255.0 green:134.0/255.0 blue:70.0/255.0 alpha:1.00];
    
    switch (greenFishColor) {
        case LIGHT_GREEN:
            return greenFishLightGreen;
        case MEDIUM_GREEN:
            return greenFishMediumGreen;
        case DARK_GREEN:
            return greenFishDarkGreen;
        default:
            break;
    }
    
}

/** BlueFish Colors **/
    

    
+ (UIColor*) getUIColorForBlueFishColor: (BlueFishColor)blueFishColor{
    
    UIColor* lightBlue = [UIColor colorWithRed:46.0/255.0 green:164.0/255.0 blue:241.0/255.0 alpha:1.00];
    
    UIColor* mediumBlue = [UIColor colorWithRed:44.0/255.0 green:151.0/255.0 blue:222.0/255.0 alpha:1.00];
    
    UIColor* darkBlue = [UIColor colorWithRed:40.0/255.0 green:137.0/255.0 blue:200.0/255.0 alpha:1.00];
    
    switch (blueFishColor) {
        case LIGHT_BLUE:
            return lightBlue;
        case MEDIUM_BLUE:
            return mediumBlue;
        case DARK_BLUE:
            return darkBlue;
      
    }
    
}



/** Pink Fish Colors **/


+ (UIColor*) getUIColorForPinkFishColor: (PinkFishColor)pinkFishColor{
    
    UIColor* lightPink = [UIColor colorWithRed:229.0/255.0 green:149.0/255.0 blue:239.0/255.0 alpha:1.00];
    
    UIColor* mediumPink = [UIColor colorWithRed:202.0/255.0 green:131.0/255.0 blue:210.0/255.0 alpha:1.00];
    
    UIColor* darkPink = [UIColor colorWithRed:143.0/255.0 green:94.0/255.0 blue:149.0/255.0 alpha:1.00];
    
    switch (pinkFishColor) {
        case LIGHT_PINK:
            return lightPink;
        case MEDIUM_PINK:
            return mediumPink;
        case DARK_PINK:
            return darkPink;
    }
}



+(UIColor*) getUIColorForRedFishColor: (RedFishColor)redFishColor{

    UIColor* lightRed = [UIColor colorWithRed:248.0/255.0 green:79.0/255.0 blue:55.0/255.0 alpha:1.00];
    
    UIColor* mediumRed = [UIColor colorWithRed:233.0/255.0 green:75.0/255.0 blue:53.0/255.0 alpha:1.00];
    
    UIColor* darkRed = [UIColor colorWithRed:193.0/255.0 green:60.0/255.0 blue:43.0/255.0 alpha:1.00];
    
    switch (redFishColor) {
        case LIGHT_RED:
            return lightRed;
        case MEDIUM_RED:
            return mediumRed;
        case DARK_RED:
            return darkRed;
    }
}



+ (UIColor*) getUIColorForOrangeFishColors:(OrangeFishColor)orangeFishColor{
    
    UIColor* lightOrange = [UIColor colorWithRed:254.0/255.0 green:179.0/255.0 blue:54.0/255.0 alpha:1.00];
    
    UIColor* mediumOrange = [UIColor colorWithRed:255.0/255.0 green:154.0/255.0 blue:0.00/0.00 alpha:1.00];
    
    UIColor* darkOrange = [UIColor colorWithRed:238.0/255.0 green:142.0/255.0 blue:0.0/0.0 alpha:1.00];
    
    switch (orangeFishColor) {
        case LIGHT_ORANGE:
            return lightOrange;
        case MEDIUM_ORANGE:
            return mediumOrange;
        case DARK_ORANGE:
            return darkOrange;
    }
}



@end
