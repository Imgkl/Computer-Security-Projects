.class public Lcom/genie_connect/android/db/access/DbTagsV2;
.super Lcom/genie_connect/android/db/access/BaseDb;
.source "DbTagsV2.java"

# interfaces
.implements Lcom/genie_connect/android/db/access/interfaces/DataAccessGeneric;


# static fields
.field private static final GENIE_CATEGORY_STARTNAME:Ljava/lang/String; = "genie_"

.field private static final SELECT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    const-string v3, "_id"

    invoke-static {v2, v3}, Lcom/genie_connect/android/db/access/DbTagsV2;->alias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "isRootParent"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "noChildren"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sponsorCampaign"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "parent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/genie_connect/android/db/access/DbTagsV2;->SELECT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/db/access/BaseDb;-><init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;)V

    .line 37
    return-void
.end method

.method private static addNodeConditionally(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/Set;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, "oldChild":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .local p1, "mapOfEntitySpecificTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, "newRoot":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    .line 272
    .local v0, "data":Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;
    invoke-static {p0, p1}, Lcom/genie_connect/android/db/access/DbTagsV2;->hasAnyRelevantNodes(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    new-instance v2, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-direct {v2, v0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;-><init>(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;)V

    .line 274
    .local v2, "newChild":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-virtual {p2, v2}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->addChild(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 275
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 276
    .local v3, "oldGranchild":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-static {v3, p1, v2}, Lcom/genie_connect/android/db/access/DbTagsV2;->addNodeConditionally(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/Set;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    goto :goto_0

    .line 279
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "newChild":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .end local v3    # "oldGranchild":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_0
    return-void
.end method

.method private static hasAnyRelevantNodes(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "root":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .local p1, "mapOfEntitySpecificTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v3, 0x1

    .line 256
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v2}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 266
    :goto_0
    return v2

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 261
    .local v0, "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-static {v0, p1}, Lcom/genie_connect/android/db/access/DbTagsV2;->hasAnyRelevantNodes(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    .line 262
    goto :goto_0

    .line 266
    .end local v0    # "child":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static optimize(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/Set;)Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "unoptimizedRoot":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .local p1, "setOfEntities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v7

    check-cast v7, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    .line 229
    .local v7, "data":Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;
    invoke-static {p0, p1}, Lcom/genie_connect/android/db/access/DbTagsV2;->hasAnyRelevantNodes(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    new-instance v9, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    new-instance v0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getParentId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->isRootParent()Z

    move-result v5

    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getNoChildren()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZI)V

    invoke-direct {v9, v0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;-><init>(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;)V

    .line 237
    .local v9, "newRoot":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 238
    .local v10, "oldChild":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-static {v10, p1, v9}, Lcom/genie_connect/android/db/access/DbTagsV2;->addNodeConditionally(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/Set;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)V

    goto :goto_0

    .line 243
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "newRoot":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .end local v10    # "oldChild":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_0
    const/4 v9, 0x0

    :cond_1
    return-object v9
.end method

.method private static optimizeRootWithSingleChildIsCategory(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;)",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "oldRoot":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    const/4 v2, 0x0

    .line 208
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 214
    .end local p0    # "oldRoot":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_0
    :goto_0
    return-object p0

    .line 209
    .restart local p0    # "oldRoot":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getLabel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "genie_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getAll()Luk/co/alt236/easycursor/EasyCursor;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 41
    const-string/jumbo v7, "tagsv2"

    .line 42
    .local v7, "sqlTables":Ljava/lang/String;
    const/4 v2, 0x0

    .line 43
    .local v2, "sqlWhere":Ljava/lang/String;
    const/4 v3, 0x0

    .line 44
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "label "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/db/access/DbTagsV2;->getStringCollation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 46
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 47
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 48
    const-string/jumbo v1, "tagsv2"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 49
    sget-object v1, Lcom/genie_connect/android/db/access/DbTagsV2;->SELECT:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbTagsV2;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v1, v4}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getById(J)Luk/co/alt236/easycursor/EasyCursor;
    .locals 9
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 55
    const-string/jumbo v7, "tagsv2"

    .line 56
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "id = ?"

    .line 57
    .local v8, "sqlWhere":Ljava/lang/String;
    new-array v3, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 60
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/db/access/DbTagsV2;->getStringCollation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "orderBy":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 63
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 64
    const-string/jumbo v1, "tagsv2"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 65
    sget-object v1, Lcom/genie_connect/android/db/access/DbTagsV2;->SELECT:[Ljava/lang/String;

    const-string v2, "id = ?"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbTagsV2;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getById(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 71
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TAGV2s do not have String keys!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildTags(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 12
    .param p1, "parent"    # Ljava/lang/Long;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 75
    const-string/jumbo v7, "tagsv2"

    .line 76
    .local v7, "sqlTables":Ljava/lang/String;
    const-string v8, "parent = ?"

    .line 78
    .local v8, "sqlWhere":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "label "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/db/access/DbTagsV2;->getStringCollation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, "orderBy":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 80
    new-array v3, v5, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 88
    .local v3, "sqlWhereArgs":[Ljava/lang/String;
    :goto_0
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 89
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    invoke-virtual {v0, v5}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 90
    const-string/jumbo v1, "tagsv2"

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 91
    sget-object v1, Lcom/genie_connect/android/db/access/DbTagsV2;->SELECT:[Ljava/lang/String;

    const-string v2, "parent = ?"

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbTagsV2;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1

    .line 85
    .end local v0    # "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    .end local v3    # "sqlWhereArgs":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "sqlWhereArgs":[Ljava/lang/String;
    goto :goto_0
.end method

.method public getEntitySpecificTags(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 8
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    const/4 v2, 0x0

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_relatedTags ert "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "LEFT JOIN TagsV2 on (ert.relatedTags = TagsV2.id)"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "sqlTables2":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRootParent, id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/genie_connect/android/db/access/DbTagsV2;->getStringCollation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "orderBy2":Ljava/lang/String;
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;

    invoke-direct {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;-><init>()V

    .line 131
    .local v0, "builder":Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setDistinct(Z)V

    .line 132
    invoke-virtual {v0, v7}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setTables(Ljava/lang/String;)V

    .line 133
    sget-object v1, Lcom/genie_connect/android/db/access/DbTagsV2;->SELECT:[Ljava/lang/String;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->setQueryParams([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Luk/co/alt236/easycursor/sqlcursor/querybuilders/EasyCompatSqlModelBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v1

    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbTagsV2;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getPrimaryEntity()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->TAGSV2:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getRelevantChildTagsForEntity(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 6
    .param p1, "parent"    # Ljava/lang/Long;
    .param p2, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 96
    new-instance v1, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    invoke-direct {v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT Child.id AS _id ,Child.id AS id, label, isRootParent, Child.path AS path, noChildren, sponsorCampaign, parent FROM tagsV2 Child WHERE Child.parent = ? AND EXISTS ( SELECT * FROM TagsV2 T WHERE T.path like \'%\' || Child.id || \'%\' AND EXISTS ( SELECT * FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_relatedTags R WHERE R.relatedTags = T.Id))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ORDER BY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "label"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/genie_connect/android/db/access/DbTagsV2;->getStringCollation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setRawSql(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setSelectionArgs([Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v1

    const-string v2, "Raw query"

    invoke-virtual {v1, v2}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->setModelComment(Ljava/lang/String;)Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel$RawQueryBuilder;->build()Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;

    move-result-object v0

    .line 119
    .local v0, "model":Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbTagsV2;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlQueryModel;->execute(Landroid/database/sqlite/SQLiteDatabase;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getTagTree(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;
    .locals 15
    .param p1, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            ")",
            "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel",
            "<",
            "Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v4, "mapOfAllTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v5, "mapOfEntitySpecificTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/db/access/DbTagsV2;->getAll()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 151
    .local v0, "cursor":Luk/co/alt236/easycursor/EasyCursor;
    :goto_0
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_0

    .line 152
    const-string v12, "id"

    invoke-interface {v0, v12}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-instance v13, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    new-instance v14, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-direct {v14, v0}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;-><init>(Luk/co/alt236/easycursor/EasyCursor;)V

    invoke-direct {v13, v14}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;-><init>(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;)V

    invoke-interface {v4, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-interface {v0}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_0

    .line 157
    :cond_0
    invoke-static {v0}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 162
    invoke-virtual/range {p0 .. p1}, Lcom/genie_connect/android/db/access/DbTagsV2;->getEntitySpecificTags(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 163
    .local v1, "cursor2":Luk/co/alt236/easycursor/EasyCursor;
    :goto_1
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->isAfterLast()Z

    move-result v12

    if-nez v12, :cond_1

    .line 164
    const-string v12, "id"

    invoke-interface {v1, v12}, Luk/co/alt236/easycursor/EasyCursor;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    new-instance v13, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    new-instance v14, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-direct {v14, v1}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;-><init>(Luk/co/alt236/easycursor/EasyCursor;)V

    invoke-direct {v13, v14}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;-><init>(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;)V

    invoke-interface {v5, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->moveToNext()Z

    goto :goto_1

    .line 168
    :cond_1
    invoke-static {v1}, Lcom/genie_connect/android/db/DbHelper;->close(Landroid/database/Cursor;)V

    .line 175
    new-instance v6, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    new-instance v12, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-direct {v12}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;-><init>()V

    invoke-direct {v6, v12}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;-><init>(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;)V

    .line 178
    .local v6, "methodUnoptimizedRoot":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 180
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 181
    .local v7, "node":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v12

    check-cast v12, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v12}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->getParentId()J

    move-result-wide v10

    .line 182
    .local v10, "parentId":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    .line 184
    .local v8, "nodeParent":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    if-nez v8, :cond_3

    .line 185
    invoke-virtual {v7}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->getData()Lcom/genie_connect/android/net/container/gson/objects/TreeNodeDataItem;

    move-result-object v12

    check-cast v12, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;

    invoke-virtual {v12}, Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;->isRootParent()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 186
    invoke-virtual {v6, v7}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->addChild(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    goto :goto_2

    .line 189
    :cond_3
    invoke-virtual {v8, v7}, Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;->addChild(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    goto :goto_2

    .line 193
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;>;"
    .end local v7    # "node":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .end local v8    # "nodeParent":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    .end local v10    # "parentId":J
    :cond_4
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/genie_connect/android/db/access/DbTagsV2;->optimize(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;Ljava/util/Set;)Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v9

    .line 195
    .local v9, "root":Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;, "Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel<Lcom/genie_connect/android/net/container/gson/entities/TagV2GsonModel;>;"
    invoke-static {v9}, Lcom/genie_connect/android/db/access/DbTagsV2;->optimizeRootWithSingleChildIsCategory(Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;)Lcom/genie_connect/android/net/container/gson/objects/TreeNodeGsonModel;

    move-result-object v12

    return-object v12
.end method
