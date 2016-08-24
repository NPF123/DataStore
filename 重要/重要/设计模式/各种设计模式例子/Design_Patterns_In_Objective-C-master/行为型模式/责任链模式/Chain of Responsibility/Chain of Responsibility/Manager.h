//
//  Manager.h
//  Chain of Responsibility
//
//  Created by 伟明 毕 on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Request.h"

@protocol Manager <NSObject>

- (void)requestApplications:(Request *)request;

@end

@interface Manager : NSObject
{
    @protected
    // 管理者的上级
    Manager <Manager> *_superior;
}

// 设置上级管理者
- (void)setSuperior:(Manager <Manager>*)superior;

@end
