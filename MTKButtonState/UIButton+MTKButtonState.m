//
//  UIButton+MTKButtonState.m
//  MTKButtonState
//
//  Created by Martin Kiss on 19.4.13.
//  Copyright (c) 2013 iMartin Kiss. All rights reserved.
//

#import "UIButton+MTKButtonState.h"

#import <objc/runtime.h>





@implementation UIButton (MTKButtonState)





- (NSMutableDictionary *)MTK_states {
    NSMutableDictionary *states = objc_getAssociatedObject(self, _cmd);
    
    if ( ! states) {
        states = [[NSMutableDictionary alloc] init];
        objc_setAssociatedObject(self, _cmd, states, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    
    return states;
}


- (MTKButtonState *)stateForControlState:(UIControlState)controlState {
    NSMutableDictionary *statesByControlState = [self MTK_states];
    MTKButtonState *state = [statesByControlState objectForKey:@(controlState)];
    
    if ( ! state) {
        state = [[MTKButtonState alloc] initWithButton:self controlState:controlState];
        [statesByControlState setObject:state forKey:@(controlState)];
    }
    
    return state;
}


- (MTKButtonState *)normalState {
    return [self stateForControlState:UIControlStateNormal];
}


- (MTKButtonState *)disabledState {
    return [self stateForControlState:UIControlStateDisabled];
}


- (MTKButtonState *)highlightedState {
    return [self stateForControlState:UIControlStateHighlighted];
}


- (MTKButtonState *)selectedState {
    return [self stateForControlState:UIControlStateSelected];
}


- (MTKButtonState *)selectedHighlightedState {
    return [self stateForControlState:(UIControlStateSelected | UIControlStateHighlighted)];
}





@end
