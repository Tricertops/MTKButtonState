//
//  MTKButtonState.h
//  MTKButtonState
//
//  Created by Martin Kiss on 19.4.13.
//  Copyright (c) 2013 iMartin Kiss. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define keypath(OBJ, PATH) \
    (((void)(NO && ((void)OBJ.PATH, NO)), # PATH))



@interface MTKButtonState : NSObject


- (id)initWithButton:(UIButton *)button controlState:(UIControlState)controlState;
@property (nonatomic, readonly, weak) UIButton *button;
@property (nonatomic, readonly) UIControlState controlState;

@property (nonatomic, readwrite) NSString *title;
@property (nonatomic, readwrite) NSAttributedString *attributedTitle;
@property (nonatomic, readwrite) UIColor *titleColor;
@property (nonatomic, readwrite) UIColor *titleShadowColor;
@property (nonatomic, readwrite) UIImage *image;
@property (nonatomic, readwrite) UIImage *backgroundImage;


@end
