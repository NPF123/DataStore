//
//  Graphics.h
//  Example_01
//
//  Created by btw on 15/3/12.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Graphics <NSObject>

- (void)draw;
- (void)erase;

@end

@interface Graphics : NSObject

@end
