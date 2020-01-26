//
//  EventsViewController.m
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/26.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import "EventsViewController.h"
#import "EventsDetailViewController.h"
#import "EventsCollectionViewCell.h"
#import "EventsDAO.h"
@interface EventsViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
{
    NSUInteger COL_COUNT;
}
@property(nonatomic,strong)NSArray *events;
@property(nonatomic,strong)UICollectionView *collectionView;
@end


@implementation EventsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self InitWithEvents];
    [self setupCollectionView];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)InitWithEvents //初始化数据
{
    if(self.events==nil||[self.events count]==0)
    {
        EventsDAO *dao=[EventsDAO sharedInstance];
        self.events=[dao findAll];
        [self.collectionView reloadData];
    }
}

    
-(void)setupCollectionView //初始化流式视图
{
    UICollectionViewFlowLayout *layout=[[UICollectionViewFlowLayout alloc]init];
    layout.itemSize=CGSizeMake(101,101);
    layout.sectionInset=UIEdgeInsetsMake(5, 5, 5, 5);
    layout.minimumInteritemSpacing=1;
    
    
    self.collectionView=[[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:layout];
    
    [self.collectionView registerClass:[EventsCollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    
    self.collectionView.backgroundColor=[UIColor whiteColor];
    
    self.collectionView.delegate=self;
    self.collectionView.dataSource=self;
    [self.view addSubview:self.collectionView];
    
    CGSize screenSize=[UIScreen mainScreen].bounds.size;
    COL_COUNT=screenSize.width/106;

}
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    unsigned long num=[self.events count]%COL_COUNT;
    if(num==0)
    {
        return [self.events count]/COL_COUNT;
    }
    else{
        return [self.events count]/COL_COUNT+1;
    }
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return COL_COUNT;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    EventsCollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    
    NSInteger idx=indexPath.section*COL_COUNT+indexPath.row;
    
    if(idx<[self.events count])
    {
        Events *event=self.events[idx];
        cell.imageview.image=[UIImage imageNamed:event.EventIcon];
    }
    else{
        cell.imageview.image=nil;
    }
    return cell;
}
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    NSInteger idx=indexPath.section*COL_COUNT+indexPath.row;
    Events *event=self.events[idx];
    
    EventsDetailViewController *detailViewController=[[EventsDetailViewController alloc]init];
    detailViewController.event=event;
    [self.navigationController pushViewController:detailViewController animated:YES];
}






@end
