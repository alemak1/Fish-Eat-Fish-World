//
//  BackgroundSelectionController.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/6/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BackgroundSelectionController.h"
#import "BackgroundSceneCategory.h"

@implementation BackgroundSelectionController

- (void) viewDidLoad{
    
    [_backgroundPicker setDelegate:self];
    [_backgroundPicker setDataSource:self];
    
}

- (void) didMoveToParentViewController:(UIViewController *)parent{
    
}


- (void) didReceiveMemoryWarning{
    
    
    
}


- (UIImage*) getBackgroundSceneThumbnail: (BackgroundSceneCategory)backgroundSceneCategory{
    
    switch (backgroundSceneCategory) {
        case SandFloorBackground:
            return [UIImage imageNamed:[self getBackgroundSceneFilename:backgroundSceneCategory]];
        case DirtFloorBackground:
            return [UIImage imageNamed:[self getBackgroundSceneFilename:backgroundSceneCategory]];
        case RockFloorBackground:
            return [UIImage imageNamed:[self getBackgroundSceneFilename:backgroundSceneCategory]];
    }
    
}


- (NSString*) getBackgroundSceneTItle: (BackgroundSceneCategory)backgroundSceneCategory{
    
    switch (backgroundSceneCategory) {
        case SandFloorBackground:
            return @"Sand Floor Background";
        case DirtFloorBackground:
            return @"Dirt Floor Background";
        case RockFloorBackground:
            return @"Rock Floor Background";
    }
}

- (NSString*) getBackgroundSceneFilename: (BackgroundSceneCategory)backgroundSceneCategory{
    
    switch (backgroundSceneCategory) {
        case SandFloorBackground:
            return @"OceanScene1";
        case DirtFloorBackground:
            return @"OceanScene2";
        case RockFloorBackground:
            return @"OceanScene3";
    }
}


- (void) pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    
    [_backgroundSceneThumbnail setImage:[self getBackgroundSceneThumbnail:row]];
    
    [self setCurrentBackgroundScene:row];
    
}


- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 40;
}


- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
    return [self getBackgroundSceneTItle:row];
    
}

// returns width of column and height of row for each component.
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    

    
    return 500;
}

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
    
}
// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    
    
   return [BACKGROUND_SCENE_CATEGORIES count];

}





@end
