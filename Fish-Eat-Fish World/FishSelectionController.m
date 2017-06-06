//
//  FishSelectionController.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/5/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FishSelectionController.h"

@implementation FishSelectionController


- (void) didMoveToParentViewController:(UIViewController *)parent{
    
    [_fishPickerControl setDelegate:self];
    [_fishPickerControl setDataSource:self];
    
}

- (void) didReceiveMemoryWarning{
    
    
}


/** Delegate Method for UIPickerView **/

- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    FishColor selectedFishColor = row;
    
    [self setSelectedFishColor:selectedFishColor];

    UIImage* fishImage = [self getImageForFishColor:selectedFishColor];
    
    [_selectedFishImageView setImage:fishImage];
    
    
}


// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
}
// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    NSInteger numberOfFishColors = [ALL_FISH_COLORS count];
    
    return numberOfFishColors;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [ALL_FISH_COLOR_NAMES objectAtIndex:row];
    
}

// returns width of column and height of row for each component.
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    
    
    CGFloat currentScreenWidth = [[UIScreen mainScreen] bounds].size.width;
    
    /**
     
     UIUserInterfaceSizeClass currentHorizontalSizeClass = [[self traitCollection] horizontalSizeClass];
     
     switch (currentHorizontalSizeClass) {
     case UIUserInterfaceSizeClassCompact:
     NSLog(@"UIPickerView: Returning the width value for compact horizontal size class...");
     return currentScreenWidth*0.90;
     case UIUserInterfaceSizeClassRegular:
     NSLog(@"UIPickerView: Returning the width value for compact vertical size class...");
     return currentScreenWidth*0.90;
     default:
     break;
     }
     **/
    
    return 500;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 20;
}



- (UIImage*) getImageForFishColor: (FishColor)fishColor{
    
    NSString* imageName = [self getImageNameForFishColor:fishColor];
    
    return [UIImage imageNamed: imageName];
}


- (NSString*) getImageNameForFishColor: (FishColor)fishColor{
    
    switch (fishColor) {
        case RED:
            return @"fishTile_078";
        case BLUE:
            return @"fishTile_076";
        case GREEN:
            return @"fishTile_072";
        case ORANGE:
            return @"fishTile_080";
        case PINK:
            return @"fishTile_074";
    }
}


@end
