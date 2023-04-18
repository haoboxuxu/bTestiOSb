//
//  BBGradientVC.m
//  TestiOS
//
//  Created by haoboxx on 2023/3/30.
//

#import "BBGradientVC.h"

#define HEXACOLOR(rgbValue,a) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:(a)]

@interface BBHD2PlayerGradientView : UIView
@property (nonatomic, strong) CAGradientLayer *layer;
@end

@implementation BBHD2PlayerGradientView
@dynamic layer;

+ (Class)layerClass{
    return [CAGradientLayer class];
}
@end

@interface BBGradientVC ()

@end

@implementation BBGradientVC {
    BBHD2PlayerGradientView *_topGradientView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *colors = @[(__bridge id)HEXACOLOR(0x000000, 1.00).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.98).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.95).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.88).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.80).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.71).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.61).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.50).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.39).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.29).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.20).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.12).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.05).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.02).CGColor,
                        (__bridge id)HEXACOLOR(0x000000, 0.00).CGColor];
    NSArray *locations = @[@0.00,
                           @0.09,
                           @0.17,
                           @0.24,
                           @0.31,
                           @0.37,
                           @0.44,
                           @0.50,
                           @0.56,
                           @0.63,
                           @0.69,
                           @0.76,
                           @0.83,
                           @0.91,
                           @1.00];
    
    self.view.backgroundColor = UIColor.whiteColor;
    
    _topGradientView = [[BBHD2PlayerGradientView alloc] init];
    _topGradientView.layer.startPoint = CGPointMake(0.5, 0.0);
    _topGradientView.layer.endPoint = CGPointMake(0.5, 1.0);
    _topGradientView.layer.colors = colors;
    _topGradientView.layer.locations = locations;
    _topGradientView.alpha = 0.7;
    
    [self.view addSubview:_topGradientView];
    [[self class] what];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    _topGradientView.frame = self.view.bounds;
}

+ (void)what {
    NSLog(@"what");
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
