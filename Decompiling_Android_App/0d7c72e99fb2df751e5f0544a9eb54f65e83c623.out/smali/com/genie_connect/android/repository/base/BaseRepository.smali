.class public abstract Lcom/genie_connect/android/repository/base/BaseRepository;
.super Ljava/lang/Object;
.source "BaseRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TEntity:",
        "Ljava/lang/Object;",
        "TKey:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final RELATED_TABLE_FORMAT:Ljava/lang/String; = "%s_%s"


# instance fields
.field private mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

.field private mAppContext:Landroid/content/Context;

.field protected mDao:Lde/greenrobot/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lde/greenrobot/dao/Dao",
            "<TTEntity;TTKey;>;"
        }
    .end annotation
.end field

.field private mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mNoteRepo:Lcom/genie_connect/android/repository/NoteRepository;

.field newTagsForSessions:Z


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V
    .locals 2
    .param p2, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "appContext"    # Landroid/content/Context;
    .param p4, "acl"    # Lcom/genie_connect/android/db/datastore/acl/Acl;
    .param p5, "noteRepo"    # Lcom/genie_connect/android/repository/NoteRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<TTEntity;TTKey;>;",
            "Lcom/genie_connect/common/db/entityfactory/GenieEntity;",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/datastore/acl/Acl;",
            "Lcom/genie_connect/android/repository/NoteRepository;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<TTEntity;TTKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->newTagsForSessions:Z

    .line 60
    iput-object p1, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mDao:Lde/greenrobot/dao/Dao;

    .line 61
    iput-object p2, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 62
    iput-object p3, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mAppContext:Landroid/content/Context;

    .line 63
    iput-object p4, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    .line 64
    iput-object p5, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mNoteRepo:Lcom/genie_connect/android/repository/NoteRepository;

    .line 66
    iget-object v0, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/SetupConfig;->isNewTagsForSessions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->newTagsForSessions:Z

    .line 67
    return-void
.end method

