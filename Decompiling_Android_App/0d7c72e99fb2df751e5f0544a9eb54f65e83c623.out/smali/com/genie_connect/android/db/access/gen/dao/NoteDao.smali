.class public Lcom/genie_connect/android/db/access/gen/dao/NoteDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "NoteDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/genie_connect/common/db/model/Note;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "notes"


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
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/Note;)V
    .locals 30
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/Note;

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 36
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Note;->relatedSpeaker:Ljava/lang/Long;

    move-object/from16 v22, v0

    .line 37
    .local v22, "relatedSpeaker":Ljava/lang/Long;
    if-eqz v22, :cond_0

    .line 38
    const/16 v27, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 41
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Note;->relatedActivityStreamPost:Ljava/lang/Long;

    move-object/from16 v16, v0

    .line 42
    .local v16, "relatedActivityStreamPost":Ljava/lang/Long;
    if-eqz v16, :cond_1

    .line 43
    const/16 v27, 0x2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 46
    :cond_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/genie_connect/common/db/model/Note;->modifiedBy:Ljava/lang/String;

    .line 47
    .local v13, "modifiedBy":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 48
    const/16 v27, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Note;->relatedExhibitor:Ljava/lang/Long;

    move-object/from16 v18, v0

    .line 52
    .local v18, "relatedExhibitor":Ljava/lang/Long;
    if-eqz v18, :cond_3

    .line 53
    const/16 v27, 0x4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 56
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Note;->relatedPoi:Ljava/lang/Long;

    move-object/from16 v19, v0

    .line 57
    .local v19, "relatedPoi":Ljava/lang/Long;
    if-eqz v19, :cond_4

    .line 58
    const/16 v27, 0x5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 61
    :cond_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Note;->relatedSession:Ljava/lang/Long;

    move-object/from16 v21, v0

    .line 62
    .local v21, "relatedSession":Ljava/lang/Long;
    if-eqz v21, :cond_5

    .line 63
    const/16 v27, 0x6

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 66
    :cond_5
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/genie_connect/common/db/model/Note;->importCameFrom:Ljava/lang/String;

    .line 67
    .local v11, "importCameFrom":Ljava/lang/String;
    if-eqz v11, :cond_6

    .line 68
    const/16 v27, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 71
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Note;->type:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 72
    .local v25, "type":Ljava/lang/String;
    if-eqz v25, :cond_7

    .line 73
    const/16 v27, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 76
    :cond_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Note;->relatedVisitor:Ljava/lang/Long;

    move-object/from16 v24, v0

    .line 77
    .local v24, "relatedVisitor":Ljava/lang/Long;
    if-eqz v24, :cond_8

    .line 78
    const/16 v27, 0x9

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 81
    :cond_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Note;->visitor:Ljava/lang/Long;

    move-object/from16 v26, v0

    .line 82
    .local v26, "visitor":Ljava/lang/Long;
    if-eqz v26, :cond_9

    .line 83
    const/16 v27, 0xa

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 86
    :cond_9
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/genie_connect/common/db/model/Note;->modifiedDate:Ljava/util/Date;

    .line 87
    .local v14, "modifiedDate":Ljava/util/Date;
    if-eqz v14, :cond_a

    .line 88
    const/16 v27, 0xb

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 91
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Note;->relatedDownloadable:Ljava/lang/Long;

    move-object/from16 v17, v0

    .line 92
    .local v17, "relatedDownloadable":Ljava/lang/Long;
    if-eqz v17, :cond_b

    .line 93
    const/16 v27, 0xc

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 96
    :cond_b
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/genie_connect/common/db/model/Note;->id:Ljava/lang/Long;

    .line 97
    .local v9, "id":Ljava/lang/Long;
    if-eqz v9, :cond_c

    .line 98
    const/16 v27, 0xd

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 101
    :cond_c
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/genie_connect/common/db/model/Note;->_id:Ljava/lang/String;

    .line 102
    .local v5, "_id":Ljava/lang/String;
    if-eqz v5, :cond_d

    .line 103
    const/16 v27, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 106
    :cond_d
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/genie_connect/common/db/model/Note;->createdBy:Ljava/lang/String;

    .line 107
    .local v7, "createdBy":Ljava/lang/String;
    if-eqz v7, :cond_e

    .line 108
    const/16 v27, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 111
    :cond_e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Note;->relatedSubSession:Ljava/lang/Long;

    move-object/from16 v23, v0

    .line 112
    .local v23, "relatedSubSession":Ljava/lang/Long;
    if-eqz v23, :cond_f

    .line 113
    const/16 v27, 0x10

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 116
    :cond_f
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/genie_connect/common/db/model/Note;->importBatch:Ljava/lang/String;

    .line 117
    .local v10, "importBatch":Ljava/lang/String;
    if-eqz v10, :cond_10

    .line 118
    const/16 v27, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 121
    :cond_10
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Note;->relatedProduct:Ljava/lang/Long;

    move-object/from16 v20, v0

    .line 122
    .local v20, "relatedProduct":Ljava/lang/Long;
    if-eqz v20, :cond_11

    .line 123
    const/16 v27, 0x12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 126
    :cond_11
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/genie_connect/common/db/model/Note;->createdDate:Ljava/util/Date;

    .line 127
    .local v8, "createdDate":Ljava/util/Date;
    if-eqz v8, :cond_12

    .line 128
    const/16 v27, 0x13

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v28

    move-object/from16 v0, p1

    move/from16 v1, v27

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 131
    :cond_12
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/genie_connect/common/db/model/Note;->note:Ljava/lang/String;

    .line 132
    .local v15, "note":Ljava/lang/String;
    if-eqz v15, :cond_13

    .line 133
    const/16 v27, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 136
    :cond_13
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/genie_connect/common/db/model/Note;->importKey:Ljava/lang/String;

    .line 137
    .local v12, "importKey":Ljava/lang/String;
    if-eqz v12, :cond_14

    .line 138
    const/16 v27, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 141
    :cond_14
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/genie_connect/common/db/model/Note;->_namespace:Ljava/lang/String;

    .line 142
    .local v6, "_namespace":Ljava/lang/String;
    if-eqz v6, :cond_15

    .line 143
    const/16 v27, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 146
    :cond_15
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/genie_connect/common/db/model/Note;->_dataversion:Ljava/lang/String;

    .line 147
    .local v4, "_dataversion":Ljava/lang/String;
    if-eqz v4, :cond_16

    .line 148
    const/16 v27, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 150
    :cond_16
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/Note;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/NoteDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/Note;)V

    return-void
