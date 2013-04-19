//
//  UIButton+MTKButtonState.h
//  MTKButtonState
//
//  Created by Martin Kiss on 19.4.13.
//  Copyright (c) 2013 iMartin Kiss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "MTKButtonState.h"



@interface UIButton (MTKButtonState)


- (MTKButtonState *)stateForControlState:(UIControlState)controlState;

@property (nonatomic, readonly) MTKButtonState *normalState;
@property (nonatomic, readonly) MTKButtonState *disabledState;
@property (nonatomic, readonly) MTKButtonState *highlightedState;
@property (nonatomic, readonly) MTKButtonState *selectedState;
@property (nonatomic, readonly) MTKButtonState *selectedHighlightedState;


@end
