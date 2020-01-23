//
//  EventsDAO.h
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/23.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Events.h"
#import "BaseDAO.h"
NS_ASSUME_NONNULL_BEGIN

@interface EventsDAO : BaseDAO
+ (EventsDAO *)sharedInstance;
//插入Note方法
- (int)create:(Events *)model;

//删除Note方法
- (int)remove:(Events *)model;

//修改Note方法
- (int)modify:(Events *)model;

//查询所有数据方法
- (NSMutableArray *)findAll;

//按照主键查询数据方法
- (Events *)findById:(Events *)model;
@end

NS_ASSUME_NONNULL_END
