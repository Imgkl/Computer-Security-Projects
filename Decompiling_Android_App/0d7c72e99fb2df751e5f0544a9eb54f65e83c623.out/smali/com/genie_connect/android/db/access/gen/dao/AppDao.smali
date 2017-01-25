.class public Lcom/genie_connect/android/db/access/gen/dao/AppDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "AppDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/genie_connect/common/db/model/App;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "apps"


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
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/App;)V
    .locals 44
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/App;

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 36
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/genie_connect/common/db/model/App;->client:Ljava/lang/Long;

    .line 37
    .local v10, "client":Ljava/lang/Long;
    if-eqz v10, :cond_0

    .line 38
    const/16 v40, 0x1

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 41
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->modifiedBy:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 42
    .local v30, "modifiedBy":Ljava/lang/String;
    if-eqz v30, :cond_1

    .line 43
    const/16 v40, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    :cond_1
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/genie_connect/common/db/model/App;->iconUrl:Ljava/lang/String;

    .line 47
    .local v15, "iconUrl":Ljava/lang/String;
    if-eqz v15, :cond_2

    .line 48
    const/16 v40, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1, v15}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->locale:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 52
    .local v29, "locale":Ljava/lang/String;
    if-eqz v29, :cond_3

    .line 53
    const/16 v40, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 56
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->id:Ljava/lang/Long;

    move-object/from16 v16, v0

    .line 57
    .local v16, "id":Ljava/lang/Long;
    if-eqz v16, :cond_4

    .line 58
    const/16 v40, 0x5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 61
    :cond_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->liveVersion:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 62
    .local v28, "liveVersion":Ljava/lang/String;
    if-eqz v28, :cond_5

    .line 63
    const/16 v40, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 66
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->servingUrl:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 67
    .local v35, "servingUrl":Ljava/lang/String;
    if-eqz v35, :cond_6

    .line 68
    const/16 v40, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 71
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->title:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 72
    .local v38, "title":Ljava/lang/String;
    if-eqz v38, :cond_7

    .line 73
    const/16 v40, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 76
    :cond_7
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/genie_connect/common/db/model/App;->fullDescription:Ljava/lang/String;

    .line 77
    .local v14, "fullDescription":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 78
    const/16 v40, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1, v14}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 81
    :cond_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->stagingVersion:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 82
    .local v37, "stagingVersion":Ljava/lang/String;
    if-eqz v37, :cond_9

    .line 83
    const/16 v40, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 86
    :cond_9
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/genie_connect/common/db/model/App;->_id:Ljava/lang/String;

    .line 87
    .local v5, "_id":Ljava/lang/String;
    if-eqz v5, :cond_a

    .line 88
    const/16 v40, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->importBatch:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 92
    .local v17, "importBatch":Ljava/lang/String;
    if-eqz v17, :cond_b

    .line 93
    const/16 v40, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 96
    :cond_b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 97
    .local v32, "name":Ljava/lang/String;
    if-eqz v32, :cond_c

    .line 98
    const/16 v40, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 101
    :cond_c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->integrationXSLs:Ljava/lang/Long;

    move-object/from16 v21, v0

    .line 102
    .local v21, "integrationXSLs":Ljava/lang/Long;
    if-eqz v21, :cond_d

    .line 103
    const/16 v40, 0xe

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 106
    :cond_d
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/genie_connect/common/db/model/App;->createdDate:Ljava/util/Date;

    .line 107
    .local v12, "createdDate":Ljava/util/Date;
    if-eqz v12, :cond_e

    .line 108
    const/16 v40, 0xf

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v42

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 111
    :cond_e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->incrementNotificationBadgeCounts:Ljava/lang/Boolean;

    move-object/from16 v20, v0

    .line 112
    .local v20, "incrementNotificationBadgeCounts":Ljava/lang/Boolean;
    if-eqz v20, :cond_f

    .line 113
    const/16 v42, 0x10

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    if-eqz v40, :cond_24

    const-wide/16 v40, 0x1

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v42

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 116
    :cond_f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->lastProcessedUUIDs:Ljava/util/Date;

    move-object/from16 v26, v0

    .line 117
    .local v26, "lastProcessedUUIDs":Ljava/util/Date;
    if-eqz v26, :cond_10

    .line 118
    const/16 v40, 0x11

    invoke-virtual/range {v26 .. v26}, Ljava/util/Date;->getTime()J

    move-result-wide v42

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 121
    :cond_10
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->requiresInterestsRecompilation:Ljava/lang/Boolean;

    move-object/from16 v34, v0

    .line 122
    .local v34, "requiresInterestsRecompilation":Ljava/lang/Boolean;
    if-eqz v34, :cond_11

    .line 123
    const/16 v42, 0x12

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    if-eqz v40, :cond_25

    const-wide/16 v40, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v42

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 126
    :cond_11
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/genie_connect/common/db/model/App;->appProcessStopDate:Ljava/util/Date;

    .line 127
    .local v9, "appProcessStopDate":Ljava/util/Date;
    if-eqz v9, :cond_12

    .line 128
    const/16 v40, 0x13

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v42

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 131
    :cond_12
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/genie_connect/common/db/model/App;->appProcessAnalytics:Ljava/lang/Boolean;

    .line 132
    .local v7, "appProcessAnalytics":Ljava/lang/Boolean;
    if-eqz v7, :cond_13

    .line 133
    const/16 v42, 0x14

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    if-eqz v40, :cond_26

    const-wide/16 v40, 0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v42

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 136
    :cond_13
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->importCameFrom:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 137
    .local v18, "importCameFrom":Ljava/lang/String;
    if-eqz v18, :cond_14

    .line 138
    const/16 v40, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 141
    :cond_14
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->isArchived:Ljava/lang/Boolean;

    move-object/from16 v22, v0

    .line 142
    .local v22, "isArchived":Ljava/lang/Boolean;
    if-eqz v22, :cond_15

    .line 143
    const/16 v42, 0x16

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    if-eqz v40, :cond_27

    const-wide/16 v40, 0x1

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v42

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    :cond_15
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/genie_connect/common/db/model/App;->appProcessStartDate:Ljava/util/Date;

    .line 147
    .local v8, "appProcessStartDate":Ljava/util/Date;
    if-eqz v8, :cond_16

    .line 148
    const/16 v40, 0x17

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v42

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 151
    :cond_16
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->modifiedDate:Ljava/util/Date;

    move-object/from16 v31, v0

    .line 152
    .local v31, "modifiedDate":Ljava/util/Date;
    if-eqz v31, :cond_17

    .line 153
    const/16 v40, 0x18

    invoke-virtual/range {v31 .. v31}, Ljava/util/Date;->getTime()J

    move-result-wide v42

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 156
    :cond_17
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/genie_connect/common/db/model/App;->dashboardAllowed:Ljava/lang/Boolean;

    .line 157
    .local v13, "dashboardAllowed":Ljava/lang/Boolean;
    if-eqz v13, :cond_18

    .line 158
    const/16 v42, 0x19

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    if-eqz v40, :cond_28

    const-wide/16 v40, 0x1

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v42

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 161
    :cond_18
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->lastProcessedVisitors:Ljava/util/Date;

    move-object/from16 v27, v0

    .line 162
    .local v27, "lastProcessedVisitors":Ljava/util/Date;
    if-eqz v27, :cond_19

    .line 163
    const/16 v40, 0x1a

    invoke-virtual/range {v27 .. v27}, Ljava/util/Date;->getTime()J

    move-result-wide v42

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 166
    :cond_19
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->requiresActivityRecompilation:Ljava/lang/Boolean;

    move-object/from16 v33, v0

    .line 167
    .local v33, "requiresActivityRecompilation":Ljava/lang/Boolean;
    if-eqz v33, :cond_1a

    .line 168
    const/16 v42, 0x1b

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    if-eqz v40, :cond_29

    const-wide/16 v40, 0x1

    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v42

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 171
    :cond_1a
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/genie_connect/common/db/model/App;->createdBy:Ljava/lang/String;

    .line 172
    .local v11, "createdBy":Ljava/lang/String;
    if-eqz v11, :cond_1b

    .line 173
    const/16 v40, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 176
    :cond_1b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->lastProcessedActivities:Ljava/util/Date;

    move-object/from16 v24, v0

    .line 177
    .local v24, "lastProcessedActivities":Ljava/util/Date;
    if-eqz v24, :cond_1c

    .line 178
    const/16 v40, 0x1d

    invoke-virtual/range {v24 .. v24}, Ljava/util/Date;->getTime()J

    move-result-wide v42

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 181
    :cond_1c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->isTemplate:Ljava/lang/Boolean;

    move-object/from16 v23, v0

    .line 182
    .local v23, "isTemplate":Ljava/lang/Boolean;
    if-eqz v23, :cond_1d

    .line 183
    const/16 v42, 0x1e

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    if-eqz v40, :cond_2a

    const-wide/16 v40, 0x1

    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v42

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 186
    :cond_1d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->shortName:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 187
    .local v36, "shortName":Ljava/lang/String;
    if-eqz v36, :cond_1e

    .line 188
    const/16 v40, 0x1f

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 191
    :cond_1e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->lastProcessedInterests:Ljava/util/Date;

    move-object/from16 v25, v0

    .line 192
    .local v25, "lastProcessedInterests":Ljava/util/Date;
    if-eqz v25, :cond_1f

    .line 193
    const/16 v40, 0x20

    invoke-virtual/range {v25 .. v25}, Ljava/util/Date;->getTime()J

    move-result-wide v42

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-wide/from16 v2, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 196
    :cond_1f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->visitorDataNamespace:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 197
    .local v39, "visitorDataNamespace":Ljava/lang/String;
    if-eqz v39, :cond_20

    .line 198
    const/16 v40, 0x21

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 201
    :cond_20
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/App;->importKey:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 202
    .local v19, "importKey":Ljava/lang/String;
    if-eqz v19, :cond_21

    .line 203
    const/16 v40, 0x22

    move-object/from16 v0, p1

    move/from16 v1, v40

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 206
    :cond_21
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/genie_connect/common/db/model/App;->_namespace:Ljava/lang/String;

    .line 207
    .local v6, "_namespace":Ljava/lang/String;
    if-eqz v6, :cond_22

    .line 208
    const/16 v40, 0x23

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 211
    :cond_22
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/genie_connect/common/db/model/App;->_dataversion:Ljava/lang/String;

    .line 212
    .local v4, "_dataversion":Ljava/lang/String;
    if-eqz v4, :cond_23

    .line 213
    const/16 v40, 0x24

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 215
    :cond_23
    return-void

    .line 113
    .end local v4    # "_dataversion":Ljava/lang/String;
    .end local v6    # "_namespace":Ljava/lang/String;
    .end local v7    # "appProcessAnalytics":Ljava/lang/Boolean;
    .end local v8    # "appProcessStartDate":Ljava/util/Date;
    .end local v9    # "appProcessStopDate":Ljava/util/Date;
    .end local v11    # "createdBy":Ljava/lang/String;
    .end local v13    # "dashboardAllowed":Ljava/lang/Boolean;
    .end local v18    # "importCameFrom":Ljava/lang/String;
    .end local v19    # "importKey":Ljava/lang/String;
    .end local v22    # "isArchived":Ljava/lang/Boolean;
    .end local v23    # "isTemplate":Ljava/lang/Boolean;
    .end local v24    # "lastProcessedActivities":Ljava/util/Date;
    .end local v25    # "lastProcessedInterests":Ljava/util/Date;
    .end local v26    # "lastProcessedUUIDs":Ljava/util/Date;
    .end local v27    # "lastProcessedVisitors":Ljava/util/Date;
    .end local v31    # "modifiedDate":Ljava/util/Date;
    .end local v33    # "requiresActivityRecompilation":Ljava/lang/Boolean;
    .end local v34    # "requiresInterestsRecompilation":Ljava/lang/Boolean;
    .end local v36    # "shortName":Ljava/lang/String;
    .end local v39    # "visitorDataNamespace":Ljava/lang/String;
    :cond_24
    const-wide/16 v40, 0x0

    goto/16 :goto_0

    .line 123
    .restart local v26    # "lastProcessedUUIDs":Ljava/util/Date;
    .restart local v34    # "requiresInterestsRecompilation":Ljava/lang/Boolean;
    :cond_25
    const-wide/16 v40, 0x0

    goto/16 :goto_1

    .line 133
    .restart local v7    # "appProcessAnalytics":Ljava/lang/Boolean;
    .restart local v9    # "appProcessStopDate":Ljava/util/Date;
    :cond_26
    const-wide/16 v40, 0x0

    goto/16 :goto_2

    .line 143
    .restart local v18    # "importCameFrom":Ljava/lang/String;
    .restart local v22    # "isArchived":Ljava/lang/Boolean;
    :cond_27
    const-wide/16 v40, 0x0

    goto/16 :goto_3

    .line 158
    .restart local v8    # "appProcessStartDate":Ljava/util/Date;
    .restart local v13    # "dashboardAllowed":Ljava/lang/Boolean;
    .restart local v31    # "modifiedDate":Ljava/util/Date;
    :cond_28
    const-wide/16 v40, 0x0

    goto/16 :goto_4

    .line 168
    .restart local v27    # "lastProcessedVisitors":Ljava/util/Date;
    .restart local v33    # "requiresActivityRecompilation":Ljava/lang/Boolean;
    :cond_29
    const-wide/16 v40, 0x0

    goto/16 :goto_5

    .line 183
    .restart local v11    # "createdBy":Ljava/lang/String;
    .restart local v23    # "isTemplate":Ljava/lang/Boolean;
    .restart local v24    # "lastProcessedActivities":Ljava/util/Date;
    :cond_2a
    const-wide/16 v40, 0x0

    goto/16 :goto_6
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/App;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/App;)V

    return-void
