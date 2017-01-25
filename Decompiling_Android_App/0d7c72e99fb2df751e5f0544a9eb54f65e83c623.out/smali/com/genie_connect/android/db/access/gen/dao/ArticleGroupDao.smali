.class public Lcom/genie_connect/android/db/access/gen/dao/ArticleGroupDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "ArticleGroupDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/genie_connect/common/db/model/ArticleGroup;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "articleGroups"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/genie_connect/android/db/access/gen/dao/DaoSession;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/genie_connect/android/db/access/gen/dao/DaoSession;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/ArticleGroup;)V
    .locals 20
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/ArticleGroup;

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 36
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/genie_connect/common/db/model/ArticleGroup;->isDashboardFeaturedOnly:Ljava/lang/Boolean;

    .line 37
    .local v12, "isDashboardFeaturedOnly":Ljava/lang/Boolean;
    if-eqz v12, :cond_0

    .line 38
    const/16 v18, 0x1

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_c

    const-wide/16 v16, 0x1

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v18

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 41
    :cond_0
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/genie_connect/common/db/model/ArticleGroup;->modifiedBy:Ljava/lang/String;

    .line 42
    .local v13, "modifiedBy":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 43
    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    :cond_1
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/genie_connect/common/db/model/ArticleGroup;->importCameFrom:Ljava/lang/String;

    .line 47
    .local v10, "importCameFrom":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 48
    const/16 v16, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    :cond_2
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/genie_connect/common/db/model/ArticleGroup;->modifiedDate:Ljava/util/Date;

    .line 52
    .local v14, "modifiedDate":Ljava/util/Date;
    if-eqz v14, :cond_3

    .line 53
    const/16 v16, 0x4

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 56
    :cond_3
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/genie_connect/common/db/model/ArticleGroup;->_id:Ljava/lang/String;

    .line 57
    .local v5, "_id":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 58
    const/16 v16, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :cond_4
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/genie_connect/common/db/model/ArticleGroup;->createdBy:Ljava/lang/String;

    .line 62
    .local v7, "createdBy":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 63
    const/16 v16, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 66
    :cond_5
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/genie_connect/common/db/model/ArticleGroup;->importBatch:Ljava/lang/String;

    .line 67
    .local v9, "importBatch":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 68
    const/16 v16, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 71
    :cond_6
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/genie_connect/common/db/model/ArticleGroup;->name:Ljava/lang/String;

    .line 72
    .local v15, "name":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 73
    const/16 v16, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 76
    :cond_7
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/genie_connect/common/db/model/ArticleGroup;->createdDate:Ljava/util/Date;

    .line 77
    .local v8, "createdDate":Ljava/util/Date;
    if-eqz v8, :cond_8

    .line 78
    const/16 v16, 0x9

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    move-object/from16 v0, p1

    move/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 81
    :cond_8
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/genie_connect/common/db/model/ArticleGroup;->importKey:Ljava/lang/String;

    .line 82
    .local v11, "importKey":Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 83
    const/16 v16, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 86
    :cond_9
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/genie_connect/common/db/model/ArticleGroup;->_namespace:Ljava/lang/String;

    .line 87
    .local v6, "_namespace":Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 88
    const/16 v16, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :cond_a
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/genie_connect/common/db/model/ArticleGroup;->_dataversion:Ljava/lang/String;

    .line 92
    .local v4, "_dataversion":Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 93
    const/16 v16, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 95
    :cond_b
    return-void

    .line 38
    .end local v4    # "_dataversion":Ljava/lang/String;
    .end local v5    # "_id":Ljava/lang/String;
    .end local v6    # "_namespace":Ljava/lang/String;
    .end local v7    # "createdBy":Ljava/lang/String;
    .end local v8    # "createdDate":Ljava/util/Date;
    .end local v9    # "importBatch":Ljava/lang/String;
    .end local v10    # "importCameFrom":Ljava/lang/String;
    .end local v11    # "importKey":Ljava/lang/String;
    .end local v13    # "modifiedBy":Ljava/lang/String;
    .end local v14    # "modifiedDate":Ljava/util/Date;
    .end local v15    # "name":Ljava/lang/String;
    :cond_c
    const-wide/16 v16, 0x0

    goto/16 :goto_0
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/ArticleGroup;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/ArticleGroupDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/ArticleGroup;)V

    return-void
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lcom/genie_connect/common/db/model/ArticleGroup;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/access/gen/dao/ArticleGroupDao;->getKey(Lcom/genie_connect/common/db/model/ArticleGroup;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Lcom/genie_connect/common/db/model/ArticleGroup;)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/ArticleGroup;

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    iget-object v0, p1, Lcom/genie_connect/common/db/model/ArticleGroup;->name:Ljava/lang/String;

    .line 152
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/ArticleGroup;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 106
    new-instance v0, Lcom/genie_connect/common/db/model/ArticleGroup;

    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_3
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_4
    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x0

    :goto_5
    add-int/lit8 v7, p2, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    :goto_6
    add-int/lit8 v8, p2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    :goto_7
    add-int/lit8 v9, p2, 0x8

    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    :goto_8
    add-int/lit8 v10, p2, 0x9

    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    :goto_9
    add-int/lit8 v11, p2, 0xa

    invoke-interface {p1, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x0

    :goto_a
    add-int/lit8 v12, p2, 0xb

    invoke-interface {p1, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    :goto_b
    invoke-direct/range {v0 .. v12}, Lcom/genie_connect/common/db/model/ArticleGroup;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .local v0, "entity":Lcom/genie_connect/common/db/model/ArticleGroup;
    return-object v0

    .line 106
    .end local v0    # "entity":Lcom/genie_connect/common/db/model/ArticleGroup;
    :cond_0
    add-int/lit8 v1, p2, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_c
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_c

    :cond_2
    add-int/lit8 v2, p2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    add-int/lit8 v3, p2, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    add-int/lit8 v4, p2, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/genie_connect/android/db/access/gen/dao/ArticleGroupDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    goto :goto_3

    :cond_5
    add-int/lit8 v5, p2, 0x4

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_6
    add-int/lit8 v6, p2, 0x5

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_7
    add-int/lit8 v7, p2, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :cond_8
    add-int/lit8 v8, p2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    :cond_9
    add-int/lit8 v9, p2, 0x8

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/genie_connect/android/db/access/gen/dao/ArticleGroupDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    goto :goto_8

    :cond_a
    add-int/lit8 v10, p2, 0x9

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_9

    :cond_b
    add-int/lit8 v11, p2, 0xa

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_a

    :cond_c
    add-int/lit8 v12, p2, 0xb

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_b
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/ArticleGroupDao;->readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/ArticleGroup;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/ArticleGroup;I)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/ArticleGroup;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 126
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p2, Lcom/genie_connect/common/db/model/ArticleGroup;->isDashboardFeaturedOnly:Ljava/lang/Boolean;

    .line 127
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_1
    iput-object v0, p2, Lcom/genie_connect/common/db/model/ArticleGroup;->modifiedBy:Ljava/lang/String;

    .line 128
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_2
    iput-object v0, p2, Lcom/genie_connect/common/db/model/ArticleGroup;->importCameFrom:Ljava/lang/String;

    .line 129
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_3
    iput-object v0, p2, Lcom/genie_connect/common/db/model/ArticleGroup;->modifiedDate:Ljava/util/Date;

    .line 130
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_4
    iput-object v0, p2, Lcom/genie_connect/common/db/model/ArticleGroup;->_id:Ljava/lang/String;

    .line 131
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_5
    iput-object v0, p2, Lcom/genie_connect/common/db/model/ArticleGroup;->createdBy:Ljava/lang/String;

    .line 132
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_6
    iput-object v0, p2, Lcom/genie_connect/common/db/model/ArticleGroup;->importBatch:Ljava/lang/String;

    .line 133
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_7
    iput-object v0, p2, Lcom/genie_connect/common/db/model/ArticleGroup;->name:Ljava/lang/String;

    .line 134
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_8
    iput-object v0, p2, Lcom/genie_connect/common/db/model/ArticleGroup;->createdDate:Ljava/util/Date;

    .line 135
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_9
    iput-object v0, p2, Lcom/genie_connect/common/db/model/ArticleGroup;->importKey:Ljava/lang/String;

    .line 136
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    :goto_a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/ArticleGroup;->_namespace:Ljava/lang/String;

    .line 137
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_b
    iput-object v1, p2, Lcom/genie_connect/common/db/model/ArticleGroup;->_dataversion:Ljava/lang/String;

    .line 138
    return-void

    .line 126
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_c

    .line 127
    :cond_2
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 128
    :cond_3
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 129
    :cond_4
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/ArticleGroupDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_3

    .line 130
    :cond_5
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 131
    :cond_6
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 132
    :cond_7
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 133
    :cond_8
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 134
    :cond_9
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/ArticleGroupDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_8

    .line 135
    :cond_a
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 136
    :cond_b
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 137
    :cond_c
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/ArticleGroup;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/ArticleGroupDao;->readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/ArticleGroup;I)V

    return-void
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/ArticleGroupDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 100
    add-int/lit8 v0, p2, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J

    .prologue
    .line 18
    check-cast p1, Lcom/genie_connect/common/db/model/ArticleGroup;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/ArticleGroupDao;->updateKeyAfterInsert(Lcom/genie_connect/common/db/model/ArticleGroup;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/genie_connect/common/db/model/ArticleGroup;J)Ljava/lang/String;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/ArticleGroup;
    .param p2, "rowId"    # J

    .prologue
    .line 143
    iget-object v0, p1, Lcom/genie_connect/common/db/model/ArticleGroup;->name:Ljava/lang/String;

    return-object v0
.end method
