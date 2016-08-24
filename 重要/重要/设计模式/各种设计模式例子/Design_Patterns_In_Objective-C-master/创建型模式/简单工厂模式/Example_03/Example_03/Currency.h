//
//  Currency.h
//  Example_03
//
//  Created by 找塑料 on 16/4/20.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

#ifndef Currency_h
#define Currency_h

@protocol Currency <NSObject>

- (NSString *)symbol;

- (NSString *)code;

@end


#endif /* Currency_h */
