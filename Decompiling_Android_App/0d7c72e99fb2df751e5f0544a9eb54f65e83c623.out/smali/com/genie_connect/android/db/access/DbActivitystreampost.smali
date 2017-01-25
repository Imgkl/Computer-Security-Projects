.class public Lcom/genie_connect/android/db/access/DbActivitystreampost;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbActivitystreampost.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessGeneric;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/access/DbActivitystreampost$1;
    }
.end annotation


# static fields
.field public static final supportedEntities:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;


# instance fields
.field final sqlExcludeEntityPostsWhere:Ljava/lang/String;

.field final sqlSelect:Ljava/lang/String;

.field final sqlSelectColumns:Ljava/lang/String;

.field final sqlSelectFavs:Ljava/lang/String;

.field final sqlSelectForEntity:Ljava/lang/String;

.field final sqlSelectMyPosts:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 68
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v1, 0x0

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->DOWNLOADABLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbActivitystreampost;->supportedEntities:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 23
    const-string v0, "SELECT id AS _id, id, author_name, author_visitor, title, message, noComments, timestamp, type, url, isFavourite, author_imageUrl"

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbActivitystreampost;->sqlSelectColumns:Ljava/lang/String;

    .line 38
    const-string v0, "WHERE NOT EXISTS(Select * FROM activityStreamPosts_associatedDownloadables WHERE activitystreamposts_id = activityStreamPosts.id)AND NOT EXISTS(Select * FROM activityStreamPosts_associatedExhibitors WHERE activitystreamposts_id = activityStreamPosts.id)AND NOT EXISTS(Select * FROM activityStreamPosts_associatedPOIs WHERE activitystreamposts_id = activityStreamPosts.id)AND NOT EXISTS(Select * FROM activityStreamPosts_associatedVisitors WHERE activitystreamposts_id = activityStreamPosts.id)AND NOT EXISTS(Select * FROM activityStreamPosts_associatedSubSessions WHERE activitystreamposts_id = activityStreamPosts.id)AND NOT EXISTS(Select * FROM activityStreamPosts_associatedSpeakers WHERE activitystreamposts_id = activityStreamPosts.id)AND NOT EXISTS(Select * FROM activityStreamPosts_associatedSessions WHERE activitystreamposts_id = activityStreamPosts.id)"

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbActivitystreampost;->sqlExcludeEntityPostsWhere:Ljava/lang/String;

    .line 47
    const-string v0, "SELECT id AS _id, id, author_name, author_visitor, title, message, noComments, timestamp, type, url, isFavourite, author_imageUrl%s FROM activitystreamposts ORDER BY timestamp DESC "

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbActivitystreampost;->sqlSelect:Ljava/lang/String;

    .line 52
    const-string v0, "SELECT id AS _id, id, author_name, author_visitor, title, message, noComments, timestamp, type, url, isFavourite, author_imageUrl FROM activitystreamposts T WHERE EXISTS (SELECT * FROM activityStreamPosts_associated%s WHERE activitystreamposts_id = T.id AND associated%s = ?) ORDER BY timestamp DESC "

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbActivitystreampost;->sqlSelectForEntity:Ljava/lang/String;

    .line 58
    const-string v0, "SELECT id AS _id, id, author_name, author_visitor, title, message, noComments, timestamp, type, url, isFavourite, author_imageUrl FROM activitystreamposts WHERE isFavourite=1 ORDER BY timestamp DESC "

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbActivitystreampost;->sqlSelectFavs:Ljava/lang/String;

    .line 63
    const-string v0, "SELECT id AS _id, id, author_name, author_visitor, title, message, noComments, timestamp, type, url, isFavourite, author_imageUrl FROM activitystreamposts WHERE author_visitor=? ORDER BY timestamp DESC "

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbActivitystreampost;->sqlSelectMyPosts:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private getAssociatedDownloadable(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 3
    .param p1, "activityStreamPostID"    # J

    .prologue
    .line 562
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedDownloadablesIds(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 563
    .local v0, "downloadableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 564
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDownloadablesDb()Lcom/genie_connect/android/db/access/DbDownloadables;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/db/access/DbDownloadables;->getDownloadablesByIds(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 567
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAssociatedDownloadablesIds(J)Ljava/util/ArrayList;
    .locals 13
    .param p1, "activityStreamPostID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 402
    const-string v11, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associateddownloadables act_pois ON act_pois.activitystreamposts_id=id"

    .line 405
    .local v11, "sqlTables":Ljava/lang/String;
    const-string v10, "id"

    .line 406
    .local v10, "orderBy":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "associatedDownloadables"

    aput-object v2, v1, v6

    .line 407
    .local v1, "selection":[Ljava/lang/String;
    const-string v12, "id=?  AND associatedDownloadables IS NOT NULL"

    .line 408
    .local v12, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    .line 409
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 410
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 411
    const-string v2, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associateddownloadables act_pois ON act_pois.activitystreamposts_id=id"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 412
    const-string v2, "id=?  AND associatedDownloadables IS NOT NULL"

    const-string v6, "id"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v9

    .line 414
    .local v9, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v9, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v8

    .line 415
    .local v8, "ec":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 416
    .local v7, "downloadableIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v8, :cond_1

    invoke-interface {v8}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 418
    :cond_0
    const-string v2, "associatedDownloadables"

    invoke-interface {v8, v2}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-interface {v8}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 421
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 423
    :cond_1
    invoke-interface {v8}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    .line 425
    return-object v7
.end method

.method private getAssociatedExhibitorIds(J)Ljava/util/ArrayList;
    .locals 13
    .param p1, "activityStreamPostID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 293
    const-string v11, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedexhibitors act_exh ON act_exh.activitystreamposts_id=id"

    .line 295
    .local v11, "sqlTables":Ljava/lang/String;
    const-string v10, "id"

    .line 296
    .local v10, "orderBy":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "associatedExhibitors"

    aput-object v2, v1, v6

    .line 297
    .local v1, "selection":[Ljava/lang/String;
    const-string v12, "id=? AND associatedExhibitors IS NOT NULL"

    .line 299
    .local v12, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    .line 300
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 301
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 302
    const-string v2, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedexhibitors act_exh ON act_exh.activitystreamposts_id=id"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 303
    const-string v2, "id=? AND associatedExhibitors IS NOT NULL"

    const-string v6, "id"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v9

    .line 305
    .local v9, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v9, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    .line 306
    .local v7, "ec":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v8, "exhibitorIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 309
    :cond_0
    const-string v2, "associatedExhibitors"

    invoke-interface {v7, v2}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 314
    :cond_1
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    .line 316
    return-object v8
.end method

.method private getAssociatedExhibitors(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 3
    .param p1, "activityStreamPostID"    # J

    .prologue
    .line 526
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedExhibitorIds(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 527
    .local v0, "exhibitorIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getExhibitorsDb()Lcom/genie_connect/android/db/access/DbExhibitors;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorsByIds(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 531
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAssociatedPois(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 3
    .param p1, "activityStreamPostID"    # J

    .prologue
    .line 553
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedPoisIds(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 554
    .local v0, "poiIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getPoisDb()Lcom/genie_connect/android/db/access/DbPoi;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/db/access/DbPoi;->getPoisByIds(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 558
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAssociatedPoisIds(J)Ljava/util/ArrayList;
    .locals 13
    .param p1, "activityStreamPostID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 376
    const-string v11, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedpois act_pois ON act_pois.activitystreamposts_id=id"

    .line 379
    .local v11, "sqlTables":Ljava/lang/String;
    const-string v9, "id"

    .line 380
    .local v9, "orderBy":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "associatedPOIs"

    aput-object v2, v1, v6

    .line 381
    .local v1, "selection":[Ljava/lang/String;
    const-string v12, "id=? AND associatedPOIs IS NOT NULL"

    .line 382
    .local v12, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    .line 383
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 384
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 385
    const-string v2, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedpois act_pois ON act_pois.activitystreamposts_id=id"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 386
    const-string v2, "id=? AND associatedPOIs IS NOT NULL"

    const-string v6, "id"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v8

    .line 388
    .local v8, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v8, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    .line 389
    .local v7, "ec":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v10, "poiIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 392
    :cond_0
    const-string v2, "associatedPOIs"

    invoke-interface {v7, v2}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 395
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 397
    :cond_1
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    .line 398
    return-object v10
.end method

.method private getAssociatedProducts(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 3
    .param p1, "activityStreamPostID"    # J

    .prologue
    .line 544
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedProductsIds(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 545
    .local v0, "productIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 546
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getProductsDb()Lcom/genie_connect/android/db/access/DbProducts;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/db/access/DbProducts;->getProductsByIds(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 549
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAssociatedProductsIds(J)Ljava/util/ArrayList;
    .locals 13
    .param p1, "activityStreamPostID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 348
    const-string v11, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedproducts act_prods ON act_prods.activitystreamposts_id=id"

    .line 351
    .local v11, "sqlTables":Ljava/lang/String;
    const-string v9, "id"

    .line 352
    .local v9, "orderBy":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "associatedProducts"

    aput-object v2, v1, v6

    .line 353
    .local v1, "selection":[Ljava/lang/String;
    const-string v12, "id=?  AND associatedProducts IS NOT NULL"

    .line 354
    .local v12, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    .line 355
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 356
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 357
    const-string v2, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedproducts act_prods ON act_prods.activitystreamposts_id=id"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 358
    const-string v2, "id=?  AND associatedProducts IS NOT NULL"

    const-string v6, "id"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v8

    .line 360
    .local v8, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v8, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    .line 361
    .local v7, "ec":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v10, "productsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 364
    :cond_0
    const-string v2, "associatedProducts"

    invoke-interface {v7, v2}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 369
    :cond_1
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    .line 370
    return-object v10
.end method

.method private getAssociatedSpeakers(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 5
    .param p1, "activityStreamPostID"    # J

    .prologue
    .line 512
    const/4 v0, 0x0

    .line 513
    .local v0, "ec":Luk/co/alt236/easycursor/EasyCursor;
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedSpeakersIds(J)Ljava/util/ArrayList;

    move-result-object v1

    .line 514
    .local v1, "speakerIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSpeakersDb()Lcom/genie_connect/android/db/access/DbSpeakers;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakersByIds(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ DbSpeakers getAssociatedSpeakers returns "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 522
    :goto_0
    return-object v0

    .line 520
    :cond_0
    const-string v2, "^ DbSpeakers getAssociatedSpeakers returns null"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getAssociatedSpeakersIds(J)Ljava/util/ArrayList;
    .locals 13
    .param p1, "activityStreamPostID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 458
    const-string v11, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedspeakers act_speakers ON act_speakers.activitystreamposts_id=id"

    .line 461
    .local v11, "sqlTables":Ljava/lang/String;
    const-string v9, "id"

    .line 462
    .local v9, "orderBy":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "associatedSpeakers"

    aput-object v2, v1, v6

    .line 463
    .local v1, "selection":[Ljava/lang/String;
    const-string v12, "id=? AND associatedSpeakers IS NOT NULL"

    .line 465
    .local v12, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    .line 466
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 467
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 468
    const-string v2, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedspeakers act_speakers ON act_speakers.activitystreamposts_id=id"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 469
    const-string v2, "id=? AND associatedSpeakers IS NOT NULL"

    const-string v6, "id"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v8

    .line 471
    .local v8, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v8, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    .line 472
    .local v7, "ec":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 473
    .local v10, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 475
    :cond_0
    const-string v2, "associatedSpeakers"

    invoke-interface {v7, v2}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 478
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 480
    :cond_1
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    .line 481
    return-object v10
.end method

.method private getAssociatedSubSessionIds(J)Ljava/util/ArrayList;
    .locals 13
    .param p1, "activityStreamPostID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 430
    const-string v11, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedsubsessions act_subsess ON act_subsess.activitystreamposts_id=id"

    .line 433
    .local v11, "sqlTables":Ljava/lang/String;
    const-string v9, "id"

    .line 434
    .local v9, "orderBy":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "associatedSubSessions"

    aput-object v2, v1, v6

    .line 435
    .local v1, "selection":[Ljava/lang/String;
    const-string v12, "id=? AND associatedSubSessions IS NOT NULL"

    .line 437
    .local v12, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    .line 438
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 439
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 440
    const-string v2, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedsubsessions act_subsess ON act_subsess.activitystreamposts_id=id"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 441
    const-string v2, "id=? AND associatedSubSessions IS NOT NULL"

    const-string v6, "id"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v8

    .line 443
    .local v8, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v8, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    .line 444
    .local v7, "ec":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v10, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 447
    :cond_0
    const-string v2, "associatedSubSessions"

    invoke-interface {v7, v2}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 450
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 452
    :cond_1
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    .line 454
    return-object v10
.end method

.method private getAssociatedSubSessions(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 3
    .param p1, "activityStreamPostID"    # J

    .prologue
    .line 503
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedSubSessionIds(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 504
    .local v0, "subsessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSubSessions()Lcom/genie_connect/android/db/access/DbSubsessions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/db/access/DbSubsessions;->getSubSessionsByIds(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 508
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAssociatedVisitorIds(J)Ljava/util/ArrayList;
    .locals 13
    .param p1, "activityStreamPostID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 320
    const-string v11, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedvisitors act_exh ON act_exh.activitystreamposts_id=id"

    .line 323
    .local v11, "sqlTables":Ljava/lang/String;
    const-string v10, "id"

    .line 324
    .local v10, "orderBy":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "associatedVisitors"

    aput-object v2, v1, v6

    .line 325
    .local v1, "selection":[Ljava/lang/String;
    const-string v12, "id=? AND associatedVisitors IS NOT NULL"

    .line 326
    .local v12, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    .line 327
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 328
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 329
    const-string v2, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedvisitors act_exh ON act_exh.activitystreamposts_id=id"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 330
    const-string v2, "id=? AND associatedVisitors IS NOT NULL"

    const-string v6, "id"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v9

    .line 332
    .local v9, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v9, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    .line 333
    .local v7, "ec":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v8, "exhibitorIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 336
    :cond_0
    const-string v2, "associatedVisitors"

    invoke-interface {v7, v2}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 339
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 341
    :cond_1
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    .line 342
    return-object v8
.end method

.method private getAssociatedVisitors(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 3
    .param p1, "activityStreamPostID"    # J

    .prologue
    .line 535
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedVisitorIds(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 536
    .local v0, "visitorIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getVisitorsDb()Lcom/genie_connect/android/db/access/DbVisitors;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/db/access/DbVisitors;->getVisitorsByIds(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 540
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getActivityStreamPictures(J)[Ljava/lang/String;
    .locals 13
    .param p1, "id"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    const-string v11, "activitystreamposts_imagesUrl"

    .line 165
    .local v11, "sqlTables":Ljava/lang/String;
    const-string v12, "activitystreamposts_id=?"

    .line 167
    .local v12, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    .line 168
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "imagesUrl"

    aput-object v2, v1, v6

    .line 170
    .local v1, "selection":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 171
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 172
    const-string v2, "activitystreamposts_imagesUrl"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 173
    const-string v2, "activitystreamposts_id=?"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v9

    .line 175
    .local v9, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v9, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    .line 176
    .local v7, "ec":Luk/co/alt236/easycursor/EasyCursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 177
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    new-array v10, v2, [Ljava/lang/String;

    .line 178
    .local v10, "ret":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-ge v8, v2, :cond_1

    .line 179
    const-string v2, "imagesUrl"

    invoke-interface {v7, v2}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v8

    .line 180
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    .line 178
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v8    # "i":I
    .end local v10    # "ret":[Ljava/lang/String;
    :cond_0
    move-object v10, v4

    .line 185
    :cond_1
    return-object v10
.end method

.method public getAll()Luk/co/alt236/easycursor/EasyCursor;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAll(Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getAll(Z)Luk/co/alt236/easycursor/EasyCursor;
    .locals 6
    .param p1, "hideEntityPosts"    # Z

    .prologue
    .line 89
    new-instance v2, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    invoke-direct {v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;-><init>()V

    const-string v3, "SELECT id AS _id, id, author_name, author_visitor, title, message, noComments, timestamp, type, url, isFavourite, author_imageUrl%s FROM activitystreamposts ORDER BY timestamp DESC "

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const-string v1, "WHERE NOT EXISTS(Select * FROM activityStreamPosts_associatedDownloadables WHERE activitystreamposts_id = activityStreamPosts.id)AND NOT EXISTS(Select * FROM activityStreamPosts_associatedExhibitors WHERE activitystreamposts_id = activityStreamPosts.id)AND NOT EXISTS(Select * FROM activityStreamPosts_associatedPOIs WHERE activitystreamposts_id = activityStreamPosts.id)AND NOT EXISTS(Select * FROM activityStreamPosts_associatedVisitors WHERE activitystreamposts_id = activityStreamPosts.id)AND NOT EXISTS(Select * FROM activityStreamPosts_associatedSubSessions WHERE activitystreamposts_id = activityStreamPosts.id)AND NOT EXISTS(Select * FROM activityStreamPosts_associatedSpeakers WHERE activitystreamposts_id = activityStreamPosts.id)AND NOT EXISTS(Select * FROM activityStreamPosts_associatedSessions WHERE activitystreamposts_id = activityStreamPosts.id)"

    :goto_0
    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setRawSql(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v1

    const-string v2, "Raw query"

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setModelComment(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v0

    .line 94
    .local v0, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1

    .line 89
    .end local v0    # "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getAllAssociatedEntitiesForPost(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityStreamPostID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/eventgenie/android/container/CursorEntityWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v5, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/eventgenie/android/container/CursorEntityWrapper;>;"
    sget-object v0, Lcom/genie_connect/android/db/access/DbActivitystreampost;->supportedEntities:[Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .local v0, "arr$":[Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 198
    .local v2, "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    const/4 v1, 0x0

    .line 199
    .local v1, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    sget-object v6, Lcom/genie_connect/android/db/access/DbActivitystreampost$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 225
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAssociatedEntityIdsForPost not implemented for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 201
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedExhibitors(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 229
    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 230
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    .line 231
    :goto_2
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_0

    .line 232
    new-instance v6, Lcom/eventgenie/android/container/CursorEntityWrapper;

    invoke-direct {v6, p1, v2, v1}, Lcom/eventgenie/android/container/CursorEntityWrapper;-><init>(Landroid/content/Context;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Luk/co/alt236/easycursor/EasyCursor;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_2

    .line 204
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedVisitors(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 205
    goto :goto_1

    .line 207
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedProducts(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 208
    goto :goto_1

    .line 210
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedPois(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 211
    goto :goto_1

    .line 213
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedDownloadable(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 214
    goto :goto_1

    .line 216
    :pswitch_5
    invoke-virtual {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedSessions(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 217
    goto :goto_1

    .line 219
    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedSubSessions(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 220
    goto :goto_1

    .line 222
    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedSpeakers(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 223
    goto :goto_1

    .line 197
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "cursor":Luk/co/alt236/easycursor/EasyCursor;
    .end local v2    # "entity":Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    :cond_1
    return-object v5

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getAssociatedEntityIdsForPost(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Ljava/util/ArrayList;
    .locals 4
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "activityStreamPostID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 242
    sget-object v0, Lcom/genie_connect/android/db/access/DbActivitystreampost$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAssociatedEntityIdsForPost not implemented for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedExhibitorIds(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 246
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedVisitorIds(J)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedProductsIds(J)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 250
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedPoisIds(J)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedDownloadablesIds(J)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 254
    :pswitch_5
    invoke-virtual {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedSessionIds(J)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 256
    :pswitch_6
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedSubSessionIds(J)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 258
    :pswitch_7
    invoke-direct {p0, p2, p3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedSpeakersIds(J)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getAssociatedSessionIds(J)Ljava/util/ArrayList;
    .locals 13
    .param p1, "activityStreamPostID"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 267
    const-string v11, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedsessions act_sess ON act_sess.activitystreamposts_id=id"

    .line 269
    .local v11, "sqlTables":Ljava/lang/String;
    const-string v9, "id"

    .line 270
    .local v9, "orderBy":Ljava/lang/String;
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "associatedSessions"

    aput-object v2, v1, v6

    .line 271
    .local v1, "selection":[Ljava/lang/String;
    const-string v12, "id=?  AND associatedSessions IS NOT NULL"

    .line 273
    .local v12, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v6

    .line 274
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 275
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 276
    const-string v2, "activitystreamposts LEFT OUTER JOIN activitystreamposts_associatedsessions act_sess ON act_sess.activitystreamposts_id=id"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 277
    const-string v2, "id=?  AND associatedSessions IS NOT NULL"

    const-string v6, "id"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v8

    .line 279
    .local v8, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v8, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v7

    .line 280
    .local v7, "ec":Luk/co/alt236/easycursor/EasyCursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v10, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 283
    :cond_0
    const-string v2, "associatedSessions"

    invoke-interface {v7, v2}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 286
    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 288
    :cond_1
    invoke-interface {v7}, Luk/co/alt236/easycursor/EasyCursor;->close()V

    .line 289
    return-object v10
.end method

.method public getAssociatedSessions(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 3
    .param p1, "activityStreamPostID"    # J

    .prologue
    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAssociatedSessionIds(J)Ljava/util/ArrayList;

    move-result-object v0

    .line 496
    .local v0, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 497
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSessionsDb()Lcom/genie_connect/android/db/access/DbSessions;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/db/access/DbSessions;->getSessionsById(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 500
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAssociatedSessions(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation

    .prologue
    .line 486
    .local p1, "sessionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 487
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getSessionsDb()Lcom/genie_connect/android/db/access/DbSessions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/genie_connect/android/db/access/DbSessions;->getSessionsById(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 490
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getById(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 135
    const-string v8, "activitystreamposts"

    .line 136
    .local v8, "sqlTables":Ljava/lang/String;
    const-string v9, "id=?"

    .line 137
    .local v9, "sqlWhere":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    .line 139
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    const/16 v2, 0xb

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "id AS _id"

    aput-object v2, v1, v5

    const-string v2, "id"

    aput-object v2, v1, v6

    const/4 v2, 0x2

    const-string v5, "author_name"

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "author_visitor"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v5, "title"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "message"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v5, "timestamp"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v5, "type"

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v5, "url"

    aput-object v5, v1, v2

    const/16 v2, 0x9

    const-string v5, "isFavourite"

    aput-object v5, v1, v2

    const/16 v2, 0xa

    const-string v5, "author_imageUrl"

    aput-object v5, v1, v2

    .line 153
    .local v1, "selection":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 154
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 155
    const-string v2, "activitystreamposts"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 156
    const-string v2, "id=?"

    const-string/jumbo v6, "timestamp DESC "

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v7

    .line 159
    .local v7, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v7, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getById(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Activistreampost do not have String keys!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFavs()Luk/co/alt236/easycursor/EasyCursor;
    .locals 3

    .prologue
    .line 115
    new-instance v1, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    invoke-direct {v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;-><init>()V

    const-string v2, "SELECT id AS _id, id, author_name, author_visitor, title, message, noComments, timestamp, type, url, isFavourite, author_imageUrl FROM activitystreamposts WHERE isFavourite=1 ORDER BY timestamp DESC "

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setRawSql(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v1

    const-string v2, "Raw query"

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setModelComment(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v0

    .line 120
    .local v0, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 8
    .param p1, "type"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p2, "entityId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    const-string v2, "SELECT id AS _id, id, author_name, author_visitor, title, message, noComments, timestamp, type, url, isFavourite, author_imageUrl FROM activitystreamposts T WHERE EXISTS (SELECT * FROM activityStreamPosts_associated%s WHERE activitystreamposts_id = T.id AND associated%s = ?) ORDER BY timestamp DESC "

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "sqlForEntity":Ljava/lang/String;
    new-instance v2, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    invoke-direct {v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;-><init>()V

    invoke-virtual {v2, v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setRawSql(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v2

    const-string v3, "Raw query"

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setModelComment(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setSelectionArgs([Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v0

    .line 111
    .local v0, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getMyPosts(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 5
    .param p1, "visitorId"    # J

    .prologue
    .line 124
    new-instance v1, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    invoke-direct {v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;-><init>()V

    const-string v2, "SELECT id AS _id, id, author_name, author_visitor, title, message, noComments, timestamp, type, url, isFavourite, author_imageUrl FROM activitystreamposts WHERE author_visitor=? ORDER BY timestamp DESC "

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setRawSql(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v1

    const-string v2, "Raw query"

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setModelComment(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setSelectionArgs([Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v0

    .line 130
    .local v0, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ACTIVITYSTREAMPOST:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method
