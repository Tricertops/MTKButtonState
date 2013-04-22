//
//  MTKButtonState.m
//  MTKButtonState
//
//  Created by Martin Kiss on 19.4.13.
//  Copyright (c) 2013 iMartin Kiss. All rights reserved.
//

#import "MTKButtonState.h"



@interface MTKButtonState ()

@property (nonatomic, readwrite, weak) UIButton *button;
@property (nonatomic, readwrite) UIControlState controlState;

@end





@implementation MTKButtonState





- (id)init {
    return [self initWithButton:nil controlState:UIControlStateNormal];
}


- (id)initWithButton:(UIButton *)button controlState:(UIControlState)controlState {
    self = [super init];
    if (self) {
        NSParameterAssert(button);
        
        self.button = button;
        self.controlState = controlState;
    }
    return self;
}



#pragma mark Title


- (NSString *)title {
    return [self.button titleForState:self.controlState];
}


- (void)setTitle:(NSString *)title {
    [self.button setTitle:title forState:self.controlState];
}


+ (NSSet *)keyPathsForValuesAffectingTitle {
    MTKButtonState *state; // because of @keypath
    return [NSSet setWithObjects:@keypath(state, controlState), @keypath(state, button.state), nil];
}



#pragma mark Attributed Title


- (NSAttributedString *)attributedTitle {
    return [self.button attributedTitleForState:self.controlState];
}

- (void)setAttributedTitle:(NSAttributedString *)attributedTitle {
    [self.button setAttributedTitle:attributedTitle forState:self.controlState];
}


+ (NSSet *)keyPathsForValuesAffectingAttributedTitle {
    MTKButtonState *state; // because of @keypath
    return [NSSet setWithObjects:@keypath(state, controlState), @keypath(state, button.state), nil];
}



#pragma mark Title Color


- (UIColor *)titleColor {
    return [self.button titleColorForState:self.controlState];
}


- (void)setTitleColor:(UIColor *)titleColor {
    [self.button setTitleColor:titleColor forState:self.controlState];
}


+ (NSSet *)keyPathsForValuesAffectingTitleColor {
    MTKButtonState *state; // because of @keypath
    return [NSSet setWithObjects:@keypath(state, controlState), @keypath(state, button.state), nil];
}



#pragma mark Title Shadow Color


- (UIColor *)titleShadowColor {
    return [self.button titleShadowColorForState:self.controlState];
}


- (void)setTitleShadowColor:(UIColor *)titleShadowColor {
    [self.button setTitleShadowColor:titleShadowColor forState:self.controlState];
}


+ (NSSet *)keyPathsForValuesAffectingTitleShadowColor {
    MTKButtonState *state; // because of @keypath
    return [NSSet setWithObjects:@keypath(state, controlState), @keypath(state, button.state), nil];
}



#pragma mark Image


- (UIImage *)image {
    return [self.button imageForState:self.controlState];
}


- (void)setImage:(UIImage *)image {
    [self.button setImage:image forState:self.controlState];
}


+ (NSSet *)keyPathsForValuesAffectingImage {
    MTKButtonState *state; // because of @keypath
    return [NSSet setWithObjects:@keypath(state, controlState), @keypath(state, button.state), nil];
}



#pragma mark Background Image


- (UIImage *)backgroundImage {
    return [self.button backgroundImageForState:self.controlState];
}


- (void)setBackgroundImage:(UIImage *)backgroundImage {
    [self.button setBackgroundImage:backgroundImage forState:self.controlState];
}


+ (NSSet *)keyPathsForValuesAffectingBackgroundImage {
    MTKButtonState *state; // because of @keypath
    return [NSSet setWithObjects:@keypath(state, controlState), @keypath(state, button.state), nil];
}





@end


