//
//  Loon.h
//  Proxy
//
//  Created by 伟明 毕 on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LoonDelegate <NSObject>

- (void)eat;
- (void)dressing;

@end

@interface Loon : NSObject <LoonDelegate>

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) NSObject <LoonDelegate> *delegate;

- (instancetype)initWithName:(NSString *)name;

- (void)loonEat;

- (void)loonDressing;

@end
