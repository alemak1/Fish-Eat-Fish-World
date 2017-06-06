//
//  GameConfigurationController.m
//  Fish-Eat-Fish World
//
//  Created by Aleksander Makedonski on 6/5/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GameConfigurationController.h"
#import "FishSelectionController.h"
#import "InputControlSelectionController.h"


//TODO: **** Need to move the view from the current child view controller to the selected child view controller

@implementation GameConfigurationController

- (void) viewWillLayoutSubviews{
    
    [self.view setBackgroundColor:[UIColor orangeColor]];
    
    _containerView = [[UIView alloc] init];
    
    _segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"Input Control",
                                                                    @"Fish Color",
                                                                    @"Background Scene"]];
    [self.view addSubview:_segmentedControl];
    [self.view addSubview:_containerView];
    
    [[self segmentedControl] setTranslatesAutoresizingMaskIntoConstraints:NO];
    [[self containerView] setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [NSLayoutConstraint activateConstraints:@[
        [self containerTopConstraint],
        [self containerLeftConstraint],
        [self containerRightConstraint],
        [self containerBottomConstraint]

    ]];

    
    [_containerView setBackgroundColor:[UIColor cyanColor]];

    [NSLayoutConstraint activateConstraints:@[
         [self segControlTopConstraint],
         [self segControlRightConstraint],
         [self segControlBottomConstraint],
         [self segControlLeftConstraint]
    ]];
    
    [_segmentedControl setApportionsSegmentWidthsByContent:YES];
    
}

-(void) viewDidLoad{
    
    
    
    /** Instantiate the FishSelectionController and the InputControlSelectionController from the Main.storyboard **/
    
    UIStoryboard* mainStoryBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    FishSelectionController* fishSelectionController = [mainStoryBoard instantiateViewControllerWithIdentifier:@"FishSelectionController"];
    
    InputControlSelectionController* inputControlSelectionController = [mainStoryBoard instantiateViewControllerWithIdentifier:@"InputControlSelectionController"];
    
    [self setCurrentChildViewController:fishSelectionController];
    
    
    /** Add the storyboard-instantiaed view controllers as child controllers to the current custom container view controller **/

    
    [self displayContentController:fishSelectionController];

}


- (void) didMoveToParentViewController:(UIViewController *)parent{
    
}


- (void) didReceiveMemoryWarning{
    
    
}


- (void) displayContentController: (UIViewController*)content{
    
    [self addChildViewController:content];
    
    [self.view addSubview: [content view]];
    
    content.view.frame = [self frameForChildViewController];

    [content didMoveToParentViewController:self];
    
}

- (UIView*)currentChildViewControllerView{
    return [_currentChildViewController view];
}

- (CGRect) frameForChildViewController{
    return [_containerView bounds];
}

- (CGRect) frameForContentController{
    
    return [_containerView frame];
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
   
    if ([[segue identifier] isEqualToString:@"ToggleChildViewControllerSegue"]){
        
        
        
    }
    
}

- (void) performSegueWithIdentifier:(NSString *)identifier sender:(id)sender{

    
}


/**
- (IBAction)toggleChildVIewController:(UISegmentedControl *)sender {
    
    if(_currentChildControllerView != nil){
        [_currentChildControllerView removeFromSuperview];
    }
    
    UIViewController* fishViewController = [[self childViewControllers] objectAtIndex:0];

    switch([_segmentedControl selectedSegmentIndex]){
        case 0:
            [self setCurrentChildViewController:fishViewController];
            break;
        case 1:
            [self setCurrentChildViewController:fishViewController];
            break;
        case 2:
            [self setCurrentChildViewController:fishViewController];
            break;
    }
    
    [self layoutIfNecessaryChildViewController];
}
**/

- (UIViewController*) getChildViewControllerWithIdentifier: (NSString*)identifier{
    
    for (UIViewController* childViewController in [self childViewControllers]) {
        [[childViewController restorationIdentifier] isEqualToString:@""];
    }
    
    return @"";
}

/**
- (void) layoutIfNecessaryChildViewController{
    
    [_containerView addSubview:[self currentChildControllerView]];
    
    [self updateConstraintsForCurrentChildControllerView];
    
    [_containerView layoutIfNeeded];
}


- (void) updateConstraintsForCurrentChildControllerView{
    [_currentChildControllerView setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [NSLayoutConstraint activateConstraints:@[
        [[_currentChildControllerView topAnchor] constraintEqualToAnchor:[_containerView topAnchor]],
        [[_currentChildControllerView bottomAnchor] constraintEqualToAnchor:[_containerView bottomAnchor]],
        [[_currentChildControllerView leftAnchor] constraintEqualToAnchor:[_containerView leftAnchor]],
        [[_currentChildControllerView rightAnchor] constraintEqualToAnchor:[_containerView rightAnchor]]
        ]];
    
}
 
 **/



/** Implement the custom getter for the container view's anchor properties, which are defined as computed properties **/

- (NSLayoutYAxisAnchor*) segControlTopAnchor{
    return [_segmentedControl topAnchor];
}

- (NSLayoutYAxisAnchor*) segControlBottomAnchor{
    return [_segmentedControl bottomAnchor];
}

- (NSLayoutXAxisAnchor*) segControlLeftAnchor{
    return [_segmentedControl leftAnchor];
}

- (NSLayoutXAxisAnchor*) segControlRightAnchor{
    return [_segmentedControl rightAnchor];
}

- (NSLayoutConstraint*) segControlTopConstraint{
    
    return [[self segControlTopAnchor] constraintEqualToAnchor:[self containerBottomAnchor] constant:20.0];
}

- (NSLayoutConstraint*) segControlBottomConstraint{
    return [[self segControlBottomAnchor] constraintEqualToAnchor:[self.view bottomAnchor] constant:-20.0];
}

- (NSLayoutConstraint*) segControlLeftConstraint{
    return [[self segControlLeftAnchor] constraintEqualToAnchor:[self.view leftAnchor] constant:20.0];
}

- (NSLayoutConstraint*) segControlRightConstraint{
    return [[self segControlRightAnchor] constraintEqualToAnchor:[self.view rightAnchor] constant:-20.0];
}




/** Implement the custom getter for the container view's anchor properties, which are defined as computed properties **/

- (NSLayoutYAxisAnchor*) containerTopAnchor{
    return [_containerView topAnchor];
}

- (NSLayoutYAxisAnchor*) containerBottomAnchor{
    return [_containerView bottomAnchor];
}

- (NSLayoutXAxisAnchor*) containerLeftAnchor{
    return [_containerView leftAnchor];
}

- (NSLayoutXAxisAnchor*) containerRightAnchor{
    return [_containerView rightAnchor];
}


/** Implement custom getter for the container view constraints, which are defined computed properites **/

- (NSLayoutConstraint*) containerTopConstraint{
    
    return [[self containerTopAnchor] constraintEqualToAnchor:[self.view topAnchor] constant:20.0];
}

- (NSLayoutConstraint*) containerBottomConstraint{
    return [[self containerBottomAnchor] constraintEqualToAnchor:[_segmentedControl topAnchor] constant: -20.0];
}

- (NSLayoutConstraint*) containerLeftConstraint{
    return [[self containerLeftAnchor] constraintEqualToAnchor:[self.view leftAnchor] constant: 30.0];
}

- (NSLayoutConstraint*) containerRightConstraint{
    return [[self containerRightAnchor] constraintEqualToAnchor:[self.view rightAnchor] constant: -30.0];
}





@end
