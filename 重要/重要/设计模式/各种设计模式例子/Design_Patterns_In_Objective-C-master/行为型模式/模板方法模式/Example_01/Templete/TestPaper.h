//
//  TestPaper.h
//  Templete
//
//  Created by 伟明 毕 on 15/2/23.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TestPaper <NSObject>

- (NSString *)test1Answer;
- (NSString *)test2Answer;

@end

@interface TestPaper : NSObject

- (void)test1;
- (void)test2;

@end
