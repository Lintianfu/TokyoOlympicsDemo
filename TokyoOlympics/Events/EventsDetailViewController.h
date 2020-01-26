//
//  EventsDetailViewController.h
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/23.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Events.h"
NS_ASSUME_NONNULL_BEGIN

@interface EventsDetailViewController : UIViewController
@property(nonatomic,strong)Events *event;
@property(nonatomic,strong)UILabel *lblEventName;
@property(nonatomic,strong)UIImageView *imgEventIcon;
@property(nonatomic,strong)UITextView *txtViewKeyInfo;
@property(nonatomic,strong)UITextView *txtViewBasicsInfo;
@property(nonatomic,strong)UITextView *txtViewOlympicInfo;
@end

NS_ASSUME_NONNULL_END
