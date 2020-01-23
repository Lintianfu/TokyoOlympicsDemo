//
//  Schedule.h
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/22.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Events.h"
NS_ASSUME_NONNULL_BEGIN

@interface Schedule : NSObject
@property(nonatomic,assign)int ScheduleID;
@property(nonatomic,strong)NSString *GameDate;
@property(nonatomic, strong)NSString *GameTime;
@property(nonatomic,strong)NSString *GameInfo;
@property(nonatomic,strong)Events *Events;
@end

NS_ASSUME_NONNULL_END
