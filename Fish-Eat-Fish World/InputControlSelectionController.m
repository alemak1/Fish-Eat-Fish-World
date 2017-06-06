//
//  InputControlSelectionController.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/5/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputControlSelectionController.h"
#import "InputControlType.h"

@implementation InputControlSelectionController


- (void) didMoveToParentViewController:(UIViewController *)parent{
    
    [_inputControlPicker setDelegate:self];
    [_inputControlPicker setDataSource:self];
    
    
}

- (void) didReceiveMemoryWarning{
    
}


/** Delegate Method for UIPickerView **/

- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    InputControlType inputControlType = row;
    
    UIImage* inputControlImage = [self getImageForInputControlType:inputControlType];
    
    NSString* inputControlName = [self getImageNameForInputControlType:inputControlType];
    
    [self setSelectedInputControl: inputControlName];
    
    [_inputControlImage setImage:inputControlImage];
}


// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
}
// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)componen{
    return 6;
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

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    InputControlType inputControlType = row;
    
    return [self getControlTypeNameFromInputControlType:inputControlType];
}

// these methods return either a plain NSString, a NSAttributedString, or a view (e.g UILabel) to display the row for the component.
// for the view versions, we cache any hidden and thus unused views and pass them back for reuse.
// If you return back a different object, the old one will be released. the view will be centered in the row rect

/**
- (nullable NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(nullable UIView *)view{
    
}

**/


/** Private helper methods **/

- (UIImage*) getImageForInputControlType: (InputControlType) inputControlType{
    NSString* imageName = [self getImageNameForInputControlType:inputControlType];
    
    return [UIImage imageNamed:imageName];
}


- (NSString*) getImageNameForInputControlType:(InputControlType)inputControlType{
    
    switch(inputControlType){
        case ShadedLightCrossLargeDot:
            return @"shadedLight04";
        case ShadedLightCrossSmallDot:
            return @"shadedLight09";
        case ShadedLightRoundBigArrow:
            return @"shadedLight01";
        case ShadedLightRoundSmallArrow:
            return @"shadedLight07";
        case ShadedLightSquareLargeDot:
            return @"shadedLight02";
        case ShadedLightSquareSmallDot:
            return @"shadedLight08";
    }
}

- (NSString*) getControlTypeNameFromInputControlType: (InputControlType)inputControlType{
    
    return [INPUT_CONTROL_TYPES objectAtIndex:inputControlType];
}


@end
