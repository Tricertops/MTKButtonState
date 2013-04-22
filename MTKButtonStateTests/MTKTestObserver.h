//
//  MTKTestObserver.h
//  MTKButtonState
//
//  Created by Martin Kiss on 22.4.13.
//  Copyright (c) 2013 iMartin Kiss. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MTKTestObserver : NSObject

@property (nonatomic, readwrite, copy) void (^block)(id value);

@end
