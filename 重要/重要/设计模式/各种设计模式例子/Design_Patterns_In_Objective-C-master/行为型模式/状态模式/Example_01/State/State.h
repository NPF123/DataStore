//
//  State.h
//  State
//
//  Created by 伟明 毕 on 15/2/24.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Work;

@protocol State <NSObject>

- (void)writeProgram:(Work *)work;

@end

@interface State : NSObject

@end
