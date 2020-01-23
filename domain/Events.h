//
//  Events.h
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/22.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//比赛项目实体类
@interface Events : NSObject
@property(nonatomic,assign)int EventID; //编号
@property(nonatomic,strong)NSString *EventName;//项目名
@property(nonatomic,strong)NSString *EventIcon;//项目图标
@property(nonatomic,strong)NSString *KeyInfo;//项目关键信息
@property(nonatomic,strong)NSString *BasicsInfo;//项目基本信息
@property(nonatomic,strong)NSString *OlympicInfo;//项目奥运会历史信息

@end

NS_ASSUME_NONNULL_END
