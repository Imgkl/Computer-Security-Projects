.class public final Lcom/genie_connect/android/db/access/DbAppRefs;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbAppRefs.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/access/DbAppRefs$1;
    }
.end annotation


# static fields
.field private static final SQL_SELECT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "iconUrl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "strapLine"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "eventStartDate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventEndDate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "app"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "isAvailable"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "isFeatured"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "isUsingHoldingPage"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "holdingPageHTML"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbAppRefs;->SQL_SELECT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 68
    return-void
.end method


# virtual methods
.method public getAppRefById(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "appRefId"    # J

    .prologue
    const/4 v4, 0x0

    .line 77
    const-string v7, "apprefs"

    .line 78
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "id=?"

    .line 79
    .local v8, "sqlWhere":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 82
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 83
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const-string v1, "apprefs"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 84
    sget-object v1, Lcom/genie_connect/android/db/access/DbAppRefs;->SQL_SELECT:[Ljava/lang/String;

    const-string v2, "id=?"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbAppRefs;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getAppRefByNamespace(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "namespace"    # J

    .prologue
    const/4 v4, 0x0

    .line 95
    const-string v7, "apprefs"

    .line 96
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "app=?"

    .line 97
    .local v8, "sqlWhere":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 100
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 101
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const-string v1, "apprefs"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 102
    sget-object v1, Lcom/genie_connect/android/db/access/DbAppRefs;->SQL_SELECT:[Ljava/lang/String;

    const-string v2, "app=?"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbAppRefs;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getAppRefs(Lcom/genie_connect/android/db/access/queryparam/AppRefParams;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 14
    .param p1, "apprefParams"    # Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    .prologue
    .line 120
    const-string v6, "eventStartDate"

    .line 122
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v1, Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    invoke-direct {v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;-><init>()V

    .line 124
    .local v1, "builder":Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    sget-object v0, Lcom/genie_connect/android/db/access/DbAppRefs;->SQL_SELECT:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 125
    .local v2, "column":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 124
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 128
    .end local v2    # "column":Ljava/lang/String;
    :cond_0
    const-string v8, "apprefs"

    invoke-virtual {v1, v8}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addTable(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 130
    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->getTagFilter()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 131
    const-string v8, "apprefs_relatedTags"

    const-string v9, "c"

    const-string v10, "apprefs.id = c.apprefs_id"

    invoke-virtual {v1, v8, v9, v10}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 132
    sget-object v8, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v9, "c.relatedTags=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->getTagFilter()Ljava/lang/Long;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1, v8, v9, v10}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 139
    :cond_1
    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->getSearchFilter()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 140
    sget-object v8, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v9, "name like ? OR strapLine like ? OR eventLocation like ?"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->getSearchFilter()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->getSearchFilter()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->getSearchFilter()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v1, v8, v9, v10}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 149
    :cond_2
    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->getAppIdFilter()Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 152
    sget-object v8, Lcom/genie_connect/android/db/access/DbAppRefs$1;->$SwitchMap$com$genie_connect$android$db$access$queryparam$AppRefParams$Equality:[I

    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->getAppIdEquality()Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    move-result-object v9

    invoke-virtual {v9}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 160
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot resolve Equality type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->getAppIdEquality()Lcom/genie_connect/android/db/access/queryparam/AppRefParams$Equality;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 154
    :pswitch_0
    const-string v7, "app=?"

    .line 163
    .local v7, "value":Ljava/lang/String;
    :goto_1
    sget-object v8, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->getAppIdFilter()Ljava/lang/Long;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v1, v8, v7, v9}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 169
    .end local v7    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->isFeatured()Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    move-result-object v8

    sget-object v9, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->YES:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    if-ne v8, v9, :cond_6

    .line 170
    sget-object v8, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v9, "isFeatured=1"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 180
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->getTimePosition()Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    move-result-object v8

    sget-object v9, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->FUTURE:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    if-ne v8, v9, :cond_7

    .line 181
    sget-object v8, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v9, "date(eventEndDate) >= date(\'now\')"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 190
    :cond_5
    :goto_3
    sget-object v8, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbAppRefs;->generatePermissionsCheckWhere()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 194
    const-string v8, "eventStartDate"

    invoke-virtual {v1, v8}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addOrderBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 195
    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v5

    .line 196
    .local v5, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbAppRefs;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v5, v8}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v8

    return-object v8

    .line 157
    .end local v5    # "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    :pswitch_1
    const-string v7, "app<>? OR app IS NULL"

    .line 158
    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_1

    .line 174
    .end local v7    # "value":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->isFeatured()Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    move-result-object v8

    sget-object v9, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;->NO:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TriState;

    if-ne v8, v9, :cond_4

    .line 175
    sget-object v8, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v9, "isFeatured<>1"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    goto :goto_2

    .line 184
    :cond_7
    invoke-virtual {p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->getTimePosition()Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    move-result-object v8

    sget-object v9, Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;->PAST:Lcom/genie_connect/android/db/access/queryparam/AppRefParams$TimePosition;

    if-ne v8, v9, :cond_5

    .line 185
    sget-object v8, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v9, "date(eventEndDate) < date(\'now\')"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    goto :goto_3

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APPREF:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "tagId"    # Ljava/lang/Long;

    .prologue
    .line 220
    new-instance v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    invoke-direct {v0}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->setTagFilter(Ljava/lang/Long;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/DbAppRefs;->getAppRefs(Lcom/genie_connect/android/db/access/queryparam/AppRefParams;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;

    .prologue
    .line 214
    new-instance v0, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    invoke-direct {v0}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;-><init>()V

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/access/queryparam/AppRefParams;->setSearchFilter(Ljava/lang/String;)Lcom/genie_connect/android/db/access/queryparam/AppRefParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/DbAppRefs;->getAppRefs(Lcom/genie_connect/android/db/access/queryparam/AppRefParams;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 209
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/access/DbAppRefs;->search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation

    .prologue
    .line 227
    .local p2, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v0, 0x0

    return-object v0
.end method
