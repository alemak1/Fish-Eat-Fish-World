//
//  FishSelectionController.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/5/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef FishSelectionController_h
#define FishSelectionController_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h> 
#import "FishColor.h"

@interface FishSelectionController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>


@property (weak, nonatomic) IBOutlet UIImageView *selectedFishImageView;

@property (weak, nonatomic) IBOutlet UIPickerView *fishPickerControl;

@property FishColor selectedFishColor;

@end

#endif /* FishSelectionController_h */
