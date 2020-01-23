//
//  ScheduleDAO.h
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/23.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseDAO.h"
#import "Schedule.h"
#import "Events.h"
NS_ASSUME_NONNULL_BEGIN

@interface ScheduleDAO : BaseDAO
+(ScheduleDAO *)shareInstance;
//插入Note方法
- (int)create:(Schedule *)model;

//删除Note方法
- (int)remove:(Schedule *)model;

//修改Note方法
- (int)modify:(Schedule *)model;

//查询所有数据方法
- (NSMutableArray *)findAll;

//按照主键查询数据方法
- (Schedule *)findById:(Schedule *)model;

@end

NS_ASSUME_NONNULL_END
