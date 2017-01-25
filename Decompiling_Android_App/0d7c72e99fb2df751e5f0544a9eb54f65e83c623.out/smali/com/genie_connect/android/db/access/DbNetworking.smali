.class final Lcom/genie_connect/android/db/access/DbNetworking;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbNetworking.java"


# static fields
.field private static final COL_IS_READ:Ljava/lang/String; = "isRead"

.field private static SQL_SELECT_MEETINGS:[Ljava/lang/String;

.field private static final SQL_SELECT_MESSAGE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id AS _id"

    aput-object v1, v0, v3

    const-string v1, "id"

    aput-object v1, v0, v4

    const-string v1, "author"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "bodyHtml"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fromVisitor"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "createdDate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "recipient"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "noChildren"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "associatedMeeting"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "isRead"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "modifiedDate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbNetworking;->SQL_SELECT_MESSAGE:[Ljava/lang/String;

    .line 82
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id AS _id"

    aput-object v1, v0, v3

    const-string v1, "id"

    aput-object v1, v0, v4

    const-string v1, "meetingType"

    aput-object v1, v0, v5

    const-string v1, "exhibitor"

    aput-object v1, v0, v6

    const-string v1, "name"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "fullDescription"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "runningTime_from"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "runningTime_to"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "visitorNames"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "visitors"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "isDeletable"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "approvedVisitors"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbNetworking;->SQL_SELECT_MEETINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 100
    return-void
.end method

.method protected static getLatestMessageTimestamp(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 8
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 110
    const-string v1, "modifiedDate"

    .line 112
    .local v1, "column":Ljava/lang/String;
    invoke-static {p0, v6, v6, v1}, Lcom/genie_connect/android/db/access/DbNetworking;->getMessages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    .line 113
    .local v3, "messageCursor":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v3}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 114
    invoke-interface {v3, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertFromSqliteToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "timestamp":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    :cond_0
    const-string v1, "createdDate"

    .line 121
    invoke-interface {v3, v1}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertFromSqliteToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 128
    :cond_1
    :goto_0
    invoke-interface {v3}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    .line 130
    if-eqz v5, :cond_2

    .line 133
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 136
    .local v4, "time":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 137
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 138
    const/16 v6, 0xd

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 139
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 146
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v4    # "time":Ljava/text/SimpleDateFormat;
    :cond_2
    :goto_1
    return-object v5

    .line 126
    .end local v5    # "timestamp":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "timestamp":Ljava/lang/String;
    goto :goto_0

    .line 140
    .restart local v4    # "time":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/text/ParseException;
    const-string v6, "^ NET: getLatestMessageTimestamp() TimeStamp increment fail"

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method protected static getMeetings(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 150
    const-string v7, "meetings a LEFT OUTER JOIN meetings_visitorNames b ON (a.id = b.meetings_id)  LEFT OUTER JOIN meetings_approvedvisitors c ON (a.id = c.meetings_id) LEFT OUTER JOIN meetings_visitors d ON (a.id = d.meetings_id AND b.seqNo = d.seqNo)"

    .line 154
    .local v7, "sqlTables":Ljava/lang/String;
    const/4 v2, 0x0

    .line 155
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v3, 0x0

    .line 156
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 158
    .local v6, "orderBy":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 159
    const-string v2, "id=?"

    .line 160
    new-array v3, v8, [Ljava/lang/String;

    .end local v3    # "sqlWhereArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v1

    .line 161
    .restart local v3    # "sqlWhereArgs":[Ljava/lang/String;
    const-string v6, "c.SeqNo ASC"

    .line 164
    :cond_0
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 165
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v8}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 166
    const-string v1, "meetings a LEFT OUTER JOIN meetings_visitorNames b ON (a.id = b.meetings_id)  LEFT OUTER JOIN meetings_approvedvisitors c ON (a.id = c.meetings_id) LEFT OUTER JOIN meetings_visitors d ON (a.id = d.meetings_id AND b.seqNo = d.seqNo)"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 167
    sget-object v1, Lcom/genie_connect/android/db/access/DbNetworking;->SQL_SELECT_MEETINGS:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method protected static getMessages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "type"    # Ljava/lang/Integer;
    .param p3, "sort"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 172
    sget-object v1, Lcom/genie_connect/android/db/access/DbNetworking;->SQL_SELECT_MESSAGE:[Ljava/lang/String;

    .line 173
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v8, "messages"

    .line 174
    .local v8, "sqlTables":Ljava/lang/String;
    const/4 v2, 0x0

    .line 175
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v3, 0x0

    .line 177
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 178
    const-string/jumbo v2, "type=?"

    .line 179
    new-array v7, v10, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    .line 180
    .local v7, "args":[Ljava/lang/String;
    move-object v3, v7

    .line 183
    .end local v7    # "args":[Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 184
    const-string v2, "id=?"

    .line 185
    new-array v7, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    .line 186
    .restart local v7    # "args":[Ljava/lang/String;
    move-object v3, v7

    .line 189
    .end local v7    # "args":[Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " DESC"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 191
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 192
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v10}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 193
    const-string v5, "messages"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    move-object v5, v4

    .line 194
    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {v4, p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4
.end method

.method protected static getMessagesForDashboard(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 12
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 199
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v7

    .line 200
    .local v7, "creds":Lcom/genie_connect/android/net/container/LoginCredentials;
    sget-object v1, Lcom/genie_connect/android/db/access/DbNetworking;->SQL_SELECT_MESSAGE:[Ljava/lang/String;

    .line 201
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string/jumbo v8, "timestamp DESC"

    .line 202
    .local v8, "orderBy":Ljava/lang/String;
    const-string v9, "messages"

    .line 206
    .local v9, "sqlTables":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUserId()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-lez v4, :cond_0

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DBNETWORKING getMessages for Dashboard has creds "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUserId()J

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ DBNETWORKING getMessages for Dashboard has creds "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 209
    const-string/jumbo v2, "type=? OR (type!=? AND toVisitor=?)"

    .line 210
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUserId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 222
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 223
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 224
    const-string v4, "messages"

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 225
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "timestamp DESC"

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {v4, p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4

    .line 215
    .end local v0    # "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    .end local v2    # "sqlWhere":Ljava/lang/String;
    .end local v3    # "sqlWhereArgs":[Ljava/lang/String;
    :cond_0
    const-string v4, "^ DBNETWORKING getMessages for Dashboard no creds "

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 216
    const-string/jumbo v2, "type=? OR type=?"

    .line 217
    .restart local v2    # "sqlWhere":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .restart local v3    # "sqlWhereArgs":[Ljava/lang/String;
    goto :goto_0
.end method

.method protected static getMessagesForInbox(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 12
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "userId"    # Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 230
    sget-object v1, Lcom/genie_connect/android/db/access/DbNetworking;->SQL_SELECT_MESSAGE:[Ljava/lang/String;

    .line 231
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v10, "messages"

    .line 233
    .local v10, "sqlTables":Ljava/lang/String;
    const-string/jumbo v7, "toVisitor"

    .line 234
    .local v7, "col":Ljava/lang/String;
    const-string/jumbo v11, "toVisitor=?"

    .line 235
    .local v11, "sqlWhere":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 237
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const-string/jumbo v9, "timestamp DESC"

    .line 239
    .local v9, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 240
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 241
    const-string v2, "messages"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 242
    const-string/jumbo v2, "toVisitor=?"

    const-string/jumbo v6, "timestamp DESC"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v8

    .line 244
    .local v8, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {v8, p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method protected static getSentMessages(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "userId"    # Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 248
    sget-object v1, Lcom/genie_connect/android/db/access/DbNetworking;->SQL_SELECT_MESSAGE:[Ljava/lang/String;

    .line 249
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v9, "messages"

    .line 250
    .local v9, "sqlTables":Ljava/lang/String;
    const-string v7, "fromVisitor"

    .line 251
    .local v7, "col":Ljava/lang/String;
    const-string v10, "fromVisitor=? AND type!=?"

    .line 252
    .local v10, "sqlWhere":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    .line 253
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const-string/jumbo v8, "timestamp DESC"

    .line 255
    .local v8, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 256
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 257
    const-string v2, "messages"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 258
    const-string v2, "fromVisitor=? AND type!=?"

    const-string/jumbo v6, "timestamp DESC"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method protected static getUnreadMessageCount(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)I
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v2

    .line 268
    .local v2, "visitorId":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT COUNT(*) from messages WHERE isRead=0 AND (type=1 OR toVisitor="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .end local v2    # "visitorId":J
    .local v0, "query":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v1, v4

    .line 278
    .local v1, "total":I
    return v1

    .line 273
    .end local v0    # "query":Ljava/lang/String;
    .end local v1    # "total":I
    :cond_0
    const-string v0, "SELECT COUNT(*) from messages WHERE isRead=0 AND type=1"

    .restart local v0    # "query":Ljava/lang/String;
    goto :goto_0
.end method

.method protected static setMessageRead(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/Boolean;)Z
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "id"    # J
    .param p3, "isRead"    # Ljava/lang/Boolean;

    .prologue
    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "filter":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .local v0, "args":Landroid/content/ContentValues;
    const-string v2, "isRead"

    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 285
    const-string v2, "messages"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 286
    const/4 v2, 0x1

    .line 289
    :goto_0
    return v2

    .line 288
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^DB: Error while setting message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 289
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method
