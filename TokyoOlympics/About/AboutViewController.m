//
//  AboutViewController.m
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/23.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initWithView];
    // Do any additional setup after loading the view.
}
-(void)initWithView
{
    self.aboutimageview=[[UIImageView alloc]initWithFrame:self.view.frame];
    self.image=[UIImage imageNamed:@"About-bg"];
    self.aboutimageview.image=self.image;
    [self.view addSubview:self.aboutimageview];
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
