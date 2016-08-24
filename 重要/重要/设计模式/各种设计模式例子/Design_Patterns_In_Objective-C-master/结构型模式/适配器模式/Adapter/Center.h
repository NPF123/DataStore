//
//  Center.h
//  Adapter
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Center : NSObject

@property (assign, nonatomic, readonly) char *name;

- (instancetype)initWithName:(char *)name;

- (void)防守;
- (void)进攻;

@end