.end method

.method public getKey(Lcom/genie_connect/common/db/model/Note;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/Note;

    .prologue
    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p1, Lcom/genie_connect/common/db/model/Note;->id:Ljava/lang/Long;

    .line 230
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
    check-cast p1, Lcom/genie_connect/common/db/model/Note;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/access/gen/dao/NoteDao;->getKey(Lcom/genie_connect/common/db/model/Note;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/Note;
    .locals 26
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 161
    new-instance v2, Lcom/genie_connect/common/db/model/Note;

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

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    :goto_3
    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_4
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    :goto_5
    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    :goto_6
    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    :goto_7
    add-int/lit8 v11, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    :goto_8
    add-int/lit8 v12, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    :goto_9
    add-int/lit8 v13, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    :goto_a
    add-int/lit8 v14, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    :goto_b
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    :goto_c
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x0

    :goto_d
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_e

    const/16 v17, 0x0

    :goto_e
    add-int/lit8 v18, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_f

    const/16 v18, 0x0

    :goto_f
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_10

    const/16 v19, 0x0

    :goto_10
    add-int/lit8 v20, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_11

    const/16 v20, 0x0

    :goto_11
    add-int/lit8 v21, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_12

    const/16 v21, 0x0

    :goto_12
    add-int/lit8 v22, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_13

    const/16 v22, 0x0

    :goto_13
    add-int/lit8 v23, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_14

    const/16 v23, 0x0

    :goto_14
    add-int/lit8 v24, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_15

    const/16 v24, 0x0

    :goto_15
    add-int/lit8 v25, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_16

    const/16 v25, 0x0

    :goto_16
    invoke-direct/range {v2 .. v25}, Lcom/genie_connect/common/db/model/Note;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .local v2, "entity":Lcom/genie_connect/common/db/model/Note;
    return-object v2

    .line 161
    .end local v2    # "entity":Lcom/genie_connect/common/db/model/Note;
    :cond_0
    add-int/lit8 v3, p2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    add-int/lit8 v4, p2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto/16 :goto_1

    :cond_2
    add-int/lit8 v5, p2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v6, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto/16 :goto_5

    :cond_6
    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    :cond_7
    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v11, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v12, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    goto/16 :goto_9

    :cond_a
    add-int/lit8 v13, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/genie_connect/android/db/access/gen/dao/NoteDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    goto/16 :goto_a

    :cond_b
    add-int/lit8 v14, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto/16 :goto_b

    :cond_c
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    goto/16 :goto_c

    :cond_d
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_d

    :cond_e
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_e

    :cond_f
    add-int/lit8 v18, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    goto/16 :goto_f

    :cond_10
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_10

    :cond_11
    add-int/lit8 v20, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    goto/16 :goto_11

    :cond_12
    add-int/lit8 v21, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/NoteDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v21

    goto/16 :goto_12

    :cond_13
    add-int/lit8 v22, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_13

    :cond_14
    add-int/lit8 v23, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_14

    :cond_15
    add-int/lit8 v24, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_15

    :cond_16
    add-int/lit8 v25, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_16
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/NoteDao;->readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/Note;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/Note;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/Note;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 192
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->relatedSpeaker:Ljava/lang/Long;

    .line 193
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->relatedActivityStreamPost:Ljava/lang/Long;

    .line 194
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->modifiedBy:Ljava/lang/String;

    .line 195
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->relatedExhibitor:Ljava/lang/Long;

    .line 196
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->relatedPoi:Ljava/lang/Long;

    .line 197
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_5
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->relatedSession:Ljava/lang/Long;

    .line 198
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_6
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->importCameFrom:Ljava/lang/String;

    .line 199
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_7
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->type:Ljava/lang/String;

    .line 200
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_8
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->relatedVisitor:Ljava/lang/Long;

    .line 201
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_9
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->visitor:Ljava/lang/Long;

    .line 202
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->modifiedDate:Ljava/util/Date;

    .line 203
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    :goto_b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->relatedDownloadable:Ljava/lang/Long;

    .line 204
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v1

    :goto_c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->id:Ljava/lang/Long;

    .line 205
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v1

    :goto_d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->_id:Ljava/lang/String;

    .line 206
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v1

    :goto_e
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->createdBy:Ljava/lang/String;

    .line 207
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v1

    :goto_f
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->relatedSubSession:Ljava/lang/Long;

    .line 208
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v1

    :goto_10
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->importBatch:Ljava/lang/String;

    .line 209
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v1

    :goto_11
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->relatedProduct:Ljava/lang/Long;

    .line 210
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v1

    :goto_12
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->createdDate:Ljava/util/Date;

    .line 211
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, v1

    :goto_13
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->note:Ljava/lang/String;

    .line 212
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v1

    :goto_14
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->importKey:Ljava/lang/String;

    .line 213
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, v1

    :goto_15
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Note;->_namespace:Ljava/lang/String;

    .line 214
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_16

    :goto_16
    iput-object v1, p2, Lcom/genie_connect/common/db/model/Note;->_dataversion:Ljava/lang/String;

    .line 215
    return-void

    .line 192
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 193
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_1

    .line 194
    :cond_2
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 195
    :cond_3
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_3

    .line 196
    :cond_4
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_4

    .line 197
    :cond_5
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_5

    .line 198
    :cond_6
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 199
    :cond_7
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 200
    :cond_8
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_8

    .line 201
    :cond_9
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_9

    .line 202
    :cond_a
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/NoteDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_a

    .line 203
    :cond_b
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_b

    .line 204
    :cond_c
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_c

    .line 205
    :cond_d
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 206
    :cond_e
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 207
    :cond_f
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_f

    .line 208
    :cond_10
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 209
    :cond_11
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_11

    .line 210
    :cond_12
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/NoteDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_12

    .line 211
    :cond_13
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 212
    :cond_14
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 213
    :cond_15
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_15

    .line 214
    :cond_16
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_16
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/Note;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/NoteDao;->readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/Note;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 155
    add-int/lit8 v0, p2, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0xc

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
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/NoteDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/genie_connect/common/db/model/Note;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/Note;
    .param p2, "rowId"    # J

    .prologue
    .line 220
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/genie_connect/common/db/model/Note;->id:Ljava/lang/Long;

    .line 221
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
    check-cast p1, Lcom/genie_connect/common/db/model/Note;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/NoteDao;->updateKeyAfterInsert(Lcom/genie_connect/common/db/model/Note;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
