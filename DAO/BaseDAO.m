//
//  BaseDAO.m
//  TokyoOlympics
//
//  Created by Mr.TF on 2020/1/22.
//  Copyright © 2020 Mr.TF. All rights reserved.
//

#import "BaseDAO.h"

@implementation BaseDAO
-(id)init
{
    self=[super init];
    if(self)
    {
        [DBHelper initDB];
    }
    return self;
}
-(BOOL)openDB
{
     const char* dbFilePath = [DBHelper applicationDocumentsDirectoryFile:DB_FILE_NAME];
       
       NSLog(@"DbFilePath = %s", dbFilePath);

       if (sqlite3_open(dbFilePath, &db) != SQLITE_OK) {
           sqlite3_close(db);
           NSLog(@"数据库打开失败。");
           return FALSE;
       }
       return TRUE;
}
@end
