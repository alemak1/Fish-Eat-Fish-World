//
//  UIColor+SpecialColorSchemes.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/2/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "UIColor+SpecialColorSchemes.h"

@implementation UIColor(SpecialColorSchemes)

+ (UIColor*) getNumberYellow{
    
    UIColor* numberYellow = [[UIColor alloc] initWithRed:255.0/255.0 green:205.0/255.0 blue:0.0/0.0 alpha:1.00];
    
    return numberYellow;
}


- (UIColor*) getApproximateInvertedColor{
    
    CGColorRef cgColorRef = [self CGColor];
    
    const CGFloat* colorComponents = CGColorGetComponents(cgColorRef);
    
    CGFloat red = colorComponents[0];
    CGFloat green = colorComponents[1];
    CGFloat blue = colorComponents[2];
    
    CGFloat invertedRed = 1 - red;
    CGFloat invertedGreen = 1 - green;
    CGFloat invertedBlue = 1 - blue;
    
    return [UIColor colorWithRed:invertedRed green:invertedGreen blue:invertedBlue alpha:1.00];

    
}



@end
