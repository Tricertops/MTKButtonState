//
//  MTKButtonStateTests.m
//  MTKButtonStateTests
//
//  Created by Martin Kiss on 19.4.13.
//  Copyright (c) 2013 iMartin Kiss. All rights reserved.
//

#import "MTKButtonStateTests.h"
#import "UIButton+MTKButtonState.h"

#import "MTKTestObserver.h"





@implementation MTKButtonStateTests





- (void)testRepeatedStateAccess {
    UIButton *button = [[UIButton alloc] init];
    
    MTKButtonState *state1 = [button stateForControlState:UIControlStateHighlighted];
    MTKButtonState *state2 = [button stateForControlState:UIControlStateHighlighted];
    
    STAssertEqualObjects(state1, state2, @"Multiple button state accesses must return the same object");
}



- (void)testReflectingChanges {
    UIButton *button = [[UIButton alloc] init];
    
    [button setTitle:@"test" forState:UIControlStateHighlighted];
    STAssertEqualObjects(button.highlightedState.title, @"test", @"Setting properties using standard method must immediatelly reflect in state object");
    
    button.highlightedState.titleColor = [UIColor yellowColor];
    STAssertEqualObjects([button titleColorForState:UIControlStateHighlighted], [UIColor yellowColor], @"Setting properties using state objects must immediatelly reflect in standard access method");
}



- (void)testValuesOfCurrentState {
    UIButton *button = [[UIButton alloc] init];
    
    button.highlightedState.title = @"test";
    button.highlightedState.titleColor = [UIColor yellowColor];
    button.highlighted = YES;
    
    STAssertEqualObjects(button.currentState.title, @"test", @"Current state object must return current values");
    STAssertEqualObjects(button.currentState.titleColor, [UIColor yellowColor], @"Current state object must return current values");
}



- (void)testCurrentStateObservation {
    UIButton *button = [[UIButton alloc] init];
    MTKTestObserver *observer = [[MTKTestObserver alloc] init];
    
    __block MTKButtonState *observedState = nil;
    
    observer.block = ^(MTKButtonState *state) {
        observedState = state;
    };
    
    [button addObserver:observer forKeyPath:@keypath(button, currentState) options:NSKeyValueObservingOptionInitial context:nil];
    STAssertEqualObjects(observedState, button.normalState, @"Current state must initially be normal state");
    observedState = nil;
    
    button.highlighted = YES;
    STAssertEqualObjects(observedState, button.highlightedState, @"Current state must be equal to hightlighted state if the button is highlighted");
    
    [button removeObserver:observer forKeyPath:@keypath(button, currentState)];
}





@end
