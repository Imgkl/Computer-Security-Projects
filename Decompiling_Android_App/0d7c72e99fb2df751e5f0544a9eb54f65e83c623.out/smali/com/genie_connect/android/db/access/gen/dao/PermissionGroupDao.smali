.class public Lcom/genie_connect/android/db/access/gen/dao/PermissionGroupDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "PermissionGroupDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/genie_connect/common/db/model/PermissionGroup;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "permissionGroups"


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
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/PermissionGroup;)V
    .locals 28
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/PermissionGroup;

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 36
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->modifiedBy:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 37
    .local v21, "modifiedBy":Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 38
    const/16 v25, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 41
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->importCameFrom:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 42
    .local v19, "importCameFrom":Ljava/lang/String;
    if-eqz v19, :cond_1

    .line 43
    const/16 v25, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    :cond_1
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->anonymousPermissionSet_canFavourite:Ljava/lang/Boolean;

    .line 47
    .local v8, "anonymousPermissionSet_canFavourite":Ljava/lang/Boolean;
    if-eqz v8, :cond_2

    .line 48
    const/16 v25, 0x3

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_15

    const-wide/16 v26, 0x1

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 51
    :cond_2
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->anonymousPermissionSet_canAddToFavourite:Ljava/lang/Boolean;

    .line 52
    .local v7, "anonymousPermissionSet_canAddToFavourite":Ljava/lang/Boolean;
    if-eqz v7, :cond_3

    .line 53
    const/16 v25, 0x4

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_16

    const-wide/16 v26, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 56
    :cond_3
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->anonymousPermissionSet_canOpen:Ljava/lang/Boolean;

    .line 57
    .local v9, "anonymousPermissionSet_canOpen":Ljava/lang/Boolean;
    if-eqz v9, :cond_4

    .line 58
    const/16 v25, 0x5

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_17

    const-wide/16 v26, 0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 61
    :cond_4
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->anonymousPermissionSet_canView:Ljava/lang/Boolean;

    .line 62
    .local v10, "anonymousPermissionSet_canView":Ljava/lang/Boolean;
    if-eqz v10, :cond_5

    .line 63
    const/16 v25, 0x6

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_18

    const-wide/16 v26, 0x1

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 66
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->modifiedDate:Ljava/util/Date;

    move-object/from16 v22, v0

    .line 67
    .local v22, "modifiedDate":Ljava/util/Date;
    if-eqz v22, :cond_6

    .line 68
    const/16 v25, 0x7

    invoke-virtual/range {v22 .. v22}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 71
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->id:Ljava/lang/Long;

    move-object/from16 v17, v0

    .line 72
    .local v17, "id":Ljava/lang/Long;
    if-eqz v17, :cond_7

    .line 73
    const/16 v25, 0x8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 76
    :cond_7
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->_id:Ljava/lang/String;

    .line 77
    .local v5, "_id":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 78
    const/16 v25, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 81
    :cond_8
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->createdBy:Ljava/lang/String;

    .line 82
    .local v11, "createdBy":Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 83
    const/16 v25, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 86
    :cond_9
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 87
    .local v23, "name":Ljava/lang/String;
    if-eqz v23, :cond_a

    .line 88
    const/16 v25, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->importBatch:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 92
    .local v18, "importBatch":Ljava/lang/String;
    if-eqz v18, :cond_b

    .line 93
    const/16 v25, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 96
    :cond_b
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->createdDate:Ljava/util/Date;

    .line 97
    .local v12, "createdDate":Ljava/util/Date;
    if-eqz v12, :cond_c

    .line 98
    const/16 v25, 0xd

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v26

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 101
    :cond_c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->permissionFailureMessage:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 102
    .local v24, "permissionFailureMessage":Ljava/lang/String;
    if-eqz v24, :cond_d

    .line 103
    const/16 v25, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 106
    :cond_d
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->everyoneElsePermissionSet_canFavourite:Ljava/lang/Boolean;

    .line 107
    .local v14, "everyoneElsePermissionSet_canFavourite":Ljava/lang/Boolean;
    if-eqz v14, :cond_e

    .line 108
    const/16 v25, 0xf

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_19

    const-wide/16 v26, 0x1

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 111
    :cond_e
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->everyoneElsePermissionSet_canAddToFavourite:Ljava/lang/Boolean;

    .line 112
    .local v13, "everyoneElsePermissionSet_canAddToFavourite":Ljava/lang/Boolean;
    if-eqz v13, :cond_f

    .line 113
    const/16 v25, 0x10

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_1a

    const-wide/16 v26, 0x1

    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 116
    :cond_f
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->everyoneElsePermissionSet_canOpen:Ljava/lang/Boolean;

    .line 117
    .local v15, "everyoneElsePermissionSet_canOpen":Ljava/lang/Boolean;
    if-eqz v15, :cond_10

    .line 118
    const/16 v25, 0x11

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_1b

    const-wide/16 v26, 0x1

    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 121
    :cond_10
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->everyoneElsePermissionSet_canView:Ljava/lang/Boolean;

    move-object/from16 v16, v0

    .line 122
    .local v16, "everyoneElsePermissionSet_canView":Ljava/lang/Boolean;
    if-eqz v16, :cond_11

    .line 123
    const/16 v25, 0x12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-eqz v26, :cond_1c

    const-wide/16 v26, 0x1

    :goto_7
    move-object/from16 v0, p1

    move/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 126
    :cond_11
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->importKey:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 127
    .local v20, "importKey":Ljava/lang/String;
    if-eqz v20, :cond_12

    .line 128
    const/16 v25, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 131
    :cond_12
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->_namespace:Ljava/lang/String;

    .line 132
    .local v6, "_namespace":Ljava/lang/String;
    if-eqz v6, :cond_13

    .line 133
    const/16 v25, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 136
    :cond_13
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/genie_connect/common/db/model/PermissionGroup;->_dataversion:Ljava/lang/String;

    .line 137
    .local v4, "_dataversion":Ljava/lang/String;
    if-eqz v4, :cond_14

    .line 138
    const/16 v25, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 140
    :cond_14
    return-void

    .line 48
    .end local v4    # "_dataversion":Ljava/lang/String;
    .end local v5    # "_id":Ljava/lang/String;
    .end local v6    # "_namespace":Ljava/lang/String;
    .end local v7    # "anonymousPermissionSet_canAddToFavourite":Ljava/lang/Boolean;
    .end local v9    # "anonymousPermissionSet_canOpen":Ljava/lang/Boolean;
    .end local v10    # "anonymousPermissionSet_canView":Ljava/lang/Boolean;
    .end local v11    # "createdBy":Ljava/lang/String;
    .end local v12    # "createdDate":Ljava/util/Date;
    .end local v13    # "everyoneElsePermissionSet_canAddToFavourite":Ljava/lang/Boolean;
    .end local v14    # "everyoneElsePermissionSet_canFavourite":Ljava/lang/Boolean;
    .end local v15    # "everyoneElsePermissionSet_canOpen":Ljava/lang/Boolean;
    .end local v16    # "everyoneElsePermissionSet_canView":Ljava/lang/Boolean;
    .end local v17    # "id":Ljava/lang/Long;
    .end local v18    # "importBatch":Ljava/lang/String;
    .end local v20    # "importKey":Ljava/lang/String;
    .end local v22    # "modifiedDate":Ljava/util/Date;
    .end local v23    # "name":Ljava/lang/String;
    .end local v24    # "permissionFailureMessage":Ljava/lang/String;
    :cond_15
    const-wide/16 v26, 0x0

    goto/16 :goto_0

    .line 53
    .restart local v7    # "anonymousPermissionSet_canAddToFavourite":Ljava/lang/Boolean;
    :cond_16
    const-wide/16 v26, 0x0

    goto/16 :goto_1

    .line 58
    .restart local v9    # "anonymousPermissionSet_canOpen":Ljava/lang/Boolean;
    :cond_17
    const-wide/16 v26, 0x0

    goto/16 :goto_2

    .line 63
    .restart local v10    # "anonymousPermissionSet_canView":Ljava/lang/Boolean;
    :cond_18
    const-wide/16 v26, 0x0

    goto/16 :goto_3

    .line 108
    .restart local v5    # "_id":Ljava/lang/String;
    .restart local v11    # "createdBy":Ljava/lang/String;
    .restart local v12    # "createdDate":Ljava/util/Date;
    .restart local v14    # "everyoneElsePermissionSet_canFavourite":Ljava/lang/Boolean;
    .restart local v17    # "id":Ljava/lang/Long;
    .restart local v18    # "importBatch":Ljava/lang/String;
    .restart local v22    # "modifiedDate":Ljava/util/Date;
    .restart local v23    # "name":Ljava/lang/String;
    .restart local v24    # "permissionFailureMessage":Ljava/lang/String;
    :cond_19
    const-wide/16 v26, 0x0

    goto/16 :goto_4

    .line 113
    .restart local v13    # "everyoneElsePermissionSet_canAddToFavourite":Ljava/lang/Boolean;
    :cond_1a
    const-wide/16 v26, 0x0

    goto/16 :goto_5

    .line 118
    .restart local v15    # "everyoneElsePermissionSet_canOpen":Ljava/lang/Boolean;
    :cond_1b
    const-wide/16 v26, 0x0

    goto :goto_6

    .line 123
    .restart local v16    # "everyoneElsePermissionSet_canView":Ljava/lang/Boolean;
    :cond_1c
    const-wide/16 v26, 0x0

    goto :goto_7
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/PermissionGroup;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/PermissionGroupDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/PermissionGroup;)V

    return-void
