//
//  ProxySearcher.h
//  Example_02
//
//  Created by Bi Weiming on 15/7/2.
//  Copyright (c) 2015年 Bi Weiming. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Searcher.h"

/** 代理查询类，充当代理主题角色，它是查询代理，维持了对RealSearcher对象、AccessValidator对象和Logger对象的引用。 */
@interface ProxySearcher : NSObject <Searcher>

- (BOOL)validateWithUserID:(NSString *)userID;
- (void)logWithUserID:(NSString *)userID;

@end
