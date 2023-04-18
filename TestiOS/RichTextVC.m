//
//  RichTextVC.m
//  TestiOS
//
//  Created by haoboxx on 2023/4/10.
//

#import "RichTextVC.h"
#import <Masonry/Masonry.h>

@interface RichTextVC ()

@property (strong) UIView *primaryContainer;
@property (strong) UILabel *l1;
@property (strong) UILabel *l2;

@end

@implementation RichTextVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = UIColor.whiteColor;
    
    UILabel *label = [[UILabel alloc] init];
    [self.view addSubview:label];
    label.backgroundColor = UIColor.redColor;
//    label.text = @"恭喜你（【";
    label.text = @"恭喜你";
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.top.right.inset(100);
    }];
    
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"fkweode");
    });
    
    
//    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
//    view2.backgroundColor = UIColor.redColor;
//    [self.view addSubview:view2];
//
//    UIView *titleLabel = [[UIView alloc] init];
//    titleLabel.backgroundColor = UIColor.orangeColor;
//    [view2 addSubview:titleLabel];
//    [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.right.inset(8);
//        make.bottom.offset(-10);
//    }];
//
//    UIView *topContentView = [[UIView alloc] init];
//    topContentView.backgroundColor = UIColor.yellowColor;
//    [view2 addSubview:topContentView];
//    [topContentView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.left.right.offset(0);
//        make.bottom.equalTo(titleLabel.mas_top).offset(-10);
//    }];
    
//    dispatch_as
    
//    self.primaryContainer = [UIView new];
//    [self.view addSubview:self.primaryContainer];
//
//    self.primaryContainer.backgroundColor = UIColor.orangeColor;
//
//    [self.primaryContainer mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.equalTo(self.view.mas_left).offset(300);
//        make.right.equalTo(self.view.mas_right).offset(-300);
//        make.top.equalTo(self.view.mas_top).offset(200);
//        make.height.equalTo(@100);
//    }];
//
//    NSString *text = @"fweughuehytuirw";
//    NSString *s1 = [NSString stringWithFormat:@"该视频为「%@", text];
//    NSString *s2 = @"」专属视频";
//
//    self.l1 = [self createChargingPlusLabelWithSize:15];
//    [self.l1 setText:s1];
//    self.l2 = [self createChargingPlusLabelWithSize:15];
//    [self.l2 setText:s2];
//
//    [self.primaryContainer addSubview:self.l1];
//    [self.primaryContainer addSubview:self.l2];
}

//- (void)viewDidLayoutSubviews {
//    [super viewDidLayoutSubviews];
//
//    CGFloat width1 = [self.l1 sizeThatFits:CGSizeMake(self.primaryContainer.frame.size.width, 100)].width; //193
//    CGFloat width2 = [self.l2 sizeThatFits:CGSizeMake(self.primaryContainer.frame.size.width, 100)].width; //75
//    if (width1 + width1 > self.primaryContainer.frame.size.width) {
//        width1 = self.primaryContainer.frame.size.width - width2;
//    }
//
//    [self.l1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_equalTo(self.primaryContainer.mas_left);
//        make.top.mas_equalTo(self.primaryContainer.mas_top);
//        make.width.mas_equalTo(width1);
//    }];
//
//    [self.l2 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.right.mas_equalTo(self.primaryContainer.mas_right);
//        make.top.mas_equalTo(self.primaryContainer.mas_top);
//        make.width.mas_equalTo(width2);
//    }];
//
//    NSLog(@"");
//}
//
//- (UILabel *)createChargingPlusLabelWithSize:(CGFloat)fontSize {
//    UILabel *label = [[UILabel alloc] init];
//    label.numberOfLines = 1;
//    label.textAlignment = NSTextAlignmentLeft;
//    [label setFont:[UIFont fontWithName:@"PingFangSC-Regular" size:fontSize]];
//    label.textColor = UIColor.whiteColor;
//    label.lineBreakMode = NSLineBreakByTruncatingTail;
//    return label;
//}

@end
