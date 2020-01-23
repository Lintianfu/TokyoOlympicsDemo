//
//  BaseDAO.h
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/22.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sqlite3.h"
#import "DBHelper.h"
NS_ASSUME_NONNULL_BEGIN

@interface BaseDAO : NSObject
{
    sqlite3 *db;
}
-(BOOL)openDB;
@end

NS_ASSUME_NONNULL_END
