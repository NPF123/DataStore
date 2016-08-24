//
//  DBUtil.h
//  Example_02
//
//  Created by btw on 15/3/23.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  DBUtil：负责连接数据库，包含数据库连接方法getConnection:
 */
@interface DBUtil : NSObject

- (NSData *)getConnectionWithDBName:(NSString *)DBName;

@end
