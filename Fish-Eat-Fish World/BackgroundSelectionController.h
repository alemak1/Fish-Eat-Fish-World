//
//  BackgroundSelectionController.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/6/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef BackgroundSelectionController_h
#define BackgroundSelectionController_h

#import <UIKit/UIKit.h>
#import "BackgroundSceneCategory.h"

@interface BackgroundSelectionController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *backgroundPicker;

@property (weak, nonatomic) IBOutlet UIImageView *backgroundSceneThumbnail;

@property BackgroundSceneCategory currentBackgroundScene;

@end

#endif /* BackgroundSelectionController_h */
