//
//  TestLogVC.m
//  TestiOS
//
//  Created by haoboxx on 2023/4/4.
//

#import "TestLogVC.h"

@interface BBHD2PhoneUserSpaceCardTagModel : NSObject
@end

@implementation BBHD2PhoneUserSpaceCardTagModel
@end

@interface BBHD2PhoneUserSpaceCardModel : NSObject
@property (nonatomic, copy) NSArray <BBHD2PhoneUserSpaceCardTagModel *> *spaceTag;
@end

@implementation BBHD2PhoneUserSpaceCardModel
@end

@interface TestLogVC ()
@property (nonatomic, assign) BOOL showTags;
@end

@implementation TestLogVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    BBHD2PhoneUserSpaceCardModel *card = nil;
    NSLog(@"haoboxuxu %@", card.spaceTag);
    NSLog(@"haoboxuxu %ld", card.spaceTag.count);
    NSLog(@"haoboxuxu %@", self.showTags ? @"1" : @"0");
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
