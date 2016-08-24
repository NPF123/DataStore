//
//  main.m
//  Encipher
//
//  Created by btw on 15/3/17.
//  Copyright (c) 2015年 Weiming Bi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SHA1StringEncipher.h"
#import "MD5StringEncipher.h"

/**
 *  字符串加密器，体现了里氏代换原则，开闭原则
 */
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 假如替换成这个[[SHA1StringEncipher alloc] ... ，就立马切换成SHA1的加密方法了，能使用父类的地方能用子类替换，符合里氏代换原则
        StringEncipher<StringEncipher> *encipher = [[MD5StringEncipher alloc] initWithSourceCode:@"Hello World!"];
        NSString *result = [encipher getEncryptionResult];
        NSLog(@"%@", result);
        
        
        /*
         通过plist文件还可以在不修改源代码的情况下，切换这两种加密方法
         想新增加一种加密器只需继承StringEncipher<StringEncipher>这个抽象类，实现它需要的方法即可，原先代码无需修改，符合开闭原则
         */
        NSDictionary *config = [[NSDictionary alloc] initWithContentsOfFile:@"/Users/btw/Desktop/开发笔记/设计模式/设计原则/里氏代换原则/Example_03/Encipher/Config.plist"];
        Class StringEncipherClass = NSClassFromString(config[@"StringEncipherClass"]);
        StringEncipher<StringEncipher> *aEncipher = [[StringEncipherClass alloc] initWithSourceCode:@"Hello World!"];
        NSString *tResult = [aEncipher getEncryptionResult];
        NSLog(@"%@", tResult);
    }
    return 0;
}
