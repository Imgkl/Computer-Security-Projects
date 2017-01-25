.class public final Lcom/genie_connect/android/db/access/DbSponsorCampaign;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbSponsorCampaign.java"


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


# virtual methods
.method public getCategorySponsorhipOverride(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 14
    .param p1, "tagId"    # Ljava/lang/Long;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    if-nez p1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-object v4

    .line 53
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x1

    cmp-long v2, v10, v12

    if-ltz v2, :cond_0

    .line 57
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "sponsorCampaign"

    aput-object v2, v1, v6

    .line 58
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v9, "id=?"

    .line 59
    .local v9, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    .line 61
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 62
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 63
    const-string/jumbo v2, "tagsv2"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 64
    const-string v2, "id=?"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSponsorCampaign;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    .line 69
    .local v7, "c":Luk/co/alt236/easycursor/EasyCursor;
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 70
    const-string v2, "sponsorCampaign"

    invoke-interface {v7, v2}, Luk/co/alt236/easycursor/EasyCursor;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 75
    .local v8, "res":Ljava/lang/Long;
    :goto_1
    invoke-static {v7}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    move-object v4, v8

    .line 77
    goto :goto_0

    .line 72
    .end local v8    # "res":Ljava/lang/Long;
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "res":Ljava/lang/Long;
    goto :goto_1
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSponsorCampaignBanners(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "sponsorCampaignId"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 93
    const/4 v2, 0x7

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "id"

    aput-object v2, v1, v9

    const-string v2, "adbanners_campaigns.campaigns"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v5, "name"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "bannerUrl"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "linkType"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "infoPage"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "exhibitor"

    aput-object v5, v1, v2

    .line 103
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v7, "adbanners LEFT OUTER JOIN adbanners_campaigns ON adbanners.id=adbanners_campaigns.adbanners_id"

    .line 107
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "adbanners_campaigns.campaigns=?"

    .line 108
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v9

    .line 110
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 111
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 112
    const-string v2, "adbanners LEFT OUTER JOIN adbanners_campaigns ON adbanners.id=adbanners_campaigns.adbanners_id"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 113
    const-string v2, "adbanners_campaigns.campaigns=?"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSponsorCampaign;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method
