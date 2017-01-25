.class public final Lcom/genie_connect/android/db/access/DbArticles;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbArticles.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessGeneric;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 47
    return-void
.end method

.method private getArticles(Ljava/lang/Long;Ljava/lang/String;Z)Luk/co/alt236/easycursor/EasyCursor;
    .locals 12
    .param p1, "articleId"    # Ljava/lang/Long;
    .param p2, "articleGroup"    # Ljava/lang/String;
    .param p3, "featured"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 85
    const/16 v5, 0xe

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "a.id AS _id"

    aput-object v5, v1, v11

    const-string v5, "a.id"

    aput-object v5, v1, v10

    const/4 v5, 0x2

    const-string v6, "author"

    aput-object v6, v1, v5

    const/4 v5, 0x3

    const-string v6, "a.name"

    aput-object v6, v1, v5

    const/4 v5, 0x4

    const-string v6, "html"

    aput-object v6, v1, v5

    const/4 v5, 0x5

    const-string v6, "brief"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "shareUrl"

    aput-object v6, v1, v5

    const/4 v5, 0x7

    const-string v6, "featured"

    aput-object v6, v1, v5

    const/16 v5, 0x8

    const-string v6, "a.modifiedDate"

    aput-object v6, v1, v5

    const/16 v5, 0x9

    const-string v6, "a.timestamp"

    aput-object v6, v1, v5

    const/16 v5, 0xa

    const-string v6, "a.author"

    aput-object v6, v1, v5

    const/16 v5, 0xb

    const-string v6, "a.thumbImageUrl AS thumbImage"

    aput-object v6, v1, v5

    const/16 v5, 0xc

    const-string v6, "a.mainImageUrl AS mainImage"

    aput-object v6, v1, v5

    const/16 v5, 0xd

    const-string v6, "d.articleGroups"

    aput-object v6, v1, v5

    .line 100
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v9, "articles a LEFT OUTER JOIN articles_articlegroups d ON (a.id = d.articles_id)"

    .line 103
    .local v9, "sqlTables":Ljava/lang/String;
    const/4 v2, 0x0

    .line 104
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v3, 0x0

    .line 106
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 107
    const-string v2, "a.id=?"

    .line 108
    new-array v7, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v11

    .line 109
    .local v7, "args":[Ljava/lang/String;
    move-object v3, v7

    .line 111
    .end local v7    # "args":[Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    .line 112
    const-string v2, "d.articleGroups=?"

    .line 113
    new-array v7, v10, [Ljava/lang/String;

    aput-object p2, v7, v11

    .line 114
    .restart local v7    # "args":[Ljava/lang/String;
    move-object v3, v7

    .line 116
    .end local v7    # "args":[Ljava/lang/String;
    :cond_1
    if-eqz p3, :cond_2

    .line 117
    const-string v2, "featured=1"

    .line 118
    const/4 v3, 0x0

    .line 121
    :cond_2
    const-string v8, "featured DESC, a.timestamp DESC, featured DESC"

    .line 126
    .local v8, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 127
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v10}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 128
    const-string v5, "articles a LEFT OUTER JOIN articles_articlegroups d ON (a.id = d.articles_id)"

    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 129
    const-string v6, "featured DESC, a.timestamp DESC, featured DESC"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbArticles;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public getAll()Luk/co/alt236/easycursor/EasyCursor;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/genie_connect/android/db/access/DbArticles;->getArticles(Ljava/lang/Long;Ljava/lang/String;Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getArticleGroup(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 61
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "a.isDashboardFeaturedOnly"

    aput-object v5, v1, v4

    const-string v4, "a.name"

    aput-object v4, v1, v6

    .line 66
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v7, "articlegroups a"

    .line 67
    .local v7, "sqlTables":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a.name = \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "sqlWhere":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 70
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 71
    const-string v4, "articlegroups a"

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 72
    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v3

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbArticles;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    return-object v3
.end method

.method public getArticlesForGroup(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "articleGroup"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/genie_connect/android/db/access/DbArticles;->getArticles(Ljava/lang/Long;Ljava/lang/String;Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getArticlesForHome()Luk/co/alt236/easycursor/EasyCursor;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 144
    const/16 v2, 0xc

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "a.id _id"

    aput-object v5, v1, v2

    const-string v2, "id"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v5, "author"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "name"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "html"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "brief"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "shareUrl"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-string v5, "modifiedDate"

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v5, "timestamp"

    aput-object v5, v1, v2

    const/16 v2, 0x9

    const-string v5, "author"

    aput-object v5, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v5, "thumbImageUrl thumbImage"

    aput-object v5, v1, v2

    const/16 v2, 0xb

    const-string v5, "mainImageUrl mainImage"

    aput-object v5, v1, v2

    .line 158
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v8, "articles a"

    .line 159
    .local v8, "sqlTables":Ljava/lang/String;
    const-string v9, "featured=1"

    .line 160
    .local v9, "sqlWhere":Ljava/lang/String;
    const/4 v3, 0x0

    .line 162
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const-string v7, "a.timestamp DESC"

    .line 164
    .local v7, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 165
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 166
    const-string v2, "articles a"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 167
    const-string v2, "featured=1"

    const-string v6, "a.timestamp DESC"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbArticles;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getById(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 173
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/genie_connect/android/db/access/DbArticles;->getArticles(Ljava/lang/Long;Ljava/lang/String;Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getById(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Articles do not have String keys!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method
