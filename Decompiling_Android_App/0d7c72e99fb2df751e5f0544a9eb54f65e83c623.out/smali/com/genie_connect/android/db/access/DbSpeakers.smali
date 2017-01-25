.class public final Lcom/genie_connect/android/db/access/DbSpeakers;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbSpeakers.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessGeneric;
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;
    }
.end annotation


# static fields
.field private static final ENTITY_NAME:Ljava/lang/String; = "speakers"

.field static final FULLNAMES_COL:Ljava/lang/String; = "ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullNames"

.field static final FULL_TITLE_NAME_COL:Ljava/lang/String; = "ifnull(title || \' \', \'\') || ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullTitleNames"


# direct methods
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

.method private static getSpeakers(Landroid/database/sqlite/SQLiteDatabase;JLcom/genie_connect/android/db/access/DbSpeakers$SessionType;Lcom/genie_connect/common/db/model/Speaker$SpeakerType;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "id"    # J
    .param p3, "sessionType"    # Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;
    .param p4, "speakerType"    # Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    .prologue
    .line 387
    const/16 v4, 0xa

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "b.id _id"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string v5, "b.id"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string v5, "firstNames"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "lastNames"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullNames"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "ifnull(title || \' \', \'\') || ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullTitleNames"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "companyName"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "jobTitle"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "fullDescription"

    const-string v10, "fullDescription"

    invoke-static {v5, v10}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSubStringDeclaration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "mugShotUrl"

    aput-object v5, v1, v4

    .line 399
    .local v1, "sqlSelect":[Ljava/lang/String;
    invoke-virtual {p4}, Lcom/genie_connect/common/db/model/Speaker$SpeakerType;->toString()Ljava/lang/String;

    move-result-object v8

    .line 400
    .local v8, "speakerTypeAsString":Ljava/lang/String;
    invoke-virtual {p3}, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->toString()Ljava/lang/String;

    move-result-object v7

    .line 402
    .local v7, "sessionTypeAsString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a INNER JOIN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "speakers b ON (b.id = a."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 407
    .local v9, "sqlTables":Ljava/lang/String;
    const/4 v2, 0x0

    .line 409
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 411
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    sget-object v4, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->SESSION:Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    if-ne p3, v4, :cond_0

    .line 412
    const-string v2, "sessions_id=?"

    .line 419
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastNames"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/genie_connect/android/db/access/DbSpeakers;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 421
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 422
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 423
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {v4, p0}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4

    .line 413
    .end local v0    # "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    .end local v6    # "orderBy":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->SUBSESSION:Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    if-ne p3, v4, :cond_1

    .line 414
    const-string v2, "subsessions_id=?"

    goto :goto_0

    .line 416
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 10
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;I)",
            "Luk/co/alt236/easycursor/EasyCursor;"
        }
    .end annotation

    .prologue
    .local p2, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v9, 0x1

    .line 313
    invoke-static {p2}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->getSelectedTagsListFromTree(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/util/List;

    move-result-object v3

    .line 314
    .local v3, "tagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 315
    :cond_0
    new-instance v0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    const-string v4, "speakers AS a"

    invoke-direct {v0, v4, p2}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;-><init>(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    .line 317
    .local v0, "builder":Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;
    invoke-virtual {v0, p3}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->setLimit(I)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 319
    const-string v4, "a.id"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 320
    const-string v4, "a.id AS _id"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 321
    const-string v4, "a.id AS groupById"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 322
    const-string v4, "ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullNames"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 323
    const-string v4, "ifnull(title || \' \', \'\') || ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullTitleNames"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 324
    const-string v4, "lastNames"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 325
    const-string v4, "companyName"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 326
    const-string v4, "jobTitle"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 327
    const-string v4, "fullDescription"

    const-string v5, "fullDescription"

    invoke-static {v4, v5}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSubStringDeclaration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 329
    const-string v4, "contact_email"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 330
    const-string v4, "contact_fax"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 331
    const-string v4, "contact_telephone"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 332
    const-string v4, "contact_www"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 333
    const-string v4, "contact_blogUrl"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 334
    const-string v4, "contact_facebook"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 335
    const-string v4, "contact_linkedIn"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 336
    const-string v4, "contact_telephone2"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 337
    const-string v4, "contact_twitter"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 338
    const-string v4, "contact_youtubeUrl"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 339
    const-string v4, "address_address1"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 340
    const-string v4, "address_address2"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 341
    const-string v4, "address_address3"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 342
    const-string v4, "address_address3"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 343
    const-string v4, "address_country"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 344
    const-string v4, "address_county"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 345
    const-string v4, "address_postCode"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 346
    const-string v4, "address_town"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 347
    const-string v4, "shareUrl"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 348
    const-string v4, "mugShotUrl"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 349
    const-string v4, "f.speaker is not null isFavourite"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 350
    const-string v4, "n.relatedSpeaker IS NOT NULL hasNote"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEFT OUTER JOIN favouritespeakers f ON a.id = f.speaker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "f"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbSpeakers;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEFT OUTER JOIN notes n ON a.id =   n.relatedSpeaker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "n"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbSpeakers;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 354
    const-string v4, "LEFT OUTER JOIN speakers_relatedtags d ON a.id = d.speakers_id"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 355
    const-string v4, "LEFT OUTER JOIN tagsv2 x ON d.relatedTags = x.id"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastNames"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/genie_connect/android/db/access/DbSpeakers;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addOrderBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 358
    invoke-virtual {v0, v9}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->setDistinct(Z)V

    .line 359
    const-string v4, "groupById"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addGroupBy(Ljava/lang/String;)V

    .line 361
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 362
    const-string v4, "fullNames like ? OR companyName like ? OR fullDescription like ? OR address_country like ? OR address_town like ?"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->buildWhereStatement(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSearchTerm(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 375
    :cond_1
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->build()Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "rawQuery":Ljava/lang/String;
    new-instance v4, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    invoke-direct {v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;-><init>()V

    invoke-virtual {v4, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setRawSql(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    .line 379
    .local v1, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSpeakers;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    .line 382
    .end local v0    # "builder":Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;
    .end local v1    # "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    .end local v2    # "rawQuery":Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAll()Luk/co/alt236/easycursor/EasyCursor;
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakers(Ljava/lang/Long;Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getById(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 77
    const/16 v5, 0x1e

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "a.id AS _id"

    aput-object v5, v1, v9

    const-string v5, "a.id"

    aput-object v5, v1, v10

    const/4 v5, 0x2

    const-string v8, "ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullNames"

    aput-object v8, v1, v5

    const/4 v5, 0x3

    const-string v8, "ifnull(title || \' \', \'\') || ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullTitleNames"

    aput-object v8, v1, v5

    const/4 v5, 0x4

    const-string v8, "lastNames"

    aput-object v8, v1, v5

    const/4 v5, 0x5

    const-string v8, "companyName"

    aput-object v8, v1, v5

    const/4 v5, 0x6

    const-string v8, "jobTitle"

    aput-object v8, v1, v5

    const/4 v5, 0x7

    const-string v8, "fullDescription"

    aput-object v8, v1, v5

    const/16 v5, 0x8

    const-string v8, "fullDescription"

    aput-object v8, v1, v5

    const/16 v5, 0x9

    const-string v8, "contact_email"

    aput-object v8, v1, v5

    const/16 v5, 0xa

    const-string v8, "contact_fax"

    aput-object v8, v1, v5

    const/16 v5, 0xb

    const-string v8, "contact_telephone"

    aput-object v8, v1, v5

    const/16 v5, 0xc

    const-string v8, "contact_www"

    aput-object v8, v1, v5

    const/16 v5, 0xd

    const-string v8, "contact_blogUrl"

    aput-object v8, v1, v5

    const/16 v5, 0xe

    const-string v8, "contact_facebook"

    aput-object v8, v1, v5

    const/16 v5, 0xf

    const-string v8, "contact_linkedIn"

    aput-object v8, v1, v5

    const/16 v5, 0x10

    const-string v8, "contact_telephone2"

    aput-object v8, v1, v5

    const/16 v5, 0x11

    const-string v8, "contact_twitter"

    aput-object v8, v1, v5

    const/16 v5, 0x12

    const-string v8, "contact_youtubeUrl"

    aput-object v8, v1, v5

    const/16 v5, 0x13

    const-string v8, "address_address1"

    aput-object v8, v1, v5

    const/16 v5, 0x14

    const-string v8, "address_address2"

    aput-object v8, v1, v5

    const/16 v5, 0x15

    const-string v8, "address_address3"

    aput-object v8, v1, v5

    const/16 v5, 0x16

    const-string v8, "address_country"

    aput-object v8, v1, v5

    const/16 v5, 0x17

    const-string v8, "address_county"

    aput-object v8, v1, v5

    const/16 v5, 0x18

    const-string v8, "address_postCode"

    aput-object v8, v1, v5

    const/16 v5, 0x19

    const-string v8, "address_town"

    aput-object v8, v1, v5

    const/16 v5, 0x1a

    const-string v8, "shareUrl"

    aput-object v8, v1, v5

    const/16 v5, 0x1b

    const-string v8, "mugShotUrl"

    aput-object v8, v1, v5

    const/16 v5, 0x1c

    const-string v8, "f.speaker IS NOT NULL isFavourite"

    aput-object v8, v1, v5

    const/16 v5, 0x1d

    const-string v8, "n.relatedSpeaker IS NOT NULL hasNote"

    aput-object v8, v1, v5

    .line 109
    .local v1, "sqlSelect":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "speakers a LEFT OUTER JOIN favouritespeakers f ON (a.id = f.speaker "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "f"

    invoke-virtual {p0, v8}, Lcom/genie_connect/android/db/access/DbSpeakers;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " LEFT OUTER JOIN notes n ON (a.id = n.relatedSpeaker "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "n"

    invoke-virtual {p0, v8}, Lcom/genie_connect/android/db/access/DbSpeakers;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v2, "a.id=?"

    .line 117
    .local v2, "sqlWhere":Ljava/lang/String;
    new-array v3, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v9

    .line 119
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lastNames"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/genie_connect/android/db/access/DbSpeakers;->getStringCollation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 122
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    move-object v5, v4

    .line 123
    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSpeakers;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4
.end method

.method public getById(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Speakers do not have String keys!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getSpeakers(Ljava/lang/Long;Z)Luk/co/alt236/easycursor/EasyCursor;
    .locals 7
    .param p1, "tagId"    # Ljava/lang/Long;
    .param p2, "favorite"    # Z

    .prologue
    .line 145
    new-instance v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    invoke-direct {v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;-><init>()V

    .line 146
    .local v0, "builder":Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    const-string v2, "a.id"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 147
    const-string v2, "a.id"

    const-string v3, "_id"

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 148
    const-string v2, "ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullNames"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 149
    const-string v2, "ifnull(title || \' \', \'\') || ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullTitleNames"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 150
    const-string v2, "lastNames"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 151
    const-string v2, "companyName"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 152
    const-string v2, "jobTitle"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 153
    const-string v2, "fullDescription"

    const-string v3, "fullDescription"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSubStringDeclaration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 154
    const-string v2, "contact_email"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 155
    const-string v2, "contact_fax"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 156
    const-string v2, "contact_telephone"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 157
    const-string v2, "contact_www"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 158
    const-string v2, "contact_blogUrl"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 159
    const-string v2, "contact_facebook"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 160
    const-string v2, "contact_linkedIn"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 161
    const-string v2, "contact_telephone2"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 162
    const-string v2, "contact_twitter"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 163
    const-string v2, "contact_youtubeUrl"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 164
    const-string v2, "address_address1"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 165
    const-string v2, "address_address2"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 166
    const-string v2, "address_address3"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 167
    const-string v2, "address_country"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 168
    const-string v2, "address_county"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 169
    const-string v2, "address_postCode"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 170
    const-string v2, "address_town"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 171
    const-string v2, "shareUrl"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 172
    const-string v2, "mugShotUrl"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 173
    const-string v2, "f.speaker is not null isFavourite"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 174
    const-string v2, "n.relatedSpeaker IS NOT NULL hasNote"

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 176
    const-string v2, "speakers"

    const-string v3, "a"

    invoke-virtual {v0, v2, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addTable(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 178
    if-eqz p2, :cond_0

    .line 179
    const-string v1, "f.speaker IS NOT NULL"

    .line 180
    .local v1, "sqlWhere":Ljava/lang/String;
    sget-object v3, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v4, "f.speaker IS NOT NULL"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 189
    .end local v1    # "sqlWhere":Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    .line 190
    const-string v2, "speakers_relatedTags"

    const-string v3, "d"

    const-string v4, "a.id = d.speakers_id"

    invoke-virtual {v0, v2, v3, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 191
    sget-object v2, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v3, "relatedTags=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 197
    :cond_1
    const-string v2, "favouritespeakers"

    const-string v3, "f"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a.id = f.speaker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "f"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbSpeakers;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 198
    const-string v2, "notes"

    const-string v3, "n"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "a.id = n.relatedSpeaker "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "n"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbSpeakers;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastNames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/genie_connect/android/db/access/DbSpeakers;->getStringCollation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addOrderBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 202
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSpeakers;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getSpeakersByIds(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
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
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 206
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 207
    const/16 v5, 0x1e

    new-array v1, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "a.id AS _id"

    aput-object v10, v1, v5

    const/4 v5, 0x1

    const-string v10, "a.id"

    aput-object v10, v1, v5

    const/4 v5, 0x2

    const-string v10, "ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullNames"

    aput-object v10, v1, v5

    const/4 v5, 0x3

    const-string v10, "ifnull(title || \' \', \'\') || ifnull(firstNames || \' \', \'\') || ifnull(lastNames, \'\') fullTitleNames"

    aput-object v10, v1, v5

    const/4 v5, 0x4

    const-string v10, "lastNames"

    aput-object v10, v1, v5

    const/4 v5, 0x5

    const-string v10, "companyName"

    aput-object v10, v1, v5

    const/4 v5, 0x6

    const-string v10, "jobTitle"

    aput-object v10, v1, v5

    const/4 v5, 0x7

    const-string v10, "fullDescription"

    aput-object v10, v1, v5

    const/16 v5, 0x8

    const-string v10, "fullDescription"

    aput-object v10, v1, v5

    const/16 v5, 0x9

    const-string v10, "contact_email"

    aput-object v10, v1, v5

    const/16 v5, 0xa

    const-string v10, "contact_fax"

    aput-object v10, v1, v5

    const/16 v5, 0xb

    const-string v10, "contact_telephone"

    aput-object v10, v1, v5

    const/16 v5, 0xc

    const-string v10, "contact_www"

    aput-object v10, v1, v5

    const/16 v5, 0xd

    const-string v10, "contact_blogUrl"

    aput-object v10, v1, v5

    const/16 v5, 0xe

    const-string v10, "contact_facebook"

    aput-object v10, v1, v5

    const/16 v5, 0xf

    const-string v10, "contact_linkedIn"

    aput-object v10, v1, v5

    const/16 v5, 0x10

    const-string v10, "contact_telephone2"

    aput-object v10, v1, v5

    const/16 v5, 0x11

    const-string v10, "contact_twitter"

    aput-object v10, v1, v5

    const/16 v5, 0x12

    const-string v10, "contact_youtubeUrl"

    aput-object v10, v1, v5

    const/16 v5, 0x13

    const-string v10, "address_address1"

    aput-object v10, v1, v5

    const/16 v5, 0x14

    const-string v10, "address_address2"

    aput-object v10, v1, v5

    const/16 v5, 0x15

    const-string v10, "address_address3"

    aput-object v10, v1, v5

    const/16 v5, 0x16

    const-string v10, "address_country"

    aput-object v10, v1, v5

    const/16 v5, 0x17

    const-string v10, "address_county"

    aput-object v10, v1, v5

    const/16 v5, 0x18

    const-string v10, "address_postCode"

    aput-object v10, v1, v5

    const/16 v5, 0x19

    const-string v10, "address_town"

    aput-object v10, v1, v5

    const/16 v5, 0x1a

    const-string v10, "shareUrl"

    aput-object v10, v1, v5

    const/16 v5, 0x1b

    const-string v10, "mugShotUrl"

    aput-object v10, v1, v5

    const/16 v5, 0x1c

    const-string v10, "f.speaker IS NOT NULL isFavourite"

    aput-object v10, v1, v5

    const/16 v5, 0x1d

    const-string v10, "n.relatedSpeaker IS NOT NULL hasNote"

    aput-object v10, v1, v5

    .line 239
    .local v1, "sqlSelect":[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "speakers a LEFT OUTER JOIN favouritespeakers f ON (a.id = f.speaker "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "f"

    invoke-virtual {p0, v10}, Lcom/genie_connect/android/db/access/DbSpeakers;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " LEFT OUTER JOIN notes n ON (a.id = n.relatedSpeaker "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "n"

    invoke-virtual {p0, v10}, Lcom/genie_connect/android/db/access/DbSpeakers;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 246
    .local v9, "sqlTables":Ljava/lang/String;
    const-string v2, "a.id=?"

    .line 247
    .local v2, "where":Ljava/lang/String;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v7, v5, :cond_0

    .line 248
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " OR a.id=?"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    .line 252
    .local v3, "idsAsStrings":[Ljava/lang/String;
    const/4 v7, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v7, v5, :cond_1

    .line 253
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 252
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 256
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastNames"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/genie_connect/android/db/access/DbSpeakers;->getStringCollation()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 258
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 259
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    move-object v5, v4

    .line 260
    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v8

    .line 262
    .local v8, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSpeakers;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v8, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    .line 266
    .end local v0    # "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    .end local v1    # "sqlSelect":[Ljava/lang/String;
    .end local v2    # "where":Ljava/lang/String;
    .end local v3    # "idsAsStrings":[Ljava/lang/String;
    .end local v6    # "orderBy":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    .end local v9    # "sqlTables":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 265
    :cond_2
    const-string v5, "^ DbSpeakers returns null"

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getSpeakersForSession(JLcom/genie_connect/common/db/model/Speaker$SpeakerType;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 3
    .param p1, "sessionId"    # J
    .param p3, "speakerType"    # Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSpeakers;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->SESSION:Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    invoke-static {v0, p1, p2, v1, p3}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakers(Landroid/database/sqlite/SQLiteDatabase;JLcom/genie_connect/android/db/access/DbSpeakers$SessionType;Lcom/genie_connect/common/db/model/Speaker$SpeakerType;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getSpeakersForSubSession(JLcom/genie_connect/common/db/model/Speaker$SpeakerType;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 3
    .param p1, "subSessionId"    # J
    .param p3, "speakerType"    # Lcom/genie_connect/common/db/model/Speaker$SpeakerType;

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbSpeakers;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;->SUBSESSION:Lcom/genie_connect/android/db/access/DbSpeakers$SessionType;

    invoke-static {v0, p1, p2, v1, p3}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakers(Landroid/database/sqlite/SQLiteDatabase;JLcom/genie_connect/android/db/access/DbSpeakers$SessionType;Lcom/genie_connect/common/db/model/Speaker$SpeakerType;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "tagId"    # Ljava/lang/Long;

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/android/db/access/DbSpeakers;->getSpeakers(Ljava/lang/Long;Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/android/db/access/DbSpeakers;->search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/genie_connect/android/db/access/DbSpeakers;->search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;I)Luk/co/alt236/easycursor/EasyCursor;

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
    .line 309
    .local p2, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/genie_connect/android/db/access/DbSpeakers;->search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