.end method

.method public getKey(Lcom/genie_connect/common/db/model/App;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/App;

    .prologue
    .line 318
    if-eqz p1, :cond_0

    .line 319
    iget-object v0, p1, Lcom/genie_connect/common/db/model/App;->id:Ljava/lang/Long;

    .line 321
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
    check-cast p1, Lcom/genie_connect/common/db/model/App;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getKey(Lcom/genie_connect/common/db/model/App;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/App;
    .locals 39
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 226
    new-instance v2, Lcom/genie_connect/common/db/model/App;

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

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    :goto_12
    add-int/lit8 v22, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    :goto_13
    add-int/lit8 v23, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_17

    const/16 v23, 0x0

    :goto_14
    add-int/lit8 v24, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_18

    const/16 v24, 0x0

    :goto_15
    add-int/lit8 v25, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1a

    const/16 v25, 0x0

    :goto_16
    add-int/lit8 v26, p2, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1b

    const/16 v26, 0x0

    :goto_17
    add-int/lit8 v27, p2, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_1c

    const/16 v27, 0x0

    :goto_18
    add-int/lit8 v28, p2, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1e

    const/16 v28, 0x0

    :goto_19
    add-int/lit8 v29, p2, 0x1a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_1f

    const/16 v29, 0x0

    :goto_1a
    add-int/lit8 v30, p2, 0x1b

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_21

    const/16 v30, 0x0

    :goto_1b
    add-int/lit8 v31, p2, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_22

    const/16 v31, 0x0

    :goto_1c
    add-int/lit8 v32, p2, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_23

    const/16 v32, 0x0

    :goto_1d
    add-int/lit8 v33, p2, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_25

    const/16 v33, 0x0

    :goto_1e
    add-int/lit8 v34, p2, 0x1f

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_26

    const/16 v34, 0x0

    :goto_1f
    add-int/lit8 v35, p2, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_27

    const/16 v35, 0x0

    :goto_20
    add-int/lit8 v36, p2, 0x21

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_28

    const/16 v36, 0x0

    :goto_21
    add-int/lit8 v37, p2, 0x22

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_29

    const/16 v37, 0x0

    :goto_22
    add-int/lit8 v38, p2, 0x23

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_2a

    const/16 v38, 0x0

    :goto_23
    invoke-direct/range {v2 .. v38}, Lcom/genie_connect/common/db/model/App;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/util/Date;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .local v2, "entity":Lcom/genie_connect/common/db/model/App;
    return-object v2

    .line 226
    .end local v2    # "entity":Lcom/genie_connect/common/db/model/App;
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

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto/16 :goto_4

    :cond_5
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

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

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_8

    :cond_9
    add-int/lit8 v12, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_9

    :cond_a
    add-int/lit8 v13, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

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

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_c

    :cond_d
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    goto/16 :goto_d

    :cond_e
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v17

    goto/16 :goto_e

    :cond_f
    add-int/lit8 v18, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v18

    if-eqz v18, :cond_10

    const/16 v18, 0x1

    :goto_24
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    goto/16 :goto_f

    :cond_10
    const/16 v18, 0x0

    goto :goto_24

    :cond_11
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    goto/16 :goto_10

    :cond_12
    add-int/lit8 v20, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v20

    if-eqz v20, :cond_13

    const/16 v20, 0x1

    :goto_25
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    goto/16 :goto_11

    :cond_13
    const/16 v20, 0x0

    goto :goto_25

    :cond_14
    add-int/lit8 v21, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v21

    goto/16 :goto_12

    :cond_15
    add-int/lit8 v22, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v22

    if-eqz v22, :cond_16

    const/16 v22, 0x1

    :goto_26
    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    goto/16 :goto_13

    :cond_16
    const/16 v22, 0x0

    goto :goto_26

    :cond_17
    add-int/lit8 v23, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_14

    :cond_18
    add-int/lit8 v24, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v24

    if-eqz v24, :cond_19

    const/16 v24, 0x1

    :goto_27
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    goto/16 :goto_15

    :cond_19
    const/16 v24, 0x0

    goto :goto_27

    :cond_1a
    add-int/lit8 v25, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v25

    goto/16 :goto_16

    :cond_1b
    add-int/lit8 v26, p2, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v26

    goto/16 :goto_17

    :cond_1c
    add-int/lit8 v27, p2, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v27

    if-eqz v27, :cond_1d

    const/16 v27, 0x1

    :goto_28
    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    goto/16 :goto_18

    :cond_1d
    const/16 v27, 0x0

    goto :goto_28

    :cond_1e
    add-int/lit8 v28, p2, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v28

    goto/16 :goto_19

    :cond_1f
    add-int/lit8 v29, p2, 0x1a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v29

    if-eqz v29, :cond_20

    const/16 v29, 0x1

    :goto_29
    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v29

    goto/16 :goto_1a

    :cond_20
    const/16 v29, 0x0

    goto :goto_29

    :cond_21
    add-int/lit8 v30, p2, 0x1b

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_1b

    :cond_22
    add-int/lit8 v31, p2, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v31

    goto/16 :goto_1c

    :cond_23
    add-int/lit8 v32, p2, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v32

    if-eqz v32, :cond_24

    const/16 v32, 0x1

    :goto_2a
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_1d

    :cond_24
    const/16 v32, 0x0

    goto :goto_2a

    :cond_25
    add-int/lit8 v33, p2, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_1e

    :cond_26
    add-int/lit8 v34, p2, 0x1f

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v34

    goto/16 :goto_1f

    :cond_27
    add-int/lit8 v35, p2, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_20

    :cond_28
    add-int/lit8 v36, p2, 0x21

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_21

    :cond_29
    add-int/lit8 v37, p2, 0x22

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_22

    :cond_2a
    add-int/lit8 v38, p2, 0x23

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_23
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/App;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/App;I)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/App;
    .param p3, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 270
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->client:Ljava/lang/Long;

    .line 271
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->modifiedBy:Ljava/lang/String;

    .line 272
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->iconUrl:Ljava/lang/String;

    .line 273
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->locale:Ljava/lang/String;

    .line 274
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->id:Ljava/lang/Long;

    .line 275
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_5
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->liveVersion:Ljava/lang/String;

    .line 276
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_6
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->servingUrl:Ljava/lang/String;

    .line 277
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_7
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->title:Ljava/lang/String;

    .line 278
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_8
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->fullDescription:Ljava/lang/String;

    .line 279
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_9
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->stagingVersion:Ljava/lang/String;

    .line 280
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->_id:Ljava/lang/String;

    .line 281
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    :goto_b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->importBatch:Ljava/lang/String;

    .line 282
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v1

    :goto_c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->name:Ljava/lang/String;

    .line 283
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v1

    :goto_d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->integrationXSLs:Ljava/lang/Long;

    .line 284
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v1

    :goto_e
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->createdDate:Ljava/util/Date;

    .line 285
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v1

    :goto_f
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->incrementNotificationBadgeCounts:Ljava/lang/Boolean;

    .line 286
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v1

    :goto_10
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->lastProcessedUUIDs:Ljava/util/Date;

    .line 287
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v1

    :goto_11
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->requiresInterestsRecompilation:Ljava/lang/Boolean;

    .line 288
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v1

    :goto_12
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->appProcessStopDate:Ljava/util/Date;

    .line 289
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, v1

    :goto_13
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->appProcessAnalytics:Ljava/lang/Boolean;

    .line 290
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v1

    :goto_14
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->importCameFrom:Ljava/lang/String;

    .line 291
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object v0, v1

    :goto_15
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->isArchived:Ljava/lang/Boolean;

    .line 292
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object v0, v1

    :goto_16
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->appProcessStartDate:Ljava/util/Date;

    .line 293
    add-int/lit8 v0, p3, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object v0, v1

    :goto_17
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->modifiedDate:Ljava/util/Date;

    .line 294
    add-int/lit8 v0, p3, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object v0, v1

    :goto_18
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->dashboardAllowed:Ljava/lang/Boolean;

    .line 295
    add-int/lit8 v0, p3, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v0, v1

    :goto_19
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->lastProcessedVisitors:Ljava/util/Date;

    .line 296
    add-int/lit8 v0, p3, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object v0, v1

    :goto_1a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->requiresActivityRecompilation:Ljava/lang/Boolean;

    .line 297
    add-int/lit8 v0, p3, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_21

    move-object v0, v1

    :goto_1b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->createdBy:Ljava/lang/String;

    .line 298
    add-int/lit8 v0, p3, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_22

    move-object v0, v1

    :goto_1c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->lastProcessedActivities:Ljava/util/Date;

    .line 299
    add-int/lit8 v0, p3, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, v1

    :goto_1d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->isTemplate:Ljava/lang/Boolean;

    .line 300
    add-int/lit8 v0, p3, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_25

    move-object v0, v1

    :goto_1e
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->shortName:Ljava/lang/String;

    .line 301
    add-int/lit8 v0, p3, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_26

    move-object v0, v1

    :goto_1f
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->lastProcessedInterests:Ljava/util/Date;

    .line 302
    add-int/lit8 v0, p3, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_27

    move-object v0, v1

    :goto_20
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->visitorDataNamespace:Ljava/lang/String;

    .line 303
    add-int/lit8 v0, p3, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_28

    move-object v0, v1

    :goto_21
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->importKey:Ljava/lang/String;

    .line 304
    add-int/lit8 v0, p3, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_29

    move-object v0, v1

    :goto_22
    iput-object v0, p2, Lcom/genie_connect/common/db/model/App;->_namespace:Ljava/lang/String;

    .line 305
    add-int/lit8 v0, p3, 0x23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    :goto_23
    iput-object v1, p2, Lcom/genie_connect/common/db/model/App;->_dataversion:Ljava/lang/String;

    .line 306
    return-void

    .line 270
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 271
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 272
    :cond_2
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 273
    :cond_3
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 274
    :cond_4
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_4

    .line 275
    :cond_5
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 276
    :cond_6
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 277
    :cond_7
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 278
    :cond_8
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 279
    :cond_9
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 280
    :cond_a
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 281
    :cond_b
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 282
    :cond_c
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 283
    :cond_d
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_d

    .line 284
    :cond_e
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_e

    .line 285
    :cond_f
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    :goto_24
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_f

    :cond_10
    move v0, v3

    goto :goto_24

    .line 286
    :cond_11
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_10

    .line 287
    :cond_12
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_13

    move v0, v2

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_11

    :cond_13
    move v0, v3

    goto :goto_25

    .line 288
    :cond_14
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_12

    .line 289
    :cond_15
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_16

    move v0, v2

    :goto_26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_13

    :cond_16
    move v0, v3

    goto :goto_26

    .line 290
    :cond_17
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 291
    :cond_18
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_19

    move v0, v2

    :goto_27
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_15

    :cond_19
    move v0, v3

    goto :goto_27

    .line 292
    :cond_1a
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_16

    .line 293
    :cond_1b
    add-int/lit8 v0, p3, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_17

    .line 294
    :cond_1c
    add-int/lit8 v0, p3, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v2

    :goto_28
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_18

    :cond_1d
    move v0, v3

    goto :goto_28

    .line 295
    :cond_1e
    add-int/lit8 v0, p3, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_19

    .line 296
    :cond_1f
    add-int/lit8 v0, p3, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_20

    move v0, v2

    :goto_29
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1a

    :cond_20
    move v0, v3

    goto :goto_29

    .line 297
    :cond_21
    add-int/lit8 v0, p3, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b

    .line 298
    :cond_22
    add-int/lit8 v0, p3, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_1c

    .line 299
    :cond_23
    add-int/lit8 v0, p3, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_24

    :goto_2a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1d

    :cond_24
    move v2, v3

    goto :goto_2a

    .line 300
    :cond_25
    add-int/lit8 v0, p3, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    .line 301
    :cond_26
    add-int/lit8 v0, p3, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_1f

    .line 302
    :cond_27
    add-int/lit8 v0, p3, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_20

    .line 303
    :cond_28
    add-int/lit8 v0, p3, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 304
    :cond_29
    add-int/lit8 v0, p3, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    .line 305
    :cond_2a
    add-int/lit8 v0, p3, 0x23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_23
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/App;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/App;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 220
    add-int/lit8 v0, p2, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x4

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
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/genie_connect/common/db/model/App;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/App;
    .param p2, "rowId"    # J

    .prologue
    .line 311
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/genie_connect/common/db/model/App;->id:Ljava/lang/Long;

    .line 312
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
    check-cast p1, Lcom/genie_connect/common/db/model/App;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/AppDao;->updateKeyAfterInsert(Lcom/genie_connect/common/db/model/App;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
