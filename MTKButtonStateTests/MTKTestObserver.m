//
//  MTKTestObserver.m
//  MTKButtonState
//
//  Created by Martin Kiss on 22.4.13.
//  Copyright (c) 2013 iMartin Kiss. All rights reserved.
//

#import "MTKTestObserver.h"

@implementation MTKTestObserver

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    if (self.block) {
        id value = [object valueForKeyPath:keyPath];
        self.block(value);
    }
}

@end
