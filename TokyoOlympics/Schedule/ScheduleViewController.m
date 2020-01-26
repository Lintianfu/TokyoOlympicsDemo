//
//  ScheduleViewController.m
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/23.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import "ScheduleViewController.h"
#import "EventsDetailViewController.h"
#import "ScheduleDAO.h"
#import "EventsDAO.h"
@interface ScheduleViewController ()
@property(nonatomic,strong)NSDictionary *data;
@property(strong,nonatomic)NSArray *arrayGameList;
@end

@implementation ScheduleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}
-(void)initWithData
{
    if(self.data==nil||[self.data count]==0)
    {
        self.data=[self readData];
        NSArray *keys=[self.data allKeys];
        self.arrayGameList=[keys sortedArrayUsingSelector:@selector(compare:)];
    }
}
-(NSMutableDictionary *)readData
{
    
    ScheduleDAO *scheduledao=[ScheduleDAO shareInstance];
    NSMutableArray *schedules=[scheduledao findAll];
    NSMutableDictionary *resDict=[[NSMutableDictionary alloc]init];
    EventsDAO *eventsdao=[EventsDAO sharedInstance];
    //延迟数据加载
    for(Schedule *schedule in schedules)
    {
        Events *event=[eventsdao findById:schedule.Events];
        schedule.Events=event;
        NSArray *allkey=[resDict allKeys];
        
        //数据转换
        if([allkey containsObject:schedule.GameDate])
        {
            NSMutableArray *value=resDict[schedule.GameDate];
            [value addObject:schedule];
        }
        else{
            NSMutableArray *value=[[NSMutableArray alloc]init];
            [value addObject:schedule];
            resDict[schedule.GameDate]=value;
        }
       
    }
    return resDict;
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
