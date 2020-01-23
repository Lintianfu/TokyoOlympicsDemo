//
//  HomeViewController.m
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/23.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()
@property(nonatomic,strong)UIImageView *bgimageview;
@property(nonatomic,strong)UIImage *bgimage;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initWithHomeBackground];
    // Do any additional setup after loading the view.
}
-(void)initWithHomeBackground
{
    // CGRect *frame=CGRectMake(0, 0, [[UIScreen mainScreen]bounds].size.width,[[UIScreen mainScreen] bounds].size.height);
   
    self.bgimageview=[[UIImageView alloc]initWithFrame:self.view.frame];
    self.bgimage=[UIImage imageNamed:@"Home-bg"];
    self.bgimageview.image=self.bgimage;
    [self.view addSubview:_bgimageview];
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
