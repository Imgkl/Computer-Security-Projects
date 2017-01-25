.class public Lcom/genie_connect/android/db/access/gen/dao/MessageDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "MessageDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/genie_connect/common/db/model/Message;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "messages"


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
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/Message;)V
    .locals 38
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/Message;

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 36
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->liveStatus:Ljava/lang/Long;

    move-object/from16 v21, v0

    .line 37
    .local v21, "liveStatus":Ljava/lang/Long;
    if-eqz v21, :cond_0

    .line 38
    const/16 v35, 0x1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 41
    :cond_0
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/genie_connect/common/db/model/Message;->body:Ljava/lang/String;

    .line 42
    .local v9, "body":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 43
    const/16 v35, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    :cond_1
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/genie_connect/common/db/model/Message;->bodyHtml:Ljava/lang/String;

    .line 47
    .local v10, "bodyHtml":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 48
    const/16 v35, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->modifiedBy:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 52
    .local v22, "modifiedBy":Ljava/lang/String;
    if-eqz v22, :cond_3

    .line 53
    const/16 v35, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 56
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->subject:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 57
    .local v30, "subject":Ljava/lang/String;
    if-eqz v30, :cond_4

    .line 58
    const/16 v35, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 61
    :cond_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->noChildren:Ljava/lang/Long;

    move-object/from16 v24, v0

    .line 62
    .local v24, "noChildren":Ljava/lang/Long;
    if-eqz v24, :cond_5

    .line 63
    const/16 v35, 0x6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 66
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->type:Ljava/lang/Long;

    move-object/from16 v34, v0

    .line 67
    .local v34, "type":Ljava/lang/Long;
    if-eqz v34, :cond_6

    .line 68
    const/16 v35, 0x7

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 71
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->recipient:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 72
    .local v26, "recipient":Ljava/lang/String;
    if-eqz v26, :cond_7

    .line 73
    const/16 v35, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 76
    :cond_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->scheduledDate:Ljava/util/Date;

    move-object/from16 v27, v0

    .line 77
    .local v27, "scheduledDate":Ljava/util/Date;
    if-eqz v27, :cond_8

    .line 78
    const/16 v35, 0x9

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 81
    :cond_8
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/genie_connect/common/db/model/Message;->id:Ljava/lang/Long;

    .line 82
    .local v15, "id":Ljava/lang/Long;
    if-eqz v15, :cond_9

    .line 83
    const/16 v35, 0xa

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 86
    :cond_9
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->timestamp:Ljava/util/Date;

    move-object/from16 v31, v0

    .line 87
    .local v31, "timestamp":Ljava/util/Date;
    if-eqz v31, :cond_a

    .line 88
    const/16 v35, 0xb

    invoke-virtual/range {v31 .. v31}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 91
    :cond_a
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/genie_connect/common/db/model/Message;->author:Ljava/lang/String;

    .line 92
    .local v8, "author":Ljava/lang/String;
    if-eqz v8, :cond_b

    .line 93
    const/16 v35, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 96
    :cond_b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->isRootParent:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    .line 97
    .local v20, "isRootParent":Ljava/lang/Boolean;
    if-eqz v20, :cond_c

    .line 98
    const/16 v35, 0xd

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_1f

    const-wide/16 v36, 0x1

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 101
    :cond_c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->scheduledLiveStatus:Ljava/lang/Long;

    move-object/from16 v28, v0

    .line 102
    .local v28, "scheduledLiveStatus":Ljava/lang/Long;
    if-eqz v28, :cond_d

    .line 103
    const/16 v35, 0xe

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 106
    :cond_d
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/genie_connect/common/db/model/Message;->_id:Ljava/lang/String;

    .line 107
    .local v5, "_id":Ljava/lang/String;
    if-eqz v5, :cond_e

    .line 108
    const/16 v35, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 111
    :cond_e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->importBatch:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 112
    .local v16, "importBatch":Ljava/lang/String;
    if-eqz v16, :cond_f

    .line 113
    const/16 v35, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 116
    :cond_f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->toVisitor:Ljava/lang/Long;

    move-object/from16 v33, v0

    .line 117
    .local v33, "toVisitor":Ljava/lang/Long;
    if-eqz v33, :cond_10

    .line 118
    const/16 v35, 0x11

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 121
    :cond_10
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/genie_connect/common/db/model/Message;->fromExhibitor:Ljava/lang/Long;

    .line 122
    .local v13, "fromExhibitor":Ljava/lang/Long;
    if-eqz v13, :cond_11

    .line 123
    const/16 v35, 0x12

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 126
    :cond_11
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/genie_connect/common/db/model/Message;->createdDate:Ljava/util/Date;

    .line 127
    .local v12, "createdDate":Ljava/util/Date;
    if-eqz v12, :cond_12

    .line 128
    const/16 v35, 0x13

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 131
    :cond_12
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->scheduledTaskName:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 132
    .local v29, "scheduledTaskName":Ljava/lang/String;
    if-eqz v29, :cond_13

    .line 133
    const/16 v35, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 136
    :cond_13
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->toExhibitor:Ljava/lang/Long;

    move-object/from16 v32, v0

    .line 137
    .local v32, "toExhibitor":Ljava/lang/Long;
    if-eqz v32, :cond_14

    .line 138
    const/16 v35, 0x15

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 141
    :cond_14
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->parent:Ljava/lang/Long;

    move-object/from16 v25, v0

    .line 142
    .local v25, "parent":Ljava/lang/Long;
    if-eqz v25, :cond_15

    .line 143
    const/16 v35, 0x16

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    :cond_15
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->importCameFrom:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 147
    .local v17, "importCameFrom":Ljava/lang/String;
    if-eqz v17, :cond_16

    .line 148
    const/16 v35, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 151
    :cond_16
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->modifiedDate:Ljava/util/Date;

    move-object/from16 v23, v0

    .line 152
    .local v23, "modifiedDate":Ljava/util/Date;
    if-eqz v23, :cond_17

    .line 153
    const/16 v35, 0x18

    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 156
    :cond_17
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/genie_connect/common/db/model/Message;->associatedMeeting:Ljava/lang/Long;

    .line 157
    .local v7, "associatedMeeting":Ljava/lang/Long;
    if-eqz v7, :cond_18

    .line 158
    const/16 v35, 0x19

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 161
    :cond_18
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/genie_connect/common/db/model/Message;->createdBy:Ljava/lang/String;

    .line 162
    .local v11, "createdBy":Ljava/lang/String;
    if-eqz v11, :cond_19

    .line 163
    const/16 v35, 0x1a

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 166
    :cond_19
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/genie_connect/common/db/model/Message;->fromVisitor:Ljava/lang/Long;

    .line 167
    .local v14, "fromVisitor":Ljava/lang/Long;
    if-eqz v14, :cond_1a

    .line 168
    const/16 v35, 0x1b

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 171
    :cond_1a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->importKey:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 172
    .local v18, "importKey":Ljava/lang/String;
    if-eqz v18, :cond_1b

    .line 173
    const/16 v35, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v35

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 176
    :cond_1b
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/genie_connect/common/db/model/Message;->_namespace:Ljava/lang/String;

    .line 177
    .local v6, "_namespace":Ljava/lang/String;
    if-eqz v6, :cond_1c

    .line 178
    const/16 v35, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 181
    :cond_1c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Message;->isRead:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    .line 182
    .local v19, "isRead":Ljava/lang/Boolean;
    if-eqz v19, :cond_1d

    .line 183
    const/16 v35, 0x1e

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v36

    if-eqz v36, :cond_20

    const-wide/16 v36, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v35

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 186
    :cond_1d
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/genie_connect/common/db/model/Message;->_dataversion:Ljava/lang/String;

    .line 187
    .local v4, "_dataversion":Ljava/lang/String;
    if-eqz v4, :cond_1e

    .line 188
    const/16 v35, 0x1f

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 190
    :cond_1e
    return-void

    .line 98
    .end local v4    # "_dataversion":Ljava/lang/String;
    .end local v5    # "_id":Ljava/lang/String;
    .end local v6    # "_namespace":Ljava/lang/String;
    .end local v7    # "associatedMeeting":Ljava/lang/Long;
    .end local v11    # "createdBy":Ljava/lang/String;
    .end local v12    # "createdDate":Ljava/util/Date;
    .end local v13    # "fromExhibitor":Ljava/lang/Long;
    .end local v14    # "fromVisitor":Ljava/lang/Long;
    .end local v16    # "importBatch":Ljava/lang/String;
    .end local v17    # "importCameFrom":Ljava/lang/String;
    .end local v18    # "importKey":Ljava/lang/String;
    .end local v19    # "isRead":Ljava/lang/Boolean;
    .end local v23    # "modifiedDate":Ljava/util/Date;
    .end local v25    # "parent":Ljava/lang/Long;
    .end local v28    # "scheduledLiveStatus":Ljava/lang/Long;
    .end local v29    # "scheduledTaskName":Ljava/lang/String;
    .end local v32    # "toExhibitor":Ljava/lang/Long;
    .end local v33    # "toVisitor":Ljava/lang/Long;
    :cond_1f
    const-wide/16 v36, 0x0

    goto/16 :goto_0

    .line 183
    .restart local v5    # "_id":Ljava/lang/String;
    .restart local v6    # "_namespace":Ljava/lang/String;
    .restart local v7    # "associatedMeeting":Ljava/lang/Long;
    .restart local v11    # "createdBy":Ljava/lang/String;
    .restart local v12    # "createdDate":Ljava/util/Date;
    .restart local v13    # "fromExhibitor":Ljava/lang/Long;
    .restart local v14    # "fromVisitor":Ljava/lang/Long;
    .restart local v16    # "importBatch":Ljava/lang/String;
    .restart local v17    # "importCameFrom":Ljava/lang/String;
    .restart local v18    # "importKey":Ljava/lang/String;
    .restart local v19    # "isRead":Ljava/lang/Boolean;
    .restart local v23    # "modifiedDate":Ljava/util/Date;
    .restart local v25    # "parent":Ljava/lang/Long;
    .restart local v28    # "scheduledLiveStatus":Ljava/lang/Long;
    .restart local v29    # "scheduledTaskName":Ljava/lang/String;
    .restart local v32    # "toExhibitor":Ljava/lang/Long;
    .restart local v33    # "toVisitor":Ljava/lang/Long;
    :cond_20
    const-wide/16 v36, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/Message;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/Message;)V

    return-void
