//
//  CountDownViewController.m
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/23.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import "CountDownViewController.h"

@interface CountDownViewController ()

@end

@implementation CountDownViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initWithView];
    // Do any additional setup after loading the view.
}
-(void)initWithView
{
    self.datetext=[[UILabel alloc]initWithFrame:CGRectMake(130, 175, 294, 66)];
    UIFont *font = [UIFont systemFontOfSize:50.0];
    self.datetext.font=font;
    self.datetext.text=[self getDays];
    
    self.datetext.textColor=[UIColor whiteColor];
    self.bgimageview=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    self.image=[UIImage imageNamed:@"CountDown-bg"];
    self.bgimageview.image=self.image;
    [self.bgimageview addSubview:self.datetext];
    [self.view addSubview:self.bgimageview];
   
}
-(NSString *)getDays
{
    NSDateComponents *comps=[[NSDateComponents alloc]init];
    [comps setDay:24];
    [comps setMonth:7];
    [comps setYear:2020];
    
    NSCalendar *calendar=[[NSCalendar alloc]initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSDate *destinationdate=[calendar dateFromComponents:comps];
    NSDate *date=[NSDate date];
    
    NSDateComponents *compos=[calendar components:NSCalendarUnitDay fromDate:date toDate:destinationdate options:NSCalendarWrapComponents];
    
    NSInteger days=[compos day];
    
    NSString *getdays=[NSString stringWithFormat:@"%li天",(long)days];
    return getdays;
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
