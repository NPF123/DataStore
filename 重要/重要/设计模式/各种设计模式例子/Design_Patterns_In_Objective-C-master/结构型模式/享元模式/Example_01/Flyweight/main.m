//
//  main.m
//  Flyweight
//
//  Created by btw on 15/2/27.
//  Copyright (c) 2015年 Nihility. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 📰
 享元模式：运用共享技术有效地支持大量细粒度的对象。
 
 ✅
    1、享元模式可以避免大量非常相似的类的开销。
    2、在程序设计中，有时需要生成大细颗粒度的类实例化的类的数量。
    3、如果能把那些参数移到类实例的外面，在方法调用时将它们传递进来，就可以通过共享大幅度地减少单个实例的数目。
 
 ❌
    1、使用享元模式需要维护一个记录了系统已有的所有享元的列表，而这本身需要耗费资源，另外享元模式使得系统更加复杂。
    2、为了使对象可以共享，需要将一些状态外部化，这使得程序的逻辑复杂化。
    3、应当在有足够多的对象实例可供共享时，才能使用享元模式。
 
 
 ❓
    1、如果一个应用程序使用了大量的对象，而大量的这些对象造成了很大的储存开销时就应该使用此模式。
    2、对象的大多数状态可以外部状态，如果删除对象的外部状态，那么可以用相对较少的共享对象取代很多组对象，此时可以考虑使用享元模式。

 ⚠
    1、享元模式Flyweight执行时所需的状态是由内部的也有可能有外部的，内部状态出存在ConcreteFlyweight对象中，而外部状态应该考虑由客户端对象储存或计算，当调用Flyweight对象的操作时，将该状态传递给它。
    2、客户的账号就是外部状态，应该由专门的对象来处理。外部状态是可变的，区别于内部状态。

 */

#import "WebSiteFactory.h"
#import "ConcreteWebSite.h"
#import "User.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        User *sam = [[User alloc] init];
        sam.name = @"Sam";
        
        User *mike = [[User alloc] init];
        mike.name = @"mike";
        
        
        WebSiteFactory *factory = [[WebSiteFactory alloc] init];
        WebSite <WebSite> *gameWebSite = [factory createWebSiteWithName:@"游戏"];
        WebSite <WebSite> *gameWebSite2 = [factory createWebSiteWithName:@"游戏"];
    
        [gameWebSite useWithUser:sam];
        [gameWebSite2 useWithUser:mike];
        
        if (gameWebSite == gameWebSite2) {
            NSLog(@"gameWebsite == gameWebSite2");
        } else {
            NSLog(@"gameWebsite != gameWebSite2");
        }
        
        WebSite <WebSite> *musicWebSite = [factory createWebSiteWithName:@"音乐"];
        [musicWebSite useWithUser:mike];
        
        if (gameWebSite == musicWebSite) {
            NSLog(@"gameWebsite == musicWebSite");
        } else {
            NSLog(@"gameWebsite != musicWebSite");
        }
        
        NSLog(@"共产生实例个数：%u", [factory amount]);
    }
    return 0;
}
