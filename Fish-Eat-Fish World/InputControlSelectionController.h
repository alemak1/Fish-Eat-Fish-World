//
//  InputControlSelectionController.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/5/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef InputControlSelectionController_h
#define InputControlSelectionController_h

#import <UIKit/UIKit.h>

@interface InputControlSelectionController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UIPickerView *inputControlPicker;

@property (weak, nonatomic) IBOutlet UIImageView *inputControlImage;

@property NSString* selectedInputControl;

@end

#endif /* InputControlSelectionController_h */
