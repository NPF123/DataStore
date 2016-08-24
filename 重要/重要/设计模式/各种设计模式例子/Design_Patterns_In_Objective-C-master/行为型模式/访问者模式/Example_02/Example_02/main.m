//
//  main.m
//  Example_02
//
//  Created by 找塑料 on 16/4/22.
//  Copyright © 2016年 Nihility-Ming. All rights reserved.
//

// The visitor pattern is used to separate a relatively complex set of structured data classes from the functionality that may be performed upon the data that they hold.


#import <Foundation/Foundation.h>
#import "PlanetAlderaan.h"
#import "PlanetCoruscant.h"
#import "PlanetTatooine.h"
#import "NameVisitor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSArray <id<Planet>> *planets = @[[PlanetAlderaan new], [PlanetCoruscant new], [PlanetTatooine new]];
        
        [planets enumerateObjectsUsingBlock:^(id<Planet>  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
            NameVisitor *visitor = [[NameVisitor alloc] init];
            [obj acceptWithVisitor:visitor];
            NSLog(@"%@", visitor.name);
        }];

        
    }
    return 0;
}
