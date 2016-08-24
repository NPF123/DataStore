//
//  Manager.m
//  Chain of Responsibility
//
//  Created by 伟明 毕 on 15/2/26.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import "Manager.h"

@implementation Manager

- (void)setSuperior:(Manager <Manager> *)superior {
    _superior = superior;
}

@end