.end method

.method public getKey(Lcom/genie_connect/common/db/model/PermissionGroup;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/PermissionGroup;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    .line 214
    iget-object v0, p1, Lcom/genie_connect/common/db/model/PermissionGroup;->id:Ljava/lang/Long;

    .line 216
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Lcom/genie_connect/common/db/model/PermissionGroup;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/access/gen/dao/PermissionGroupDao;->getKey(Lcom/genie_connect/common/db/model/PermissionGroup;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/PermissionGroup;
    .locals 24
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 151
    new-instance v2, Lcom/genie_connect/common/db/model/PermissionGroup;

    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    add-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_2
    add-int/lit8 v6, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    :goto_3
    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    :goto_4
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v8, 0x0

    :goto_5
    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    :goto_6
    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x0

    :goto_7
    add-int/lit8 v11, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x0

    :goto_8
    add-int/lit8 v12, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x0

    :goto_9
    add-int/lit8 v13, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_e

    const/4 v13, 0x0

    :goto_a
    add-int/lit8 v14, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v14, 0x0

    :goto_b
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_10

    const/4 v15, 0x0

    :goto_c
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_11

    const/16 v16, 0x0

    :goto_d
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_12

    const/16 v17, 0x0

    :goto_e
    add-int/lit8 v18, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_14

    const/16 v18, 0x0

    :goto_f
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_16

    const/16 v19, 0x0

    :goto_10
    add-int/lit8 v20, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_18

    const/16 v20, 0x0

    :goto_11
    add-int/lit8 v21, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_1a

    const/16 v21, 0x0

    :goto_12
    add-int/lit8 v22, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_1b

    const/16 v22, 0x0

    :goto_13
    add-int/lit8 v23, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_1c

    const/16 v23, 0x0

    :goto_14
    invoke-direct/range {v2 .. v23}, Lcom/genie_connect/common/db/model/PermissionGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .local v2, "entity":Lcom/genie_connect/common/db/model/PermissionGroup;
    return-object v2

    .line 151
    .end local v2    # "entity":Lcom/genie_connect/common/db/model/PermissionGroup;
    :cond_0
    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getShort(I)S

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_15
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto/16 :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_15

    :cond_4
    add-int/lit8 v6, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getShort(I)S

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_16
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_3

    :cond_5
    const/4 v6, 0x0

    goto :goto_16

    :cond_6
    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    :goto_17
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_4

    :cond_7
    const/4 v7, 0x0

    goto :goto_17

    :cond_8
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getShort(I)S

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    :goto_18
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_5

    :cond_9
    const/4 v8, 0x0

    goto :goto_18

    :cond_a
    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/genie_connect/android/db/access/gen/dao/PermissionGroupDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    goto/16 :goto_6

    :cond_b
    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v11, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_8

    :cond_d
    add-int/lit8 v12, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_9

    :cond_e
    add-int/lit8 v13, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_a

    :cond_f
    add-int/lit8 v14, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_b

    :cond_10
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/genie_connect/android/db/access/gen/dao/PermissionGroupDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    goto/16 :goto_c

    :cond_11
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_d

    :cond_12
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v17

    if-eqz v17, :cond_13

    const/16 v17, 0x1

    :goto_19
    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    goto/16 :goto_e

    :cond_13
    const/16 v17, 0x0

    goto :goto_19

    :cond_14
    add-int/lit8 v18, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v18

    if-eqz v18, :cond_15

    const/16 v18, 0x1

    :goto_1a
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    goto/16 :goto_f

    :cond_15
    const/16 v18, 0x0

    goto :goto_1a

    :cond_16
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v19

    if-eqz v19, :cond_17

    const/16 v19, 0x1

    :goto_1b
    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    goto/16 :goto_10

    :cond_17
    const/16 v19, 0x0

    goto :goto_1b

    :cond_18
    add-int/lit8 v20, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v20

    if-eqz v20, :cond_19

    const/16 v20, 0x1

    :goto_1c
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    goto/16 :goto_11

    :cond_19
    const/16 v20, 0x0

    goto :goto_1c

    :cond_1a
    add-int/lit8 v21, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_12

    :cond_1b
    add-int/lit8 v22, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_13

    :cond_1c
    add-int/lit8 v23, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_14
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/PermissionGroupDao;->readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/PermissionGroup;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/PermissionGroup;I)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/PermissionGroup;
    .param p3, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 180
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->modifiedBy:Ljava/lang/String;

    .line 181
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->importCameFrom:Ljava/lang/String;

    .line 182
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->anonymousPermissionSet_canFavourite:Ljava/lang/Boolean;

    .line 183
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_3
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->anonymousPermissionSet_canAddToFavourite:Ljava/lang/Boolean;

    .line 184
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_4
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->anonymousPermissionSet_canOpen:Ljava/lang/Boolean;

    .line 185
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_5
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->anonymousPermissionSet_canView:Ljava/lang/Boolean;

    .line 186
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_6
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->modifiedDate:Ljava/util/Date;

    .line 187
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    :goto_7
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->id:Ljava/lang/Long;

    .line 188
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v1

    :goto_8
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->_id:Ljava/lang/String;

    .line 189
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v1

    :goto_9
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->createdBy:Ljava/lang/String;

    .line 190
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v1

    :goto_a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->name:Ljava/lang/String;

    .line 191
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v1

    :goto_b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->importBatch:Ljava/lang/String;

    .line 192
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v1

    :goto_c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->createdDate:Ljava/util/Date;

    .line 193
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v1

    :goto_d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->permissionFailureMessage:Ljava/lang/String;

    .line 194
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v1

    :goto_e
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->everyoneElsePermissionSet_canFavourite:Ljava/lang/Boolean;

    .line 195
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v1

    :goto_f
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->everyoneElsePermissionSet_canAddToFavourite:Ljava/lang/Boolean;

    .line 196
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, v1

    :goto_10
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->everyoneElsePermissionSet_canOpen:Ljava/lang/Boolean;

    .line 197
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object v0, v1

    :goto_11
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->everyoneElsePermissionSet_canView:Ljava/lang/Boolean;

    .line 198
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object v0, v1

    :goto_12
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->importKey:Ljava/lang/String;

    .line 199
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object v0, v1

    :goto_13
    iput-object v0, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->_namespace:Ljava/lang/String;

    .line 200
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    :goto_14
    iput-object v1, p2, Lcom/genie_connect/common/db/model/PermissionGroup;->_dataversion:Ljava/lang/String;

    .line 201
    return-void

    .line 180
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 181
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 182
    :cond_2
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    :goto_15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_2

    :cond_3
    move v0, v3

    goto :goto_15

    .line 183
    :cond_4
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_16
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    move v0, v3

    goto :goto_16

    .line 184
    :cond_6
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_4

    :cond_7
    move v0, v3

    goto :goto_17

    .line 185
    :cond_8
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    :goto_18
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_5

    :cond_9
    move v0, v3

    goto :goto_18

    .line 186
    :cond_a
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/PermissionGroupDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_6

    .line 187
    :cond_b
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_7

    .line 188
    :cond_c
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 189
    :cond_d
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 190
    :cond_e
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 191
    :cond_f
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 192
    :cond_10
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/PermissionGroupDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_c

    .line 193
    :cond_11
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 194
    :cond_12
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_13

    move v0, v2

    :goto_19
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_e

    :cond_13
    move v0, v3

    goto :goto_19

    .line 195
    :cond_14
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    :goto_1a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_f

    :cond_15
    move v0, v3

    goto :goto_1a

    .line 196
    :cond_16
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_17

    move v0, v2

    :goto_1b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_10

    :cond_17
    move v0, v3

    goto :goto_1b

    .line 197
    :cond_18
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_19

    :goto_1c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_11

    :cond_19
    move v2, v3

    goto :goto_1c

    .line 198
    :cond_1a
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 199
    :cond_1b
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 200
    :cond_1c
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_14
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/PermissionGroup;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/PermissionGroupDao;->readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/PermissionGroup;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 145
    add-int/lit8 v0, p2, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic readKey(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/PermissionGroupDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/genie_connect/common/db/model/PermissionGroup;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/PermissionGroup;
    .param p2, "rowId"    # J

    .prologue
    .line 206
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/genie_connect/common/db/model/PermissionGroup;->id:Ljava/lang/Long;

    .line 207
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J

    .prologue
    .line 18
    check-cast p1, Lcom/genie_connect/common/db/model/PermissionGroup;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/PermissionGroupDao;->updateKeyAfterInsert(Lcom/genie_connect/common/db/model/PermissionGroup;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
