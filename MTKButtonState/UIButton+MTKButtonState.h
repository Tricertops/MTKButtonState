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



/// Public category which add UIButton properties for 'states'.
/// NOTE: Word 'state' always refer to MTKButtonState objects. Term 'control state' refer to standard UIControlState value.
@interface UIButton (MTKButtonState)


/// Accessors for most used button states.
@property (nonatomic, readonly) MTKButtonState *normalState;
@property (nonatomic, readonly) MTKButtonState *disabledState;
@property (nonatomic, readonly) MTKButtonState *highlightedState;
@property (nonatomic, readonly) MTKButtonState *selectedState;
@property (nonatomic, readonly) MTKButtonState *selectedHighlightedState;

/// You can use this to access any other non-standard button states.
- (MTKButtonState *)stateForControlState:(UIControlState)controlState;


@end
