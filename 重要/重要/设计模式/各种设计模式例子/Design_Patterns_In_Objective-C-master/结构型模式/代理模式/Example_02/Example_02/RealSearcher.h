//
//  RealSearcher.h
//  Example_02
//
//  Created by Bi Weiming on 15/7/2.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Searcher.h"

/** 具体查询类，充当真实主题角色，它实现查询功能，提供方法-doSearchWithUserId:keyword:来查询信息。 */
@interface RealSearcher : NSObject <Searcher>

@end
