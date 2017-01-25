.class public Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "VisitorsurveyDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/genie_connect/common/db/model/Visitorsurvey;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "visitorsurveys"


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Lde/greenrobot/dao/internal/DaoConfig;Lcom/genie_connect/android/db/access/gen/dao/DaoSession;)V
    .locals 0
    .param p1, "config"    # Lde/greenrobot/dao/internal/DaoConfig;
    .param p2, "daoSession"    # Lcom/genie_connect/android/db/access/gen/dao/DaoSession;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lde/greenrobot/dao/AbstractDao;-><init>(Lde/greenrobot/dao/internal/DaoConfig;Lde/greenrobot/dao/AbstractDaoSession;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/Visitorsurvey;)V
    .locals 22
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/Visitorsurvey;

    .prologue
    .line 32
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 34
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->id:Ljava/lang/Long;

    .line 35
    .local v9, "id":Ljava/lang/Long;
    if-eqz v9, :cond_0

    .line 36
    const/16 v19, 0x1

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 39
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->visitor:Ljava/lang/Long;

    move-object/from16 v18, v0

    .line 40
    .local v18, "visitor":Ljava/lang/Long;
    if-eqz v18, :cond_1

    .line 41
    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 44
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->survey:Ljava/lang/Long;

    move-object/from16 v17, v0

    .line 45
    .local v17, "survey":Ljava/lang/Long;
    if-eqz v17, :cond_2

    .line 46
    const/16 v19, 0x3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 49
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->submissionStatus:Ljava/lang/Long;

    move-object/from16 v16, v0

    .line 50
    .local v16, "submissionStatus":Ljava/lang/Long;
    if-eqz v16, :cond_3

    .line 51
    const/16 v19, 0x4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 54
    :cond_3
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->submissionDate:Ljava/util/Date;

    .line 55
    .local v15, "submissionDate":Ljava/util/Date;
    if-eqz v15, :cond_4

    .line 56
    const/16 v19, 0x5

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 59
    :cond_4
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->_id:Ljava/lang/String;

    .line 60
    .local v5, "_id":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 61
    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 64
    :cond_5
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->importKey:Ljava/lang/String;

    .line 65
    .local v12, "importKey":Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 66
    const/16 v19, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 69
    :cond_6
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->importCameFrom:Ljava/lang/String;

    .line 70
    .local v11, "importCameFrom":Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 71
    const/16 v19, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 74
    :cond_7
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->importBatch:Ljava/lang/String;

    .line 75
    .local v10, "importBatch":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 76
    const/16 v19, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 79
    :cond_8
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->modifiedBy:Ljava/lang/String;

    .line 80
    .local v13, "modifiedBy":Ljava/lang/String;
    if-eqz v13, :cond_9

    .line 81
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 84
    :cond_9
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->modifiedDate:Ljava/util/Date;

    .line 85
    .local v14, "modifiedDate":Ljava/util/Date;
    if-eqz v14, :cond_a

    .line 86
    const/16 v19, 0xb

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 89
    :cond_a
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->createdBy:Ljava/lang/String;

    .line 90
    .local v7, "createdBy":Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 91
    const/16 v19, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 94
    :cond_b
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->createdDate:Ljava/util/Date;

    .line 95
    .local v8, "createdDate":Ljava/util/Date;
    if-eqz v8, :cond_c

    .line 96
    const/16 v19, 0xd

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    move-object/from16 v0, p1

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 99
    :cond_c
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->_namespace:Ljava/lang/String;

    .line 100
    .local v6, "_namespace":Ljava/lang/String;
    if-eqz v6, :cond_d

    .line 101
    const/16 v19, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 104
    :cond_d
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/genie_connect/common/db/model/Visitorsurvey;->_dataversion:Ljava/lang/String;

    .line 105
    .local v4, "_dataversion":Ljava/lang/String;
    if-eqz v4, :cond_e

    .line 106
    const/16 v19, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    :cond_e
    return-void
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p2, Lcom/genie_connect/common/db/model/Visitorsurvey;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/Visitorsurvey;)V

    return-void
.end method

.method public getKey(Lcom/genie_connect/common/db/model/Visitorsurvey;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/Visitorsurvey;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p1, Lcom/genie_connect/common/db/model/Visitorsurvey;->id:Ljava/lang/Long;

    .line 172
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
    .line 16
    check-cast p1, Lcom/genie_connect/common/db/model/Visitorsurvey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;->getKey(Lcom/genie_connect/common/db/model/Visitorsurvey;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/Visitorsurvey;
    .locals 18
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 119
    new-instance v2, Lcom/genie_connect/common/db/model/Visitorsurvey;

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
    invoke-direct/range {v2 .. v17}, Lcom/genie_connect/common/db/model/Visitorsurvey;-><init>(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .local v2, "entity":Lcom/genie_connect/common/db/model/Visitorsurvey;
    return-object v2

    .line 119
    .end local v2    # "entity":Lcom/genie_connect/common/db/model/Visitorsurvey;
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

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

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

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

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

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

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
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;->readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/Visitorsurvey;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/Visitorsurvey;I)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/Visitorsurvey;
    .param p3, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 142
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->id:Ljava/lang/Long;

    .line 143
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->visitor:Ljava/lang/Long;

    .line 144
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->survey:Ljava/lang/Long;

    .line 145
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->submissionStatus:Ljava/lang/Long;

    .line 146
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->submissionDate:Ljava/util/Date;

    .line 147
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_5
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->_id:Ljava/lang/String;

    .line 148
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_6
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->importKey:Ljava/lang/String;

    .line 149
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_7
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->importCameFrom:Ljava/lang/String;

    .line 150
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_8
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->importBatch:Ljava/lang/String;

    .line 151
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_9
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->modifiedBy:Ljava/lang/String;

    .line 152
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->modifiedDate:Ljava/util/Date;

    .line 153
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    :goto_b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->createdBy:Ljava/lang/String;

    .line 154
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v1

    :goto_c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->createdDate:Ljava/util/Date;

    .line 155
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v1

    :goto_d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->_namespace:Ljava/lang/String;

    .line 156
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_e
    iput-object v1, p2, Lcom/genie_connect/common/db/model/Visitorsurvey;->_dataversion:Ljava/lang/String;

    .line 157
    return-void

    .line 142
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 143
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_1

    .line 144
    :cond_2
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_2

    .line 145
    :cond_3
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_3

    .line 146
    :cond_4
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_4

    .line 147
    :cond_5
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 148
    :cond_6
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 149
    :cond_7
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 150
    :cond_8
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 151
    :cond_9
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 152
    :cond_a
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_a

    .line 153
    :cond_b
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 154
    :cond_c
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_c

    .line 155
    :cond_d
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 156
    :cond_e
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_e
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I

    .prologue
    .line 16
    check-cast p2, Lcom/genie_connect/common/db/model/Visitorsurvey;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;->readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/Visitorsurvey;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 113
    add-int/lit8 v0, p2, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x0

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
    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/genie_connect/common/db/model/Visitorsurvey;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/Visitorsurvey;
    .param p2, "rowId"    # J

    .prologue
    .line 162
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/genie_connect/common/db/model/Visitorsurvey;->id:Ljava/lang/Long;

    .line 163
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic updateKeyAfterInsert(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J

    .prologue
    .line 16
    check-cast p1, Lcom/genie_connect/common/db/model/Visitorsurvey;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/VisitorsurveyDao;->updateKeyAfterInsert(Lcom/genie_connect/common/db/model/Visitorsurvey;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
