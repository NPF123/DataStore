//
//  PrintStrategy.h
//  Example_02
//
//  Created by 找塑料 on 16/4/21.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#ifndef PrintStrategy_h
#define PrintStrategy_h

@protocol PrintStrategy <NSObject>

- (NSString *)printString:(NSString *)str;

@end


#endif /* PrintStrategy_h */
