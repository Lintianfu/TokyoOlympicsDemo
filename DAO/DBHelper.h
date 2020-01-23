//
//  DBHelper.h
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/22.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sqlite3.h"
NS_ASSUME_NONNULL_BEGIN
#define DB_FILE_NAME @"app.db"

static sqlite3 *db;
@interface DBHelper : NSObject
//获得沙箱document目录下全路径
+(const char *)applicationDocumentsDirectoryFile:(NSString *)fileName;
//初始化并加载数据
+(void)initDB;
//从数据库获得当前数据库版本号
+(int)dbVersionNumber;

@end

NS_ASSUME_NONNULL_END
