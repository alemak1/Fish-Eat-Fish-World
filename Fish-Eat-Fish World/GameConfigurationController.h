//
//  GameConfigurationController.h
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/5/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#ifndef GameConfigurationController_h
#define GameConfigurationController_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface GameConfigurationController : UIViewController

@property UISegmentedControl *segmentedControl;

@property UIView *containerView;


@property UIViewController* currentChildViewController;

@property (readonly) CGRect childViewControllerFrame;
@property (readonly) UIView* currentChildViewControllerView;


//MARK: ********** Computed properties for formatting Segmented Control Constraints

@property (readonly) NSLayoutYAxisAnchor* segControlTopAnchor;
@property (readonly) NSLayoutYAxisAnchor* segControlBottomAnchor;
@property (readonly) NSLayoutXAxisAnchor* segControlLeftAnchor;
@property (readonly) NSLayoutXAxisAnchor* segControlRightAnchor;

@property (readonly) NSLayoutConstraint* segControlTopConstraint;
@property (readonly) NSLayoutConstraint* segControlBottomConstraint;
@property (readonly) NSLayoutConstraint* segControlLeftConstraint;
@property (readonly) NSLayoutConstraint* segControlRightConstraint;


//MARK: *********** Computed properties for formatting Container View constraints

/** The anchors for the container view can be access via computed properties **/

@property (readonly) NSLayoutYAxisAnchor* containerTopAnchor;
@property (readonly) NSLayoutYAxisAnchor* containerBottomAnchor;
@property (readonly) NSLayoutXAxisAnchor* containerLeftAnchor;
@property (readonly) NSLayoutXAxisAnchor* containerRightAnchor;

/** The constraints for the container view can also be accessed view computed properties **/

@property (readonly) NSLayoutConstraint* containerTopConstraint;
@property (readonly) NSLayoutConstraint* containerBottomConstraint;
@property (readonly) NSLayoutConstraint* containerLeftConstraint;
@property (readonly) NSLayoutConstraint* containerRightConstraint;





@end

#endif /* GameConfigurationController_h */