.end method

.method public getKey(Lcom/genie_connect/common/db/model/Message;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/Message;

    .prologue
    .line 283
    if-eqz p1, :cond_0

    .line 284
    iget-object v0, p1, Lcom/genie_connect/common/db/model/Message;->id:Ljava/lang/Long;

    .line 286
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
    check-cast p1, Lcom/genie_connect/common/db/model/Message;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->getKey(Lcom/genie_connect/common/db/model/Message;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/Message;
    .locals 34
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 201
    new-instance v2, Lcom/genie_connect/common/db/model/Message;

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

    if-eqz v16, :cond_e

    const/16 v16, 0x0

    :goto_d
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_f

    const/16 v17, 0x0

    :goto_e
    add-int/lit8 v18, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_10

    const/16 v18, 0x0

    :goto_f
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v19, 0x0

    :goto_10
    add-int/lit8 v20, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_12

    const/16 v20, 0x0

    :goto_11
    add-int/lit8 v21, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_13

    const/16 v21, 0x0

    :goto_12
    add-int/lit8 v22, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_14

    const/16 v22, 0x0

    :goto_13
    add-int/lit8 v23, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_15

    const/16 v23, 0x0

    :goto_14
    add-int/lit8 v24, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_16

    const/16 v24, 0x0

    :goto_15
    add-int/lit8 v25, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_17

    const/16 v25, 0x0

    :goto_16
    add-int/lit8 v26, p2, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_18

    const/16 v26, 0x0

    :goto_17
    add-int/lit8 v27, p2, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_19

    const/16 v27, 0x0

    :goto_18
    add-int/lit8 v28, p2, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1a

    const/16 v28, 0x0

    :goto_19
    add-int/lit8 v29, p2, 0x1a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_1b

    const/16 v29, 0x0

    :goto_1a
    add-int/lit8 v30, p2, 0x1b

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_1c

    const/16 v30, 0x0

    :goto_1b
    add-int/lit8 v31, p2, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_1d

    const/16 v31, 0x0

    :goto_1c
    add-int/lit8 v32, p2, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_1e

    const/16 v32, 0x0

    :goto_1d
    add-int/lit8 v33, p2, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_20

    const/16 v33, 0x0

    :goto_1e
    invoke-direct/range {v2 .. v33}, Lcom/genie_connect/common/db/model/Message;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 234
    .local v2, "entity":Lcom/genie_connect/common/db/model/Message;
    return-object v2

    .line 201
    .end local v2    # "entity":Lcom/genie_connect/common/db/model/Message;
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

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

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

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    :cond_4
    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

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

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

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

    invoke-virtual {v0, v13}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    goto/16 :goto_a

    :cond_b
    add-int/lit8 v14, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_b

    :cond_c
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getShort(I)S

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    :goto_1f
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto/16 :goto_c

    :cond_d
    const/4 v15, 0x0

    goto :goto_1f

    :cond_e
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    goto/16 :goto_d

    :cond_f
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_e

    :cond_10
    add-int/lit8 v18, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_f

    :cond_11
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    goto/16 :goto_10

    :cond_12
    add-int/lit8 v20, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    goto/16 :goto_11

    :cond_13
    add-int/lit8 v21, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v21

    goto/16 :goto_12

    :cond_14
    add-int/lit8 v22, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_13

    :cond_15
    add-int/lit8 v23, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    goto/16 :goto_14

    :cond_16
    add-int/lit8 v24, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    goto/16 :goto_15

    :cond_17
    add-int/lit8 v25, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_16

    :cond_18
    add-int/lit8 v26, p2, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    goto/16 :goto_17

    :cond_19
    add-int/lit8 v27, p2, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    goto/16 :goto_18

    :cond_1a
    add-int/lit8 v28, p2, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_19

    :cond_1b
    add-int/lit8 v29, p2, 0x1a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    goto/16 :goto_1a

    :cond_1c
    add-int/lit8 v30, p2, 0x1b

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_1b

    :cond_1d
    add-int/lit8 v31, p2, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1c

    :cond_1e
    add-int/lit8 v32, p2, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v32

    if-eqz v32, :cond_1f

    const/16 v32, 0x1

    :goto_20
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_1d

    :cond_1f
    const/16 v32, 0x0

    goto :goto_20

    :cond_20
    add-int/lit8 v33, p2, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_1e
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/Message;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/Message;I)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/Message;
    .param p3, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 240
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->liveStatus:Ljava/lang/Long;

    .line 241
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->body:Ljava/lang/String;

    .line 242
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->bodyHtml:Ljava/lang/String;

    .line 243
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->modifiedBy:Ljava/lang/String;

    .line 244
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->subject:Ljava/lang/String;

    .line 245
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_5
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->noChildren:Ljava/lang/Long;

    .line 246
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_6
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->type:Ljava/lang/Long;

    .line 247
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_7
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->recipient:Ljava/lang/String;

    .line 248
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_8
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->scheduledDate:Ljava/util/Date;

    .line 249
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_9
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->id:Ljava/lang/Long;

    .line 250
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->timestamp:Ljava/util/Date;

    .line 251
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    :goto_b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->author:Ljava/lang/String;

    .line 252
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v1

    :goto_c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->isRootParent:Ljava/lang/Boolean;

    .line 253
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v1

    :goto_d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->scheduledLiveStatus:Ljava/lang/Long;

    .line 254
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v1

    :goto_e
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->_id:Ljava/lang/String;

    .line 255
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v1

    :goto_f
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->importBatch:Ljava/lang/String;

    .line 256
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v1

    :goto_10
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->toVisitor:Ljava/lang/Long;

    .line 257
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v1

    :goto_11
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->fromExhibitor:Ljava/lang/Long;

    .line 258
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, v1

    :goto_12
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->createdDate:Ljava/util/Date;

    .line 259
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v1

    :goto_13
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->scheduledTaskName:Ljava/lang/String;

    .line 260
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, v1

    :goto_14
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->toExhibitor:Ljava/lang/Long;

    .line 261
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, v1

    :goto_15
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->parent:Ljava/lang/Long;

    .line 262
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v1

    :goto_16
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->importCameFrom:Ljava/lang/String;

    .line 263
    add-int/lit8 v0, p3, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object v0, v1

    :goto_17
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->modifiedDate:Ljava/util/Date;

    .line 264
    add-int/lit8 v0, p3, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_19

    move-object v0, v1

    :goto_18
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->associatedMeeting:Ljava/lang/Long;

    .line 265
    add-int/lit8 v0, p3, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object v0, v1

    :goto_19
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->createdBy:Ljava/lang/String;

    .line 266
    add-int/lit8 v0, p3, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object v0, v1

    :goto_1a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->fromVisitor:Ljava/lang/Long;

    .line 267
    add-int/lit8 v0, p3, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object v0, v1

    :goto_1b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->importKey:Ljava/lang/String;

    .line 268
    add-int/lit8 v0, p3, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    move-object v0, v1

    :goto_1c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->_namespace:Ljava/lang/String;

    .line 269
    add-int/lit8 v0, p3, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v0, v1

    :goto_1d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Message;->isRead:Ljava/lang/Boolean;

    .line 270
    add-int/lit8 v0, p3, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_20

    :goto_1e
    iput-object v1, p2, Lcom/genie_connect/common/db/model/Message;->_dataversion:Ljava/lang/String;

    .line 271
    return-void

    .line 240
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 241
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 242
    :cond_2
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 243
    :cond_3
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 244
    :cond_4
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 245
    :cond_5
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_5

    .line 246
    :cond_6
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_6

    .line 247
    :cond_7
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 248
    :cond_8
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_8

    .line 249
    :cond_9
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_9

    .line 250
    :cond_a
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_a

    .line 251
    :cond_b
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 252
    :cond_c
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    :goto_1f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_c

    :cond_d
    move v0, v3

    goto :goto_1f

    .line 253
    :cond_e
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_d

    .line 254
    :cond_f
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_e

    .line 255
    :cond_10
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    .line 256
    :cond_11
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_10

    .line 257
    :cond_12
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_11

    .line 258
    :cond_13
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_12

    .line 259
    :cond_14
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 260
    :cond_15
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_14

    .line 261
    :cond_16
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_15

    .line 262
    :cond_17
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    .line 263
    :cond_18
    add-int/lit8 v0, p3, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_17

    .line 264
    :cond_19
    add-int/lit8 v0, p3, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_18

    .line 265
    :cond_1a
    add-int/lit8 v0, p3, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_19

    .line 266
    :cond_1b
    add-int/lit8 v0, p3, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_1a

    .line 267
    :cond_1c
    add-int/lit8 v0, p3, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b

    .line 268
    :cond_1d
    add-int/lit8 v0, p3, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    .line 269
    :cond_1e
    add-int/lit8 v0, p3, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_1f

    :goto_20
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1d

    :cond_1f
    move v2, v3

    goto :goto_20

    .line 270
    :cond_20
    add-int/lit8 v0, p3, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1e
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/Message;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/Message;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 195
    add-int/lit8 v0, p2, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x9

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
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/genie_connect/common/db/model/Message;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/Message;
    .param p2, "rowId"    # J

    .prologue
    .line 276
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/genie_connect/common/db/model/Message;->id:Ljava/lang/Long;

    .line 277
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
    check-cast p1, Lcom/genie_connect/common/db/model/Message;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/MessageDao;->updateKeyAfterInsert(Lcom/genie_connect/common/db/model/Message;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