.method private getColumnsForEntity()[Lde/greenrobot/dao/Selectable;
    .locals 12

    .prologue
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const/4 v11, 0x0

    .line 181
    iget-object v9, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mDao:Lde/greenrobot/dao/Dao;

    invoke-interface {v9}, Lde/greenrobot/dao/Dao;->getProperties()[Lde/greenrobot/dao/Property;

    move-result-object v6

    .line 183
    .local v6, "properties":[Lde/greenrobot/dao/Property;
    array-length v9, v6

    new-array v7, v9, [Lde/greenrobot/dao/Selectable;

    .line 185
    .local v7, "selectables":[Lde/greenrobot/dao/Selectable;
    const/4 v4, -0x1

    .line 188
    .local v4, "locationColumnIndex":I
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_0
    array-length v9, v6

    if-ge v2, v9, :cond_5

    .line 190
    aget-object v9, v6, v2

    iget-object v9, v9, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    const-string v10, "isBookmarked"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 192
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->getBookmarkSelectable()Lde/greenrobot/dao/Selectable;

    move-result-object v0

    .line 194
    .local v0, "bookmarkSelectable":Lde/greenrobot/dao/Selectable;
    if-eqz v0, :cond_0

    .line 195
    aput-object v0, v7, v2

    .line 188
    .end local v0    # "bookmarkSelectable":Lde/greenrobot/dao/Selectable;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_1
    aget-object v9, v6, v2

    iget-object v9, v9, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    const-string v10, "isFavourite"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 199
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->getFavouriteSelectable()Lde/greenrobot/dao/Selectable;

    move-result-object v1

    .line 201
    .local v1, "fav":Lde/greenrobot/dao/Selectable;
    if-eqz v1, :cond_0

    .line 202
    aput-object v1, v7, v2

    goto :goto_1

    .line 204
    .end local v1    # "fav":Lde/greenrobot/dao/Selectable;
    :cond_2
    aget-object v9, v6, v2

    iget-object v9, v9, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    const-string v10, "hasNote"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->getNotesSelectable()Lde/greenrobot/dao/Selectable;

    move-result-object v5

    .line 208
    .local v5, "notes":Lde/greenrobot/dao/Selectable;
    if-eqz v5, :cond_0

    .line 209
    aput-object v5, v7, v2

    goto :goto_1

    .line 213
    .end local v5    # "notes":Lde/greenrobot/dao/Selectable;
    :cond_3
    aget-object v9, v6, v2

    iget-object v9, v9, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    const-string v10, "hasNote"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 214
    move v4, v2

    .line 217
    :cond_4
    aget-object v9, v6, v2

    aput-object v9, v7, v2

    goto :goto_1

    .line 222
    :cond_5
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->getLocationSelectable()Lde/greenrobot/dao/Selectable;

    move-result-object v3

    .line 224
    .local v3, "location":Lde/greenrobot/dao/Selectable;
    if-eqz v3, :cond_6

    .line 225
    const/4 v9, -0x1

    if-eq v4, v9, :cond_7

    .line 227
    aput-object v3, v7, v4

    :cond_6
    move-object v8, v7

    .line 237
    :goto_2
    return-object v8

    .line 230
    :cond_7
    array-length v9, v7

    add-int/lit8 v9, v9, 0x1

    new-array v8, v9, [Lde/greenrobot/dao/Selectable;

    .line 231
    .local v8, "selectablesWithLocation":[Lde/greenrobot/dao/Selectable;
    array-length v9, v7

    invoke-static {v7, v11, v8, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    array-length v9, v8

    add-int/lit8 v9, v9, -0x1

    aput-object v3, v8, v9

    goto :goto_2
.end method

.method private orderIfNecessary(Lde/greenrobot/dao/query/QueryBuilder;[Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .param p2, "orderBy"    # [Lde/greenrobot/dao/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TTEntity;>;[",
            "Lde/greenrobot/dao/Property;",
            ")",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TTEntity;>;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    .local p1, "query":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TTEntity;>;"
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 285
    invoke-virtual {p1, p2}, Lde/greenrobot/dao/query/QueryBuilder;->orderAsc([Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object p1

    .line 288
    .end local p1    # "query":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TTEntity;>;"
    :cond_0
    return-object p1
.end method

.method private permissionCheckWhereString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 505
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/genie_connect/android/repository/base/BaseRepository;->permissionCheckWhereString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private permissionCheckWhereString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 510
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    iget-object v2, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mAcl:Lcom/genie_connect/android/db/datastore/acl/Acl;

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getNotAllowedGroupsForView()[Ljava/lang/Long;

    move-result-object v0

    .line 512
    .local v0, "cannotView":[Ljava/lang/Long;
    if-eqz v0, :cond_2

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    :cond_0
    const-string v2, "permissionGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v2, " NOT IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-static {v0}, Lcom/genie_connect/android/db/access/BaseDb;->makeStringFromArray([Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string v2, ") OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-static {p1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 526
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    :cond_1
    const-string v2, "permissionGroup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string v2, " IS NULL)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sessionCategoryFilter(Ljava/util/List;Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    .locals 16
    .param p2, "masterTableAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/query/WhereCondition$StringCondition;"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    .local p1, "categoryFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 581
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 584
    .local v11, "parentToChildMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 589
    .local v2, "categoryFilter":Ljava/lang/String;
    const-string v13, "%%"

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 592
    .local v3, "categoryFilterParts":[Ljava/lang/String;
    array-length v13, v3

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    .line 593
    const/4 v13, 0x0

    aget-object v10, v3, v13

    .line 594
    .local v10, "parent":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v4, v3, v13

    .line 600
    .local v4, "child":Ljava/lang/String;
    :goto_1
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 601
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_0
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 596
    .end local v4    # "child":Ljava/lang/String;
    .end local v10    # "parent":Ljava/lang/String;
    :cond_1
    const-string v10, ""

    .line 597
    .restart local v10    # "parent":Ljava/lang/String;
    move-object v4, v2

    .restart local v4    # "child":Ljava/lang/String;
    goto :goto_1

    .line 607
    .end local v2    # "categoryFilter":Ljava/lang/String;
    .end local v3    # "categoryFilterParts":[Ljava/lang/String;
    .end local v4    # "child":Ljava/lang/String;
    .end local v10    # "parent":Ljava/lang/String;
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EXISTS (SELECT * FROM sessions_categories SC WHERE SC.sessions_id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".Id AND (%s))"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 609
    .local v12, "parentWhereFormat":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 611
    .local v1, "categoriesWhere":Ljava/lang/StringBuilder;
    const-string v13, "("

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const/4 v7, 0x1

    .line 615
    .local v7, "firstParent":Z
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 617
    .restart local v10    # "parent":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 619
    .local v5, "childWhere":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    .line 621
    .local v6, "firstChild":Z
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 623
    .restart local v4    # "child":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 624
    const-string v13, " OR "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    :cond_3
    const-string v13, "categories like \'%s\'"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    const/4 v6, 0x0

    .line 629
    goto :goto_3

    .line 631
    .end local v4    # "child":Ljava/lang/String;
    :cond_4
    if-nez v7, :cond_5

    .line 632
    const-string v13, " AND "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_5
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    const/4 v7, 0x0

    .line 638
    goto :goto_2

    .line 640
    .end local v5    # "childWhere":Ljava/lang/StringBuilder;
    .end local v6    # "firstChild":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "parent":Ljava/lang/String;
    :cond_6
    const-string v13, ")"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    new-instance v13, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    .line 646
    .end local v1    # "categoriesWhere":Ljava/lang/StringBuilder;
    .end local v7    # "firstParent":Z
    .end local v11    # "parentToChildMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "parentWhereFormat":Ljava/lang/String;
    :goto_4
    return-object v13

    :cond_7
    const/4 v13, 0x0

    goto :goto_4
.end method

.method private sessionTagsv2Filter(Ljava/util/List;Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    .locals 16
    .param p2, "masterTableAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/query/WhereCondition$StringCondition;"
        }
    .end annotation

    .prologue
    .line 653
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    .local p1, "tagsV2IdFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 655
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 658
    .local v11, "parentToChildMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 663
    .local v2, "categoryFilter":Ljava/lang/String;
    const-string v13, "%%"

    invoke-virtual {v2, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "categoryFilterParts":[Ljava/lang/String;
    array-length v13, v3

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    .line 667
    const/4 v13, 0x0

    aget-object v10, v3, v13

    .line 668
    .local v10, "parent":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v4, v3, v13

    .line 674
    .local v4, "child":Ljava/lang/String;
    :goto_1
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 675
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    :cond_0
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 670
    .end local v4    # "child":Ljava/lang/String;
    .end local v10    # "parent":Ljava/lang/String;
    :cond_1
    const-string v10, ""

    .line 671
    .restart local v10    # "parent":Ljava/lang/String;
    move-object v4, v2

    .restart local v4    # "child":Ljava/lang/String;
    goto :goto_1

    .line 681
    .end local v2    # "categoryFilter":Ljava/lang/String;
    .end local v3    # "categoryFilterParts":[Ljava/lang/String;
    .end local v4    # "child":Ljava/lang/String;
    .end local v10    # "parent":Ljava/lang/String;
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EXISTS (SELECT * FROM sessions_relatedTags SRT WHERE SRT.sessions_id = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".Id AND (%s))"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 683
    .local v12, "parentWhereFormat":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 685
    .local v1, "categoriesWhere":Ljava/lang/StringBuilder;
    const-string v13, "("

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const/4 v7, 0x1

    .line 689
    .local v7, "firstParent":Z
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v8    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 691
    .restart local v10    # "parent":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 693
    .local v5, "childWhere":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    .line 695
    .local v6, "firstChild":Z
    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 697
    .restart local v4    # "child":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 698
    const-string v13, " OR "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    :cond_3
    const-string v13, "SRT.relatedTags like \'%s\'"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    const/4 v6, 0x0

    .line 703
    goto :goto_3

    .line 705
    .end local v4    # "child":Ljava/lang/String;
    :cond_4
    if-nez v7, :cond_5

    .line 706
    const-string v13, " AND "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :cond_5
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    const/4 v7, 0x0

    .line 712
    goto :goto_2

    .line 714
    .end local v5    # "childWhere":Ljava/lang/StringBuilder;
    .end local v6    # "firstChild":Z
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "parent":Ljava/lang/String;
    :cond_6
    const-string v13, ")"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    new-instance v13, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    .line 720
    .end local v1    # "categoriesWhere":Ljava/lang/StringBuilder;
    .end local v7    # "firstParent":Z
    .end local v11    # "parentToChildMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "parentWhereFormat":Ljava/lang/String;
    :goto_4
    return-object v13

    :cond_7
    const/4 v13, 0x0

    goto :goto_4
.end method


# virtual methods
.method public entityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 501
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    iget-object v0, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getAllIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lde/greenrobot/dao/query/QueryBuilder;->listOfFieldAsLong(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBookmarkRepository()Lcom/genie_connect/android/repository/base/BookmarkRepository;
    .locals 1

    .prologue
    .line 82
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBookmarkSelectable()Lde/greenrobot/dao/Selectable;
    .locals 6

    .prologue
    .line 252
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->getBookmarkRepository()Lcom/genie_connect/android/repository/base/BookmarkRepository;

    move-result-object v0

    .line 254
    .local v0, "bookmarkRepository":Lcom/genie_connect/android/repository/base/BookmarkRepository;
    if-eqz v0, :cond_0

    .line 255
    const-string v2, "EXISTS (SELECT * FROM %s FSS where FSS.%s = T.id)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/genie_connect/android/repository/base/BookmarkRepository;->getTableName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v5}, Lcom/genie_connect/android/repository/base/BookmarkRepository;->getLinkField(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "favouriteSql":Ljava/lang/String;
    new-instance v2, Lde/greenrobot/dao/selectable/SqlSelectable;

    invoke-direct {v2, v1}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    const-string v3, "isBookmarked"

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v2

    .line 259
    .end local v1    # "favouriteSql":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getById(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 6
    .param p1, "id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TTEntity;"
        }
    .end annotation

    .prologue
    .line 481
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    new-instance v3, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "T.id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v2, v3, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lde/greenrobot/dao/query/QueryBuilder;->unique()Ljava/lang/Object;

    move-result-object v0

    .line 485
    .local v0, "entity":Ljava/lang/Object;, "TTEntity;"
    instance-of v2, v0, Lcom/genie_connect/common/db/model/interfaces/Favouritable;

    if-eqz v2, :cond_0

    .line 486
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->getFavouriteRepository()Lcom/genie_connect/android/repository/base/FavouriteRepository;

    move-result-object v1

    .line 488
    .local v1, "repo":Lcom/genie_connect/android/repository/base/FavouriteRepository;
    if-eqz v1, :cond_0

    move-object v2, v0

    .line 489
    check-cast v2, Lcom/genie_connect/common/db/model/interfaces/Favouritable;

    invoke-interface {v1, p1}, Lcom/genie_connect/android/repository/base/FavouriteRepository;->isFavourited(Ljava/lang/Long;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/genie_connect/common/db/model/interfaces/Favouritable;->setIsFavourite(Ljava/lang/Boolean;)V

    .line 493
    .end local v1    # "repo":Lcom/genie_connect/android/repository/base/FavouriteRepository;
    :cond_0
    instance-of v2, v0, Lcom/genie_connect/common/db/model/interfaces/Notable;

    if-eqz v2, :cond_1

    move-object v2, v0

    .line 494
    check-cast v2, Lcom/genie_connect/common/db/model/interfaces/Notable;

    invoke-virtual {p0, p1}, Lcom/genie_connect/android/repository/base/BaseRepository;->hasNote(Ljava/lang/Long;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/genie_connect/common/db/model/interfaces/Notable;->setHasNote(Ljava/lang/Boolean;)V

    .line 497
    :cond_1
    return-object v0
.end method

.method public getCursorForEntitiesRelatedTo(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)Landroid/database/Cursor;
    .locals 1
    .param p1, "parentEntityId"    # Ljava/lang/Long;
    .param p2, "parentType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "checkPermission"    # Z

    .prologue
    .line 110
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lde/greenrobot/dao/Property;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/genie_connect/android/repository/base/BaseRepository;->getCursorForEntitiesRelatedTo(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z[Lde/greenrobot/dao/Property;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public varargs getCursorForEntitiesRelatedTo(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z[Lde/greenrobot/dao/Property;)Landroid/database/Cursor;
    .locals 10
    .param p1, "parentEntityId"    # Ljava/lang/Long;
    .param p2, "parentType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "checkPermission"    # Z
    .param p4, "orderby"    # [Lde/greenrobot/dao/Property;

    .prologue
    .line 127
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const-string v5, "%s_%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v8}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "linkTable":Ljava/lang/String;
    invoke-static {p2}, Lcom/genie_connect/android/repository/RepositoryLocator;->getRepositoryForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lcom/genie_connect/android/repository/base/BaseRepository;

    move-result-object v4

    .line 134
    .local v4, "parentRepo":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<**>;"
    iget-object v5, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v4, v5}, Lcom/genie_connect/android/repository/base/BaseRepository;->getForeignKeyNameForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "parentFkField":Ljava/lang/String;
    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lde/greenrobot/dao/query/QueryBuilder;->leftJoin(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v5

    const-string v6, "T.id"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v8}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lde/greenrobot/dao/join/JoinBuilder;->on(Ljava/lang/String;Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->getColumnsForEntity()[Lde/greenrobot/dao/Selectable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    .line 143
    .local v0, "baseQuery":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TTEntity;>;"
    new-instance v5, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v6, "%s.%s_id = %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    new-instance v6, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v7, "%s = %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    new-array v7, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v5, v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->or(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    .line 150
    .local v1, "baseWhere":Lde/greenrobot/dao/query/WhereCondition;
    if-eqz p3, :cond_0

    .line 151
    invoke-direct {p0, v0, p4}, Lcom/genie_connect/android/repository/base/BaseRepository;->orderIfNecessary(Lde/greenrobot/dao/query/QueryBuilder;[Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->permissionsCheckWhere()Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v5, v1, v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lde/greenrobot/dao/query/QueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v5

    .line 174
    :goto_0
    return-object v5

    .line 154
    :cond_0
    invoke-direct {p0, v0, p4}, Lcom/genie_connect/android/repository/base/BaseRepository;->orderIfNecessary(Lde/greenrobot/dao/query/QueryBuilder;[Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v5, v1, v6}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lde/greenrobot/dao/query/QueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 160
    .end local v0    # "baseQuery":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TTEntity;>;"
    .end local v1    # "baseWhere":Lde/greenrobot/dao/query/WhereCondition;
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v5

    const-string v6, "T.id"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v8}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lde/greenrobot/dao/join/JoinBuilder;->on(Ljava/lang/String;Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->getColumnsForEntity()[Lde/greenrobot/dao/Selectable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lde/greenrobot/dao/query/QueryBuilder;->select([Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    .line 165
    .restart local v0    # "baseQuery":Lde/greenrobot/dao/query/QueryBuilder;, "Lde/greenrobot/dao/query/QueryBuilder<TTEntity;>;"
    new-instance v1, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v5, "%s.%s_id = %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    .line 169
    .restart local v1    # "baseWhere":Lde/greenrobot/dao/query/WhereCondition;
    if-eqz p3, :cond_2

    .line 170
    invoke-direct {p0, v0, p4}, Lcom/genie_connect/android/repository/base/BaseRepository;->orderIfNecessary(Lde/greenrobot/dao/query/QueryBuilder;[Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->permissionsCheckWhere()Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v5, v1, v6, v7}, Lde/greenrobot/dao/query/QueryBuilder;->whereAnd(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lde/greenrobot/dao/query/QueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 174
    :cond_2
    invoke-direct {p0, v0, p4}, Lcom/genie_connect/android/repository/base/BaseRepository;->orderIfNecessary(Lde/greenrobot/dao/query/QueryBuilder;[Lde/greenrobot/dao/Property;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v5, v1, v6}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lde/greenrobot/dao/query/QueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public getFavouriteRepository()Lcom/genie_connect/android/repository/base/FavouriteRepository;
    .locals 1

    .prologue
    .line 78
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFavouriteSelectable()Lde/greenrobot/dao/Selectable;
    .locals 6

    .prologue
    .line 241
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->getFavouriteRepository()Lcom/genie_connect/android/repository/base/FavouriteRepository;

    move-result-object v0

    .line 243
    .local v0, "favRepo":Lcom/genie_connect/android/repository/base/FavouriteRepository;
    if-eqz v0, :cond_0

    .line 244
    const-string v2, "EXISTS (SELECT * FROM %s F where F.%s = T.id)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lcom/genie_connect/android/repository/base/FavouriteRepository;->getTableName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v5}, Lcom/genie_connect/android/repository/base/FavouriteRepository;->getLinkField(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "favouriteSql":Ljava/lang/String;
    new-instance v2, Lde/greenrobot/dao/selectable/SqlSelectable;

    invoke-direct {v2, v1}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    const-string v3, "isFavourite"

    invoke-virtual {v2, v3}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v2

    .line 248
    .end local v1    # "favouriteSql":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getForeignKeyNameForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;
    .locals 1
    .param p1, "otherType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 74
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLocationSelectable()Lde/greenrobot/dao/Selectable;
    .locals 1

    .prologue
    .line 279
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getLocations(Ljava/lang/Long;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 6
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const/4 v5, 0x0

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_locations"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "locLinkTable":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Id:Lde/greenrobot/dao/Property;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    const-class v2, Lcom/genie_connect/common/db/model/Location;

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->leftJoin(Ljava/lang/Class;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".locations"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/common/db/model/Location$Properties;->Name:Lde/greenrobot/dao/Property;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/join/JoinBuilder;->on(Ljava/lang/String;Lde/greenrobot/dao/Selectable;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    sget-object v2, Lcom/genie_connect/common/db/model/Exhibitor$Properties;->Id:Lde/greenrobot/dao/Property;

    invoke-virtual {v2, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v2

    new-array v3, v5, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v1, v2, v3}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "locations"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "mapPosition_map"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->select([Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lde/greenrobot/dao/query/QueryBuilder;->cursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/genie_connect/android/repository/base/BaseRepository;->toEasyCursor(Landroid/database/Cursor;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    return-object v1
.end method

.method public getNoteRepository()Lcom/genie_connect/android/repository/NoteRepository;
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    iget-object v0, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mNoteRepo:Lcom/genie_connect/android/repository/NoteRepository;

    return-object v0
.end method

.method protected getNotesSelectable()Lde/greenrobot/dao/Selectable;
    .locals 7

    .prologue
    .line 263
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->getNoteRepository()Lcom/genie_connect/android/repository/NoteRepository;

    move-result-object v1

    .line 265
    .local v1, "noteRepo":Lcom/genie_connect/android/repository/NoteRepository;
    if-eqz v1, :cond_0

    .line 267
    iget-object v3, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1, v3}, Lcom/genie_connect/android/repository/NoteRepository;->getLinkPropertyForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lde/greenrobot/dao/Property;

    move-result-object v0

    .line 269
    .local v0, "noteProperty":Lde/greenrobot/dao/Property;
    if-eqz v0, :cond_0

    .line 270
    const-string v3, "EXISTS (SELECT * FROM notes N where N.%s = T.id)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lde/greenrobot/dao/Property;->columnName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "noteSql":Ljava/lang/String;
    new-instance v3, Lde/greenrobot/dao/selectable/SqlSelectable;

    invoke-direct {v3, v2}, Lde/greenrobot/dao/selectable/SqlSelectable;-><init>(Ljava/lang/String;)V

    const-string v4, "hasNote"

    invoke-virtual {v3, v4}, Lde/greenrobot/dao/selectable/SqlSelectable;->as(Ljava/lang/String;)Lde/greenrobot/dao/selectable/SqlSelectable;

    move-result-object v3

    .line 275
    .end local v0    # "noteProperty":Lde/greenrobot/dao/Property;
    .end local v2    # "noteSql":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    iget-object v0, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v0}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasNote(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 91
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z
    .locals 1
    .param p1, "entityId"    # Ljava/lang/Long;
    .param p2, "relatedType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 319
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/genie_connect/android/repository/base/BaseRepository;->hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)Z

    move-result v0

    return v0
.end method

.method public hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)Z
    .locals 1
    .param p1, "entityId"    # Ljava/lang/Long;
    .param p2, "relatedType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "relationName"    # Ljava/lang/String;

    .prologue
    .line 368
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/genie_connect/android/repository/base/BaseRepository;->hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)Z
    .locals 2
    .param p1, "entityId"    # Ljava/lang/Long;
    .param p2, "relatedType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "searchReverseRelation"    # Z

    .prologue
    .line 346
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "relationName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/genie_connect/android/repository/base/BaseRepository;->hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZLjava/lang/String;)Z

    move-result v1

    return v1

    .line 346
    .end local v0    # "relationName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasRelatedEntities(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;ZLjava/lang/String;)Z
    .locals 11
    .param p1, "entityId"    # Ljava/lang/Long;
    .param p2, "relatedType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "searchReverseRelation"    # Z
    .param p4, "relationName"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const/4 v6, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 392
    if-eqz p3, :cond_0

    .line 394
    const-string v3, "%s_%s"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p4, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, "linkTable":Ljava/lang/String;
    new-instance v2, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v3, "EXISTS (SELECT * FROM %s WHERE %s = %s)"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v8

    aput-object p4, v4, v9

    aput-object p1, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    .line 401
    .local v2, "linkTableCondition":Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    new-array v4, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v3, v2, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lde/greenrobot/dao/query/QueryBuilder;->any()Z

    move-result v3

    .line 424
    :goto_0
    return v3

    .line 405
    .end local v1    # "linkTable":Ljava/lang/String;
    .end local v2    # "linkTableCondition":Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    :cond_0
    const-string v3, "%s_%s"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object p4, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 408
    .restart local v1    # "linkTable":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/genie_connect/android/repository/base/BaseRepository;->getForeignKeyNameForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "fkField":Ljava/lang/String;
    new-instance v2, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v3, "EXISTS (SELECT * FROM %s WHERE %s_id = %s)"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v8

    iget-object v5, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    aput-object p1, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    .line 414
    .restart local v2    # "linkTableCondition":Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    new-instance v4, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v5, "EXISTS (SELECT * FROM %s WHERE %s = %s)"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v0, v6, v9

    aput-object p1, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    new-array v5, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v3, v4, v2, v5}, Lde/greenrobot/dao/query/QueryBuilder;->whereOr(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lde/greenrobot/dao/query/QueryBuilder;->any()Z

    move-result v3

    goto :goto_0

    .line 424
    :cond_1
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    new-array v4, v8, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v3, v2, v4}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lde/greenrobot/dao/query/QueryBuilder;->any()Z

    move-result v3

    goto :goto_0
.end method

.method protected hasRelatedEntitiesWithPermission(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z
    .locals 1
    .param p1, "entityId"    # Ljava/lang/Long;
    .param p2, "relatedType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 432
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/genie_connect/android/repository/base/BaseRepository;->hasRelatedEntitiesWithPermission(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected hasRelatedEntitiesWithPermission(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;)Z
    .locals 11
    .param p1, "entityId"    # Ljava/lang/Long;
    .param p2, "relatedType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "relationName"    # Ljava/lang/String;

    .prologue
    .line 439
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const-string v4, "%s_%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v7}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "linkTable":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/genie_connect/android/repository/base/BaseRepository;->getForeignKeyNameForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "fkField":Ljava/lang/String;
    invoke-direct {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->permissionCheckWhereString()Ljava/lang/String;

    move-result-object v3

    .line 446
    .local v3, "permCheckString":Ljava/lang/String;
    new-instance v2, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v5, "EXISTS (SELECT * FROM %s INNER JOIN %s ON %s = %s WHERE %s_id = %s %s)"

    const/4 v4, 0x7

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v6, v4

    const/4 v4, 0x1

    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    const-string v7, "%s.%s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v9, 0x1

    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x3

    const-string v7, "%s.id"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x4

    iget-object v7, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v7}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x5

    aput-object p1, v6, v4

    const/4 v7, 0x6

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AND "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    .line 458
    .local v2, "linkTableCondition":Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    invoke-static {v0}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 459
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v5

    new-instance v6, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v7, "EXISTS (SELECT * FROM %s WHERE %s = %s %s)"

    const/4 v4, 0x4

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const/4 v4, 0x1

    aput-object v0, v8, v4

    const/4 v4, 0x2

    aput-object p1, v8, v4

    const/4 v9, 0x3

    invoke-static {v3}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AND "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    new-array v4, v4, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v5, v6, v2, v4}, Lde/greenrobot/dao/query/QueryBuilder;->whereOr(Lde/greenrobot/dao/query/WhereCondition;Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lde/greenrobot/dao/query/QueryBuilder;->any()Z

    move-result v4

    .line 467
    :goto_2
    return v4

    .line 446
    .end local v2    # "linkTableCondition":Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    :cond_0
    const-string v4, ""

    goto :goto_0

    .line 459
    .restart local v2    # "linkTableCondition":Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    :cond_1
    const-string v4, ""

    goto :goto_1

    .line 467
    :cond_2
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/base/BaseRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v4, v2, v5}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lde/greenrobot/dao/query/QueryBuilder;->any()Z

    move-result v4

    goto :goto_2
.end method

.method protected permissionsCheckWhere()Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    .locals 1

    .prologue
    .line 538
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/repository/base/BaseRepository;->permissionsCheckWhere(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v0

    return-object v0
.end method

.method protected permissionsCheckWhere(Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 542
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    iget-object v1, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mAppContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 543
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "permissionsCheckWhere: Context is null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_0
    invoke-direct {p0, p1}, Lcom/genie_connect/android/repository/base/BaseRepository;->permissionCheckWhereString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "whereString":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 550
    new-instance v1, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    invoke-direct {v1, v0}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    .line 553
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    const-string v2, "1 = 1"

    invoke-direct {v1, v2}, Lde/greenrobot/dao/query/WhereCondition$StringCondition;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected query()Lde/greenrobot/dao/query/QueryBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lde/greenrobot/dao/query/QueryBuilder",
            "<TTEntity;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    iget-object v0, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->mDao:Lde/greenrobot/dao/Dao;

    invoke-interface {v0}, Lde/greenrobot/dao/Dao;->queryBuilder()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected sessionCategoryFilterWhere(Ljava/util/List;Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;
    .locals 1
    .param p2, "masterTableAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lde/greenrobot/dao/query/WhereCondition$StringCondition;"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    .local p1, "categoryFilters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/genie_connect/android/repository/base/BaseRepository;->newTagsForSessions:Z

    if-eqz v0, :cond_0

    .line 569
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/repository/base/BaseRepository;->sessionTagsv2Filter(Ljava/util/List;Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v0

    .line 571
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/genie_connect/android/repository/base/BaseRepository;->sessionCategoryFilter(Ljava/util/List;Ljava/lang/String;)Lde/greenrobot/dao/query/WhereCondition$StringCondition;

    move-result-object v0

    goto :goto_0
.end method

.method protected toEasyCursor(Landroid/database/Cursor;)Luk/co/alt236/easycursor/EasyCursor;
    .locals 1
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 311
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    if-nez p1, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 315
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;

    invoke-direct {v0, p1}, Luk/co/alt236/easycursor/sqlcursor/EasySqlCursor;-><init>(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method protected toSqlDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p1, "serverDate"    # Ljava/util/Date;

    .prologue
    .line 724
    .local p0, "this":Lcom/genie_connect/android/repository/base/BaseRepository;, "Lcom/genie_connect/android/repository/base/BaseRepository<TTEntity;TTKey;>;"
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\' \'HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
