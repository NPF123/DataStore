//
//  Searcher.h
//  Example_02
//
//  Created by Bi Weiming on 15/7/2.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import <Foundation/Foundation.h>

/** 抽象查询类，充当抽象主题角色，它声明了-doSearchWithUserId:keyword:方法。 */
@protocol Searcher <NSObject>

- (NSString *)doSearchWithUserId:(NSString *)userID keyword:(NSString *)keyword;

@end
