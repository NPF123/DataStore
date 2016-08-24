//
//  EncryptFacade.h
//  Example_02
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#import <Foundation/Foundation.h>

// 加密外观类，充当外观类。
@interface EncryptFacade : NSObject

- (BOOL)willEncryptPatheOfFile:(NSString *)file toPath:(NSString *)path;

@end
