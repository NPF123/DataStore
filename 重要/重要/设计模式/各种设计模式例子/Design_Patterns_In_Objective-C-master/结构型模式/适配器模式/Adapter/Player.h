//
//  Player.h
//  Adapter
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Player <NSObject>

- (void)attack;
- (void)defense;

@end

@interface Player : NSObject

@property (assign, nonatomic) char *name;

- (instancetype)initWithName:(char *)name;

@end
