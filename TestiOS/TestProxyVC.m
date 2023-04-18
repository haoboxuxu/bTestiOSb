//
//  TestProxyVC.m
//  TestiOS
//
//  Created by haoboxx on 2023/4/3.
//

#import "TestProxyVC.h"
#import "HBClassProxy.h"

@interface classA : NSObject
@end
@implementation classA
-(void)infoA{
    NSLog(@"这里 是 classA");
}
@end

@interface classB : NSObject
@end
@implementation classB
-(void)infoB{
    NSLog(@"这里 是 classB");
}
@end

@interface TestProxyVC ()

@end

@implementation TestProxyVC

- (void)viewDidLoad {
    [super viewDidLoad];
    classA *A = [[classA alloc]init];
    classB *B = [[classB alloc]init];
    HBClassProxy *proxy = [HBClassProxy alloc];
    [proxy handleTargets:@[A,B]];
    [proxy performSelector:@selector(infoA)];
    [proxy performSelector:@selector(infoB)];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
