//
//  HBClassProxy.h
//  TestiOS
//
//  Created by haoboxx on 2023/4/3.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

NS_ASSUME_NONNULL_BEGIN

@interface HBClassProxy : NSProxy

@property(nonatomic,strong,readonly)NSMutableArray *targetArray;
-(void)target:(id)target;
-(void)handleTargets:(NSArray *)targets;

@end

NS_ASSUME_NONNULL_END
