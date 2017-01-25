.class public final Lcom/genie_connect/android/db/access/DbExhibitors;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbExhibitors.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessSearch;
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessCountry;
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessLocation;


# instance fields
.field private final ENTITY_NAME:Ljava/lang/String;

.field private final ENTITY_NAME_DOT:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 62
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    .line 67
    return-void
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

    .line 600
    invoke-static {p2}, Lcom/genie_connect/android/db/access/TagsV2QueryHelper;->getSelectedTagsListFromTree(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Ljava/util/List;

    move-result-object v3

    .line 601
    .local v3, "tagList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 602
    :cond_0
    new-instance v0, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    iget-object v4, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    invoke-direct {v0, v4, p2}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;-><init>(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    .line 604
    .local v0, "builder":Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;
    invoke-virtual {v0, p3}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->setLimit(I)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 606
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS _id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 607
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS groupById"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 610
    const-string v4, "\'\' AS multilocations"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 613
    const-string v4, "logoUrl"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 614
    const-string v4, "fullDescription"

    const-string v5, "fullDescription"

    invoke-static {v4, v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getSubStringDeclaration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 616
    const-string v4, "exhibitorType"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 617
    const-string v4, "featured"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 618
    const-string v4, "locations"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 619
    const-string v4, "f.exhibitor IS NOT NULL as isFavourite"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 620
    const-string v4, "n.relatedExhibitor IS NOT NULL as hasNote"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 621
    const-string/jumbo v4, "t.colour AS colour"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addSelectColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 626
    const-string v4, "LEFT OUTER JOIN exhibitors_relatedTags d ON exhibitors.id = d.exhibitors_id"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 627
    const-string v4, "LEFT OUTER JOIN tagsv2 x ON d.relatedTags = x.id"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 629
    const-string v4, "LEFT OUTER JOIN exhibitors_locations ON exhibitors.id = exhibitors_locations.exhibitors_id"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 630
    const-string v4, "LEFT OUTER JOIN exhibitortypes t ON t.name = exhibitors.exhibitorType"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEFT OUTER JOIN favouriteexhibitors f ON exhibitors.id = f.exhibitor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "f"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEFT OUTER JOIN notes n ON exhibitors.id = n.relatedExhibitor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "n"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addJoin(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 636
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/genie_connect/android/db/access/DbExhibitors;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addOrderBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;

    .line 637
    invoke-virtual {v0, v9}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->setDistinct(Z)V

    .line 638
    const-string v4, "groupById"

    invoke-virtual {v0, v4}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->addGroupBy(Ljava/lang/String;)V

    .line 640
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 641
    const-string v4, "exhibitors.name like ? OR exhibitors.fullDescription like ? OR exhibitors.address_country like ? OR exhibitors.address_town like ? OR exhibitors_locations.locations like ?"

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

    .line 654
    :cond_1
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/TagsV2QueryBuilder;->build()Ljava/lang/String;

    move-result-object v2

    .line 655
    .local v2, "rawQuery":Ljava/lang/String;
    new-instance v4, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    invoke-direct {v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;-><init>()V

    invoke-virtual {v4, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setRawSql(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    .line 659
    .local v1, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    .line 663
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
.method public getByCountry(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 12
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 71
    if-nez p1, :cond_0

    .line 72
    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-virtual/range {v0 .. v11}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorsWithSingleLineLocations(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move v4, v8

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move v9, v8

    move v10, v8

    move v11, v8

    invoke-virtual/range {v0 .. v11}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorsWithSingleLineLocations(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getByLocation(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 12
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 82
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, p1

    move-object v7, v1

    move v8, v4

    move v9, v4

    move v10, v4

    move v11, v4

    invoke-virtual/range {v0 .. v11}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorsWithSingleLineLocations(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getCountries()Luk/co/alt236/easycursor/EasyCursor;
    .locals 3

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/genie_connect/android/db/access/CommonQueries;->getCountries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getExhibitorDetails(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "id"    # J

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 128
    const/16 v2, 0x1d

    new-array v1, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AS "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AS "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    const-string v5, "locations"

    aput-object v5, v1, v2

    const/4 v2, 0x4

    const-string v5, "contact_email"

    aput-object v5, v1, v2

    const/4 v2, 0x5

    const-string v5, "contact_fax"

    aput-object v5, v1, v2

    const/4 v2, 0x6

    const-string v5, "contact_telephone"

    aput-object v5, v1, v2

    const/4 v2, 0x7

    const-string v5, "contact_www"

    aput-object v5, v1, v2

    const/16 v2, 0x8

    const-string v5, "contact_blogUrl"

    aput-object v5, v1, v2

    const/16 v2, 0x9

    const-string v5, "contact_facebook"

    aput-object v5, v1, v2

    const/16 v2, 0xa

    const-string v5, "contact_linkedIn"

    aput-object v5, v1, v2

    const/16 v2, 0xb

    const-string v5, "contact_telephone2"

    aput-object v5, v1, v2

    const/16 v2, 0xc

    const-string v5, "contact_twitter"

    aput-object v5, v1, v2

    const/16 v2, 0xd

    const-string v5, "contact_youtubeUrl"

    aput-object v5, v1, v2

    const/16 v2, 0xe

    const-string v5, "address_address1"

    aput-object v5, v1, v2

    const/16 v2, 0xf

    const-string v5, "address_address2"

    aput-object v5, v1, v2

    const/16 v2, 0x10

    const-string v5, "address_address3"

    aput-object v5, v1, v2

    const/16 v2, 0x11

    const-string v5, "address_country"

    aput-object v5, v1, v2

    const/16 v2, 0x12

    const-string v5, "address_county"

    aput-object v5, v1, v2

    const/16 v2, 0x13

    const-string v5, "address_postCode"

    aput-object v5, v1, v2

    const/16 v2, 0x14

    const-string v5, "address_town"

    aput-object v5, v1, v2

    const/16 v2, 0x15

    const-string v5, "exhibitorType"

    aput-object v5, v1, v2

    const/16 v2, 0x16

    const-string v5, "featured"

    aput-object v5, v1, v2

    const/16 v2, 0x17

    const-string v5, "fullDescription"

    aput-object v5, v1, v2

    const/16 v2, 0x18

    const-string v5, "locations"

    aput-object v5, v1, v2

    const/16 v2, 0x19

    const-string v5, "shareUrl"

    aput-object v5, v1, v2

    const/16 v2, 0x1a

    const-string v5, "logoUrl"

    aput-object v5, v1, v2

    const/16 v2, 0x1b

    const-string v5, "f.exhibitor IS NOT NULL isFavourite"

    aput-object v5, v1, v2

    const/16 v2, 0x1c

    const-string v5, "n.relatedExhibitor IS NOT NULL hasNote"

    aput-object v5, v1, v2

    .line 160
    .local v1, "sqlSelectDetail":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exhibitors LEFT OUTER JOIN exhibitors_locations ON (exhibitors.id = exhibitors_locations.exhibitors_id) LEFT OUTER JOIN favouriteexhibitors f ON (exhibitors.id = f.exhibitor "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "f"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " LEFT OUTER JOIN notes n ON (exhibitors.id = n.relatedExhibitor "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "n"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "exhibitors.id=?"

    .line 168
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v10

    .line 172
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 173
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 174
    invoke-virtual {v0, v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 175
    const-string v2, "exhibitors.id=?"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getExhibitorVisitors(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "exhibitorId"    # J

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 552
    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "visitors"

    aput-object v2, v1, v9

    .line 555
    .local v1, "sqlSelect":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "visitors"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 556
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "exhibitors_id=?"

    .line 557
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v9

    .line 561
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 562
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 563
    invoke-virtual {v0, v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 564
    const-string v2, "exhibitors_id=?"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getExhibitors(Ljava/lang/String;ZZZI)Luk/co/alt236/easycursor/EasyCursor;
    .locals 11
    .param p1, "searchFilter"    # Ljava/lang/String;
    .param p2, "featured"    # Z
    .param p3, "favorite"    # Z
    .param p4, "hideNoLocation"    # Z
    .param p5, "limit"    # I

    .prologue
    .line 197
    const/16 v4, 0xd

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "_id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "id"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "name"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " AS "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "name"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x3

    const-string v5, "address_country"

    aput-object v5, v8, v4

    const/4 v4, 0x4

    const-string v5, "exhibitorType"

    aput-object v5, v8, v4

    const/4 v4, 0x5

    const-string v5, "featured"

    aput-object v5, v8, v4

    const/4 v4, 0x6

    const-string v5, "locations"

    aput-object v5, v8, v4

    const/4 v4, 0x7

    const-string v5, "shareUrl"

    aput-object v5, v8, v4

    const/16 v4, 0x8

    const-string v5, "logoUrl"

    aput-object v5, v8, v4

    const/16 v4, 0x9

    const-string v5, "fullDescription"

    const-string v10, "fullDescription"

    invoke-static {v5, v10}, Lcom/genie_connect/android/db/access/DbExhibitors;->getSubStringDeclaration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "t.colour AS colour"

    aput-object v5, v8, v4

    const/16 v4, 0xb

    const-string v5, "f.exhibitor IS NOT NULL isFavourite"

    aput-object v5, v8, v4

    const/16 v4, 0xc

    const-string v5, "n.relatedExhibitor IS NOT NULL hasNote"

    aput-object v5, v8, v4

    .line 213
    .local v8, "sqlSelectSummary":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exhibitors LEFT OUTER JOIN exhibitors_locations ON (exhibitors.id = exhibitors_locations.exhibitors_id) LEFT OUTER JOIN sessions_exhibitors c ON (c.exhibitors = exhibitors.id) LEFT OUTER JOIN exhibitortypes t ON (t.name = exhibitors.exhibitorType) LEFT OUTER JOIN favouriteexhibitors f ON (exhibitors.id = f.exhibitor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "f"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LEFT OUTER JOIN notes n ON (exhibitors.id = n.relatedExhibitor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "n"

    invoke-virtual {p0, v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, "sqlTables":Ljava/lang/String;
    const/4 v2, 0x0

    .line 225
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v3, 0x0

    .line 227
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 228
    const-string v2, "featured=1"

    .line 230
    :cond_0
    if-eqz p3, :cond_1

    .line 232
    const-string v2, "f.exhibitor IS NOT NULL"

    .line 235
    :cond_1
    if-eqz p1, :cond_2

    .line 236
    const-string v2, "exhibitors.name like ? OR exhibitors.fullDescription like ? OR exhibitors_locations.locations=? COLLATE NOCASE"

    .line 237
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    .end local v3    # "sqlWhereArgs":[Ljava/lang/String;
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "%"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "%"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 244
    .restart local v3    # "sqlWhereArgs":[Ljava/lang/String;
    :cond_2
    if-eqz p4, :cond_3

    .line 245
    if-eqz v2, :cond_4

    .line 246
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND locations IS NOT NULL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 252
    :cond_3
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exhibitors.name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/genie_connect/android/db/access/DbExhibitors;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 253
    .local v6, "orderBy":Ljava/lang/String;
    move-object v1, v8

    .line 256
    .local v1, "sqlSelect":[Ljava/lang/String;
    if-lez p5, :cond_5

    .line 257
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "sqlLimit":Ljava/lang/String;
    :goto_1
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 263
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 264
    invoke-virtual {v0, v9}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 265
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    return-object v4

    .line 248
    .end local v0    # "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    .end local v1    # "sqlSelect":[Ljava/lang/String;
    .end local v6    # "orderBy":Ljava/lang/String;
    .end local v7    # "sqlLimit":Ljava/lang/String;
    :cond_4
    const-string v2, "locations IS NOT NULL"

    goto :goto_0

    .line 259
    .restart local v1    # "sqlSelect":[Ljava/lang/String;
    .restart local v6    # "orderBy":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "sqlLimit":Ljava/lang/String;
    goto :goto_1
.end method

.method public getExhibitorsByIds(Ljava/util/ArrayList;)Luk/co/alt236/easycursor/EasyCursor;
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
    const/4 v10, 0x1

    .line 270
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 272
    new-instance v0, Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    invoke-direct {v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;-><init>()V

    .line 273
    .local v0, "builder":Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    const-string v6, "id"

    const-string v7, "_id"

    invoke-virtual {v0, v5, v6, v7}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 274
    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    const-string v6, "id"

    const-string v7, "id"

    invoke-virtual {v0, v5, v6, v7}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 275
    iget-object v5, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    const-string v6, "name"

    const-string v7, "name"

    invoke-virtual {v0, v5, v6, v7}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 276
    const-string v5, "logoUrl"

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 277
    const-string v5, "fullDescription"

    const-string v6, "fullDescription"

    invoke-static {v5, v6}, Lcom/genie_connect/android/db/access/DbExhibitors;->getSubStringDeclaration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 279
    const-string v5, "exhibitorType"

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 280
    const-string v5, "featured"

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 282
    const-string v5, "exhibitors"

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addTable(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 283
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 284
    .local v2, "id":J
    sget-object v5, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->OR:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v6, "exhibitors.id=?"

    new-array v7, v10, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v0, v5, v6, v7}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    goto :goto_0

    .line 287
    .end local v2    # "id":J
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exhibitors.name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/genie_connect/android/db/access/DbExhibitors;->getStringCollation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addOrderBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 288
    invoke-virtual {v0, v10}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->setDistinct(Z)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 289
    const-string v5, "exhibitors.id"

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addGroupBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 290
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v4

    .line 291
    .local v4, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v5

    .line 294
    .end local v0    # "builder":Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    :goto_1
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getExhibitorsForProduct(Ljava/lang/Long;Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 18
    .param p1, "productId"    # Ljava/lang/Long;
    .param p2, "exhibitorId"    # Ljava/lang/Long;

    .prologue
    .line 307
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 308
    .local v2, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 310
    const/16 v3, 0xb

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "NULL AS multilocations"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "logoUrl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "logoUrl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "fullDescription"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "fullDescription"

    invoke-static {v5, v6}, Lcom/genie_connect/android/db/access/DbExhibitors;->getSubStringDeclaration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exhibitorType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exhibitorType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "featured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "featured"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/16 v3, 0x8

    const-string/jumbo v5, "t.colour AS colour"

    aput-object v5, v4, v3

    const/16 v3, 0x9

    const-string v5, "f.exhibitor IS NOT NULL isFavourite"

    aput-object v5, v4, v3

    const/16 v3, 0xa

    const-string v5, "n.relatedExhibitor IS NOT NULL hasNote"

    aput-object v5, v4, v3

    .line 325
    .local v4, "sqlSelect":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exhibitors LEFT OUTER JOIN exhibitors_locations ON (exhibitors.id = exhibitors_locations.exhibitors_id) LEFT OUTER JOIN exhibitortypes t ON (t.name = exhibitors.exhibitorType) LEFT OUTER JOIN favouriteexhibitors f ON (exhibitors.id = f.exhibitor "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "f"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " LEFT OUTER JOIN notes n ON (exhibitors.id = n.relatedExhibitor "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 333
    .local v16, "sqlTables":Ljava/lang/String;
    const/4 v8, 0x0

    .line 340
    .local v8, "sqlWhere":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " LEFT OUTER JOIN products_exhibitors c ON (c.exhibitors = exhibitors.id)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c.products_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 344
    const-string v3, "query_exhibitors"

    invoke-static {v4}, Lcom/eventgenie/android/utils/help/SetUtils;->convertStringArrayToSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "TEXT"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 357
    .local v15, "queryExhibitors":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 358
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME_DOT:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_0

    const-wide/16 v6, -0x1

    :goto_0
    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 361
    const-string v3, "query_exhibitor"

    invoke-static {v4}, Lcom/eventgenie/android/utils/help/SetUtils;->convertStringArrayToSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "TEXT"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 377
    .local v14, "queryExhibitor":Ljava/lang/String;
    :goto_1
    if-nez v14, :cond_2

    .line 378
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    aput-object v15, v17, v3

    .line 387
    .local v17, "unionArray":[Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "name "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/genie_connect/android/db/access/DbExhibitors;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 392
    .local v13, "q":Ljava/lang/String;
    new-instance v12, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v12}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 393
    .local v12, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v3, 0x0

    invoke-virtual {v12, v13, v3}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams(Ljava/lang/String;[Ljava/lang/String;)V

    .line 394
    invoke-virtual {v12}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v3, v5}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    return-object v3

    .line 359
    .end local v12    # "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    .end local v13    # "q":Ljava/lang/String;
    .end local v14    # "queryExhibitor":Ljava/lang/String;
    .end local v17    # "unionArray":[Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_0

    .line 372
    :cond_1
    const/4 v14, 0x0

    .restart local v14    # "queryExhibitor":Ljava/lang/String;
    goto :goto_1

    .line 382
    :cond_2
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v3, 0x0

    aput-object v14, v17, v3

    const/4 v3, 0x1

    aput-object v15, v17, v3

    .restart local v17    # "unionArray":[Ljava/lang/String;
    goto :goto_2
.end method

.method public getExhibitorsImagesUrl(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "exhibitorId"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 108
    const-string v7, "exhibitors_imagesUrl"

    .line 109
    .local v7, "sqlTables":Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "imagesUrl"

    aput-object v2, v1, v5

    .line 110
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v8, "exhibitors_id=?"

    .line 111
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    .line 113
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 114
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const-string v2, "exhibitors_imagesUrl"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 115
    const-string v2, "exhibitors_id=?"

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v2, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getExhibitorsWithAtLeastOneInvalidLocation()Luk/co/alt236/easycursor/EasyCursor;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 398
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "exhibitors_id AS _id"

    aput-object v4, v1, v2

    const-string v2, "name"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v4, "mapPosition_vectors"

    aput-object v4, v1, v2

    .line 404
    .local v1, "sqlSelect":[Ljava/lang/String;
    const-string v7, "locations LEFT OUTER JOIN exhibitors_locations ON (locations.name = exhibitors_locations.locations)"

    .line 406
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "mapPosition_vectors IS NULL"

    .line 408
    .local v8, "sqlWhere":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 409
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 410
    const-string v2, "locations LEFT OUTER JOIN exhibitors_locations ON (locations.name = exhibitors_locations.locations)"

    invoke-virtual {v0, v2}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 411
    const-string v2, "mapPosition_vectors IS NULL"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    return-object v2
.end method

.method public getExhibitorsWithSingleLineLocations(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZZI)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "exhibitorId"    # Ljava/lang/Long;
    .param p2, "tagId"    # Ljava/lang/Long;
    .param p3, "countryFilter"    # Ljava/lang/String;
    .param p4, "nullCountry"    # Z
    .param p5, "searchFilter"    # Ljava/lang/String;
    .param p6, "locationFilter"    # Ljava/lang/String;
    .param p7, "sessionId"    # Ljava/lang/Long;
    .param p8, "featured"    # Z
    .param p9, "favorite"    # Z
    .param p10, "sortBySequence"    # Z
    .param p11, "limit"    # I

    .prologue
    .line 445
    new-instance v1, Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    invoke-direct {v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;-><init>()V

    .line 447
    .local v1, "builder":Lcom/genie_connect/android/db/access/GenieQueryBuilder;
    const-string v3, "GROUP_CONCAT(locations)"

    const-string v4, "multilocations"

    invoke-virtual {v1, v3, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 448
    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    const-string v4, "id"

    const-string v5, "_id"

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 449
    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    const-string v4, "id"

    const-string v5, "id"

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 450
    iget-object v3, p0, Lcom/genie_connect/android/db/access/DbExhibitors;->ENTITY_NAME:Ljava/lang/String;

    const-string v4, "name"

    const-string v5, "name"

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 451
    const-string v3, "logoUrl"

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 452
    const-string v3, "fullDescription"

    const-string v4, "fullDescription"

    invoke-static {v3, v4}, Lcom/genie_connect/android/db/access/DbExhibitors;->getSubStringDeclaration(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 454
    const-string v3, "exhibitorType"

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 455
    const-string v3, "featured"

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 456
    const-string v3, "locations"

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 457
    const-string/jumbo v3, "t"

    const-string v4, "colour"

    const-string v5, "colour"

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 458
    const-string v3, "f"

    const-string v4, "exhibitor IS NOT NULL"

    const-string v5, "isFavourite"

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 459
    const-string v3, "n"

    const-string v4, "relatedExhibitor IS NOT NULL"

    const-string v5, "hasNote"

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 461
    const-string v3, "exhibitors"

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addTable(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 462
    const-string v3, "exhibitors_locations"

    const-string v4, "exhibitors.id = exhibitors_locations.exhibitors_id"

    invoke-virtual {v1, v3, v4}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 463
    const-string v3, "exhibitortypes"

    const-string/jumbo v4, "t"

    const-string/jumbo v5, "t.name = exhibitors.exhibitorType"

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 464
    const-string v3, "favouriteexhibitors"

    const-string v4, "f"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exhibitors.id = f.exhibitor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "f"

    invoke-virtual {p0, v6}, Lcom/genie_connect/android/db/access/DbExhibitors;->getEventFavCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 465
    const-string v3, "notes"

    const-string v4, "n"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exhibitors.id = n.relatedExhibitor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "n"

    invoke-virtual {p0, v6}, Lcom/genie_connect/android/db/access/DbExhibitors;->getEventNoteCriteriaSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 468
    if-eqz p10, :cond_0

    .line 469
    const-string v3, "exhibitors.seqNo"

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addOrderBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 472
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exhibitors.name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/genie_connect/android/db/access/DbExhibitors;->getStringCollation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addOrderBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 476
    if-eqz p2, :cond_1

    .line 477
    const-string v3, "exhibitors_relatedTags"

    const-string v4, "d"

    const-string v5, "exhibitors.id = d.exhibitors_id"

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 478
    sget-object v3, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v4, "relatedTags=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 488
    :cond_1
    if-eqz p3, :cond_2

    .line 489
    sget-object v3, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v4, "address_country=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 492
    :cond_2
    if-eqz p4, :cond_3

    .line 493
    sget-object v3, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v4, "address_country IS NULL"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 496
    :cond_3
    if-eqz p8, :cond_4

    .line 497
    sget-object v3, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v4, "featured=1"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 500
    :cond_4
    if-eqz p9, :cond_5

    .line 501
    sget-object v3, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v4, "f.exhibitor IS NOT NULL"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 504
    :cond_5
    if-eqz p1, :cond_6

    .line 505
    sget-object v3, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v4, "exhibitors.id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 511
    :cond_6
    if-eqz p5, :cond_7

    .line 512
    sget-object v3, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v4, "exhibitors.name like ? OR exhibitors.fullDescription like ? OR exhibitors_locations.locations like ? COLLATE NOCASE"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 520
    :cond_7
    if-eqz p6, :cond_8

    .line 521
    sget-object v3, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v4, "exhibitors_locations.locations=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p6, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 527
    :cond_8
    if-eqz p7, :cond_9

    .line 528
    const-string v3, "sessions_exhibitors"

    const-string v4, "c"

    const-string v5, "c.exhibitors = exhibitors.id"

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addLeftJoin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 529
    sget-object v3, Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;->AND:Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;

    const-string v4, "c.sessions_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addWhere(Lcom/genie_connect/android/db/access/GenieQueryBuilder$WhereLink;Ljava/lang/String;[Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 535
    :cond_9
    if-lez p11, :cond_a

    .line 536
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->setLimit(I)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 539
    :cond_a
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->setDistinct(Z)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 540
    const-string v3, "exhibitors.id"

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->addGroupBy(Ljava/lang/String;)Lcom/genie_connect/android/db/access/GenieQueryBuilder;

    .line 541
    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v2

    .line 542
    .local v2, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbExhibitors;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2, v3}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v3

    return-object v3
.end method

.method public getFeaturedExhibitors()Luk/co/alt236/easycursor/EasyCursor;
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 569
    const/4 v8, 0x1

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move v9, v4

    move v10, v4

    move v11, v4

    invoke-virtual/range {v0 .. v11}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorsWithSingleLineLocations(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 575
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public search(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 12
    .param p1, "tagId"    # Ljava/lang/Long;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 580
    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move v8, v4

    move v9, v4

    move v10, v4

    move v11, v4

    invoke-virtual/range {v0 .. v11}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitorsWithSingleLineLocations(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;

    .prologue
    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/genie_connect/android/db/access/DbExhibitors;->search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 591
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/genie_connect/android/db/access/DbExhibitors;->search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;I)Luk/co/alt236/easycursor/EasyCursor;

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
    .line 596
    .local p2, "tagTree":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/genie_connect/android/db/access/DbExhibitors;->search(Ljava/lang/String;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;I)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method public searchForLocation(Ljava/lang/String;I)Luk/co/alt236/easycursor/EasyCursor;
    .locals 6
    .param p1, "searchTerm"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    const/4 v2, 0x0

    .line 669
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/db/access/DbExhibitors;->getExhibitors(Ljava/lang/String;ZZZI)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method
