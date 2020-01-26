//
//  EventsDetailViewController.m
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/23.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import "EventsDetailViewController.h"

@interface EventsDetailViewController ()
@end

@implementation EventsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initWithView];
    // Do any additional setup after loading the view.
}
-(void)initWithView
{
    
       CGRect screen = [[UIScreen mainScreen] bounds];
       self.view.backgroundColor = [UIColor whiteColor];
       
       /// 1.添加ImageView
       self.imgEventIcon = [[UIImageView alloc] initWithFrame: CGRectMake(10, 100, 102, 102)];
       self.imgEventIcon.image = [UIImage imageNamed:self.event.EventIcon];
       [self.view addSubview:self.imgEventIcon];
       
       /// 2.lblEventName标签
       self.lblEventName = [[UILabel alloc] initWithFrame:CGRectMake(160, 140, 200, 30)];
       self.lblEventName.text = self.event.EventName;
       self.lblEventName.font = [UIFont boldSystemFontOfSize:20];
       [self.view addSubview:self.lblEventName];
       
       /// 3.txtViewBasicsInfo标签
       self.txtViewKeyInfo = [[UITextView alloc] initWithFrame:CGRectMake(10, self.imgEventIcon.frame.origin.y + 120, screen.size.width - 20, 90)];
       self.txtViewKeyInfo.editable = NO;
       self.txtViewKeyInfo.text = self.event.KeyInfo;
       [self.view addSubview:self.txtViewKeyInfo];
       
       /// 4.静态标签The Basics
       UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, self.txtViewKeyInfo.frame.origin.y + 100, 200, 30)];
       label.text = @"The Basics";
       label.font = [UIFont boldSystemFontOfSize:20];
       [self.view addSubview:label];
       
       /// 5.txtViewBasicsInfo标签
       self.txtViewBasicsInfo = [[UITextView alloc] initWithFrame:CGRectMake(10, label.frame.origin.y + 30, screen.size.width - 20, 90)];
       self.txtViewBasicsInfo.editable = NO;
       self.txtViewBasicsInfo.text = self.event.BasicsInfo;
       [self.view addSubview:self.txtViewBasicsInfo];
       
       /// 6.静态标签Olympic past and present
       label = [[UILabel alloc] initWithFrame:CGRectMake(10, self.txtViewBasicsInfo.frame.origin.y + 100, 300, 30)];
       label.text = @"Olympic past and present";
       label.font = [UIFont boldSystemFontOfSize:20];
       [self.view addSubview:label];
       
       /// 7.txtViewOlympicInfo标签
       self.txtViewOlympicInfo = [[UITextView alloc] initWithFrame:CGRectMake(10, label.frame.origin.y + 30, screen.size.width - 20, 90)];
       self.txtViewOlympicInfo.editable = NO;
       self.txtViewOlympicInfo.text = self.event.KeyInfo;
       [self.view addSubview:self.txtViewOlympicInfo];
       
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
