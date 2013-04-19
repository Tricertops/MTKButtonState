//
//  MTKAppDelegate.m
//  Example
//
//  Created by Martin Kiss on 19.4.13.
//  Copyright (c) 2013 iMartin Kiss. All rights reserved.
//

#import "MTKAppDelegate.h"

#import "UIButton+MTKButtonState.h"



@implementation MTKAppDelegate





- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = viewController;
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    button.titleLabel.font = [UIFont boldSystemFontOfSize:[UIFont buttonFontSize]];
    button.normalState.title = @"Normal";
    button.normalState.titleColor = [UIColor blackColor];
    button.highlightedState.title = @"Highlighted";
    button.highlightedState.titleColor = [UIColor redColor];
    button.selectedState.title = @"Selected";
    button.selectedState.titleColor = [UIColor blueColor];
    button.selectedHighlightedState.title = @"Selected Highlighted";
    button.selectedHighlightedState.titleColor = [UIColor greenColor];
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
    
    button.center = CGPointMake(viewController.view.bounds.size.width/2, viewController.view.bounds.size.height/2);
    [viewController.view addSubview:button];
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)buttonTapped:(UIButton *)button {
    button.selected = ! button.selected;
}





@end
