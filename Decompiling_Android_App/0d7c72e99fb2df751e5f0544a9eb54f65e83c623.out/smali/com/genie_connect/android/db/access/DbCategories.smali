.class public final Lcom/genie_connect/android/db/access/DbCategories;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbCategories.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionCategoryChildren(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "parentName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 65
    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "0 AS _id"

    aput-object v2, v1, v5

    const-string v2, "sessioncategories.name name"

    aput-object v2, v1, v9

    .line 70
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v7, "sessioncategories"

    .line 71
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "isRootParent=? AND parent=?"

    .line 72
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v10, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v3, v5

    aput-object p1, v3, v9

    .line 73
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sessioncategories.name"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/genie_connect/android/db/access/DbCategories;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 75
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 76
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 77
    const-string v2, "sessioncategories"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 78
    const-string v2, "isRootParent=? AND parent=?"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbCategories;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getSessionCategoryParents()Luk/co/alt236/easycursor/EasyCursor;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 87
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "0 AS _id"

    aput-object v2, v1, v5

    const-string v2, "sessioncategories.name name"

    aput-object v2, v1, v9

    .line 90
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v7, "sessioncategories"

    .line 91
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "isRootParent=?"

    .line 92
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v9, [Ljava/lang/String;

    const-string v2, "1"

    aput-object v2, v3, v5

    .line 93
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sessioncategories.name"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/genie_connect/android/db/access/DbCategories;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 95
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 96
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 97
    const-string v2, "sessioncategories"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 98
    const-string v2, "isRootParent=?"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbCategories;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getTagChildren(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "parentName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 109
    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "0 AS _id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "tags.name name"

    aput-object v2, v1, v9

    .line 114
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string/jumbo v7, "tags"

    .line 115
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "isRootParent=? AND parent=?"

    .line 116
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v10, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v3, v5

    aput-object p1, v3, v9

    .line 117
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tags.name"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/genie_connect/android/db/access/DbCategories;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 119
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 120
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 121
    const-string/jumbo v2, "tags"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 122
    const-string v2, "isRootParent=? AND parent=?"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbCategories;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getTagParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "child"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v12, 0x1

    .line 133
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 134
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "0 AS _id"

    aput-object v1, v2, v3

    const-string/jumbo v1, "tags_name AS name"

    aput-object v1, v2, v12

    .line 137
    .local v2, "sqlSelect":[Ljava/lang/String;
    const-string/jumbo v10, "tags_children"

    .line 138
    .local v10, "sqlTables":Ljava/lang/String;
    const-string v11, "children=?"

    .line 139
    .local v11, "sqlWhere":Ljava/lang/String;
    new-array v4, v12, [Ljava/lang/String;

    aput-object p1, v4, v3

    .line 141
    .local v4, "sqlWhereArgs":[Ljava/lang/String;
    const-string/jumbo v1, "tags_children"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 144
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbCategories;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "children=?"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 147
    .local v8, "c":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v1, v12, :cond_0

    .line 148
    const/4 v9, 0x0

    .line 157
    .local v9, "res":Ljava/lang/String;
    :goto_0
    invoke-static {v8}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 158
    return-object v9

    .line 149
    .end local v9    # "res":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v12, :cond_1

    .line 150
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 151
    const-string v1, "name"

    invoke-static {v8, v1}, Lcom/genie_connect/android/db/DbHelper;->getStringFromCursor(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "res":Ljava/lang/String;
    goto :goto_0

    .line 153
    .end local v9    # "res":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DBTAGS: More than one parent for child - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->err(Ljava/lang/String;)V

    .line 154
    const/4 v9, 0x0

    .restart local v9    # "res":Ljava/lang/String;
    goto :goto_0
.end method

.method public getTagParents()Luk/co/alt236/easycursor/EasyCursor;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x1

    .line 167
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "0 AS _id"

    aput-object v2, v1, v5

    const-string/jumbo v2, "tags.name name"

    aput-object v2, v1, v9

    .line 172
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string/jumbo v7, "tags"

    .line 173
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "isRootParent=?"

    .line 174
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v9, [Ljava/lang/String;

    const-string v2, "1"

    aput-object v2, v3, v5

    .line 175
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tags.name"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/genie_connect/android/db/access/DbCategories;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 178
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 179
    const-string/jumbo v2, "tags"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 180
    const-string v2, "isRootParent=?"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbCategories;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getTags()Luk/co/alt236/easycursor/EasyCursor;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 190
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0 AS _id"

    aput-object v4, v1, v3

    const-string v3, "name"

    aput-object v3, v1, v5

    .line 191
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string/jumbo v8, "tags"

    .line 192
    .local v8, "sqlTables":Ljava/lang/String;
    const-string v7, "name"

    .line 194
    .local v7, "sqlOrder":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 195
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 196
    const-string/jumbo v3, "tags"

    invoke-virtual {v0, v3}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 197
    const-string v6, "name"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbCategories;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method
