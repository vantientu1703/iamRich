//
//  ViewController.m
//  IamRich
//
//  Created by Văn Tiến Tú on 7/24/15.
//  Copyright (c) 2015 Văn Tiến Tú. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *ruby;
@property (weak, nonatomic) IBOutlet UILabel *iamRich;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _ruby.alpha=0;
    _iamRich.alpha=0;
}
-(void)viewWillAppear:(BOOL)animated
{
    //[super viewWillAppear:<#animated#>];
    NSLog(@"Ruby's alpha= %1.0f", self.ruby.alpha);
    [UIView animateWithDuration:4 animations:^{
        _ruby.alpha=1;
        NSLog(@"Ruby's alpha %1.0f",_ruby.alpha);
    } completion:^(BOOL finished){
        [UIView animateWithDuration:3 animations:^{
            self.iamRich.center=CGPointMake(self.iamRich.center.x, 360);
            self.iamRich.alpha=1;
        }];
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end
