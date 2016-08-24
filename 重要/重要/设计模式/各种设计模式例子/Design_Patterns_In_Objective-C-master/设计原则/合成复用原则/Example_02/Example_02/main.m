/*
 合成复用原则，我们在实现复用时应该多用关联，少用继承。因此在本实例中我们可以使用关联复用来取代继承复用。
 
 CustomerDAO和DBUtil之间的关系由继承关系变为关联关系，采用依赖注入的方式将DBUtil对象注入到CustomerDAO中，可以使用构造注入，也可以使用Setter注入。
 如果需要对DBUtil的功能进行扩展，可以通过其子类来实现，如通过子类OracleDBUtil来连接Oracle数据库。
 由于CustomerDAO针对DBUtil编程，根据里氏代换原则，DBUtil子类的对象可以覆盖DBUtil对象，只需在CustomerDAO中注入子类对象即可使用子类所扩展的方法。
 例如在CustomerDAO中注入OracleDBUtil对象，即可实现Oracle数据库连接，原有代码无须进行修改，而且还可以很灵活地增加新的数据库连接方式。
 */

#import <Foundation/Foundation.h>
#import "OracleDBUtil.h"
#import "CustomerDAO.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DBUtil<DBUtil> *util = [[OracleDBUtil alloc] init];
        
        CustomerDAO *DAO = [[CustomerDAO alloc] init];
        DAO.util = util;
        [DAO addCustomer];
    }
    return 0;
}
