.class public Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "VisitorDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/genie_connect/common/db/model/Visitor;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "visitors"


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
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/Visitor;)V
    .locals 94
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/Visitor;

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 36
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->meetingsTarget:Ljava/lang/Long;

    move-object/from16 v50, v0

    .line 37
    .local v50, "meetingsTarget":Ljava/lang/Long;
    if-eqz v50, :cond_0

    .line 38
    const/16 v91, 0x1

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J

    move-result-wide v92

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 41
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->gamePersona_nickname:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 42
    .local v35, "gamePersona_nickname":Ljava/lang/String;
    if-eqz v35, :cond_1

    .line 43
    const/16 v91, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->modifiedBy:Ljava/lang/String;

    move-object/from16 v53, v0

    .line 47
    .local v53, "modifiedBy":Ljava/lang/String;
    if-eqz v53, :cond_2

    .line 48
    const/16 v91, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->newPassword:Ljava/lang/String;

    move-object/from16 v57, v0

    .line 52
    .local v57, "newPassword":Ljava/lang/String;
    if-eqz v57, :cond_3

    .line 53
    const/16 v91, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 56
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->loginEmailSent:Ljava/lang/Boolean;

    move-object/from16 v47, v0

    .line 57
    .local v47, "loginEmailSent":Ljava/lang/Boolean;
    if-eqz v47, :cond_4

    .line 58
    const/16 v91, 0x5

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_57

    const-wide/16 v92, 0x1

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 61
    :cond_4
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/genie_connect/common/db/model/Visitor;->activeGamePlayer:Ljava/lang/Boolean;

    .line 62
    .local v8, "activeGamePlayer":Ljava/lang/Boolean;
    if-eqz v8, :cond_5

    .line 63
    const/16 v91, 0x6

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_58

    const-wide/16 v92, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 66
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->password:Ljava/lang/String;

    move-object/from16 v58, v0

    .line 67
    .local v58, "password":Ljava/lang/String;
    if-eqz v58, :cond_6

    .line 68
    const/16 v91, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 71
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->userType:Ljava/lang/Long;

    move-object/from16 v87, v0

    .line 72
    .local v87, "userType":Ljava/lang/Long;
    if-eqz v87, :cond_7

    .line 73
    const/16 v91, 0x8

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Long;->longValue()J

    move-result-wide v92

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 76
    :cond_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->timezone:Ljava/lang/String;

    move-object/from16 v84, v0

    .line 77
    .local v84, "timezone":Ljava/lang/String;
    if-eqz v84, :cond_8

    .line 78
    const/16 v91, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 81
    :cond_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->username:Ljava/lang/String;

    move-object/from16 v88, v0

    .line 82
    .local v88, "username":Ljava/lang/String;
    if-eqz v88, :cond_9

    .line 83
    const/16 v91, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 86
    :cond_9
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->mugShotUrl:Ljava/lang/String;

    move-object/from16 v56, v0

    .line 87
    .local v56, "mugShotUrl":Ljava/lang/String;
    if-eqz v56, :cond_a

    .line 88
    const/16 v91, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showEmail:Ljava/lang/Boolean;

    move-object/from16 v67, v0

    .line 92
    .local v67, "showEmail":Ljava/lang/Boolean;
    if-eqz v67, :cond_b

    .line 93
    const/16 v91, 0xc

    invoke-virtual/range {v67 .. v67}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_59

    const-wide/16 v92, 0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 96
    :cond_b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->fullDescription:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 97
    .local v34, "fullDescription":Ljava/lang/String;
    if-eqz v34, :cond_c

    .line 98
    const/16 v91, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 101
    :cond_c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showTwitter:Ljava/lang/Boolean;

    move-object/from16 v80, v0

    .line 102
    .local v80, "showTwitter":Ljava/lang/Boolean;
    if-eqz v80, :cond_d

    .line 103
    const/16 v91, 0xe

    invoke-virtual/range {v80 .. v80}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_5a

    const-wide/16 v92, 0x1

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 106
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->messageDebits:Ljava/lang/Long;

    move-object/from16 v52, v0

    .line 107
    .local v52, "messageDebits":Ljava/lang/Long;
    if-eqz v52, :cond_e

    .line 108
    const/16 v91, 0xf

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Long;->longValue()J

    move-result-wide v92

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 111
    :cond_e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->lastNames:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 112
    .local v45, "lastNames":Ljava/lang/String;
    if-eqz v45, :cond_f

    .line 113
    const/16 v91, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 116
    :cond_f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->createdDate:Ljava/util/Date;

    move-object/from16 v29, v0

    .line 117
    .local v29, "createdDate":Ljava/util/Date;
    if-eqz v29, :cond_10

    .line 118
    const/16 v91, 0x11

    invoke-virtual/range {v29 .. v29}, Ljava/util/Date;->getTime()J

    move-result-wide v92

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 121
    :cond_10
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->firstNames:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 122
    .local v33, "firstNames":Ljava/lang/String;
    if-eqz v33, :cond_11

    .line 123
    const/16 v91, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 126
    :cond_11
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->meetingDebits:Ljava/lang/Long;

    move-object/from16 v49, v0

    .line 127
    .local v49, "meetingDebits":Ljava/lang/Long;
    if-eqz v49, :cond_12

    .line 128
    const/16 v91, 0x13

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Long;->longValue()J

    move-result-wide v92

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 131
    :cond_12
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->privateKey:Ljava/lang/String;

    move-object/from16 v59, v0

    .line 132
    .local v59, "privateKey":Ljava/lang/String;
    if-eqz v59, :cond_13

    .line 133
    const/16 v91, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 136
    :cond_13
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->totalPlayerPoints:Ljava/lang/Long;

    move-object/from16 v86, v0

    .line 137
    .local v86, "totalPlayerPoints":Ljava/lang/Long;
    if-eqz v86, :cond_14

    .line 138
    const/16 v91, 0x15

    invoke-virtual/range {v86 .. v86}, Ljava/lang/Long;->longValue()J

    move-result-wide v92

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 141
    :cond_14
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showYouTubeUrl:Ljava/lang/Boolean;

    move-object/from16 v83, v0

    .line 142
    .local v83, "showYouTubeUrl":Ljava/lang/Boolean;
    if-eqz v83, :cond_15

    .line 143
    const/16 v91, 0x16

    invoke-virtual/range {v83 .. v83}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_5b

    const-wide/16 v92, 0x1

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    :cond_15
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->companyName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 147
    .local v17, "companyName":Ljava/lang/String;
    if-eqz v17, :cond_16

    .line 148
    const/16 v91, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 151
    :cond_16
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showBriefDescription:Ljava/lang/Boolean;

    move-object/from16 v64, v0

    .line 152
    .local v64, "showBriefDescription":Ljava/lang/Boolean;
    if-eqz v64, :cond_17

    .line 153
    const/16 v91, 0x18

    invoke-virtual/range {v64 .. v64}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_5c

    const-wide/16 v92, 0x1

    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 156
    :cond_17
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->createdBy:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 157
    .local v28, "createdBy":Ljava/lang/String;
    if-eqz v28, :cond_18

    .line 158
    const/16 v91, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 161
    :cond_18
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showBlogUrl:Ljava/lang/Boolean;

    move-object/from16 v63, v0

    .line 162
    .local v63, "showBlogUrl":Ljava/lang/Boolean;
    if-eqz v63, :cond_19

    .line 163
    const/16 v91, 0x1a

    invoke-virtual/range {v63 .. v63}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_5d

    const-wide/16 v92, 0x1

    :goto_6
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 166
    :cond_19
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/genie_connect/common/db/model/Visitor;->actionTypesLastRanOn:Ljava/lang/String;

    .line 167
    .local v7, "actionTypesLastRanOn":Ljava/lang/String;
    if-eqz v7, :cond_1a

    .line 168
    const/16 v91, 0x1b

    move-object/from16 v0, p1

    move/from16 v1, v91

    invoke-virtual {v0, v1, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 171
    :cond_1a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showReasonForAttending:Ljava/lang/Boolean;

    move-object/from16 v77, v0

    .line 172
    .local v77, "showReasonForAttending":Ljava/lang/Boolean;
    if-eqz v77, :cond_1b

    .line 173
    const/16 v91, 0x1c

    invoke-virtual/range {v77 .. v77}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_5e

    const-wide/16 v92, 0x1

    :goto_7
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 176
    :cond_1b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showVisitorType:Ljava/lang/Boolean;

    move-object/from16 v81, v0

    .line 177
    .local v81, "showVisitorType":Ljava/lang/Boolean;
    if-eqz v81, :cond_1c

    .line 178
    const/16 v91, 0x1d

    invoke-virtual/range {v81 .. v81}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_5f

    const-wide/16 v92, 0x1

    :goto_8
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 181
    :cond_1c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showFullDescription:Ljava/lang/Boolean;

    move-object/from16 v70, v0

    .line 182
    .local v70, "showFullDescription":Ljava/lang/Boolean;
    if-eqz v70, :cond_1d

    .line 183
    const/16 v91, 0x1e

    invoke-virtual/range {v70 .. v70}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_60

    const-wide/16 v92, 0x1

    :goto_9
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 186
    :cond_1d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->messageCredits:Ljava/lang/Long;

    move-object/from16 v51, v0

    .line 187
    .local v51, "messageCredits":Ljava/lang/Long;
    if-eqz v51, :cond_1e

    .line 188
    const/16 v91, 0x1f

    invoke-virtual/range {v51 .. v51}, Ljava/lang/Long;->longValue()J

    move-result-wide v92

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 191
    :cond_1e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->importKey:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 192
    .local v41, "importKey":Ljava/lang/String;
    if-eqz v41, :cond_1f

    .line 193
    const/16 v91, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 196
    :cond_1f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showJobTitle:Ljava/lang/Boolean;

    move-object/from16 v72, v0

    .line 197
    .local v72, "showJobTitle":Ljava/lang/Boolean;
    if-eqz v72, :cond_20

    .line 198
    const/16 v91, 0x21

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_61

    const-wide/16 v92, 0x1

    :goto_a
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 201
    :cond_20
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->hasSetProfile:Ljava/lang/Boolean;

    move-object/from16 v37, v0

    .line 202
    .local v37, "hasSetProfile":Ljava/lang/Boolean;
    if-eqz v37, :cond_21

    .line 203
    const/16 v91, 0x22

    invoke-virtual/range {v37 .. v37}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_62

    const-wide/16 v92, 0x1

    :goto_b
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 206
    :cond_21
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->meetingCredits:Ljava/lang/Long;

    move-object/from16 v48, v0

    .line 207
    .local v48, "meetingCredits":Ljava/lang/Long;
    if-eqz v48, :cond_22

    .line 208
    const/16 v91, 0x23

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Long;->longValue()J

    move-result-wide v92

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 211
    :cond_22
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->department:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 212
    .local v30, "department":Ljava/lang/String;
    if-eqz v30, :cond_23

    .line 213
    const/16 v91, 0x24

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 216
    :cond_23
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->locale:Ljava/lang/String;

    move-object/from16 v46, v0

    .line 217
    .local v46, "locale":Ljava/lang/String;
    if-eqz v46, :cond_24

    .line 218
    const/16 v91, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 221
    :cond_24
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->reasonForAttending:Ljava/lang/String;

    move-object/from16 v61, v0

    .line 222
    .local v61, "reasonForAttending":Ljava/lang/String;
    if-eqz v61, :cond_25

    .line 223
    const/16 v91, 0x26

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v61

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 226
    :cond_25
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showInterests:Ljava/lang/Boolean;

    move-object/from16 v71, v0

    .line 227
    .local v71, "showInterests":Ljava/lang/Boolean;
    if-eqz v71, :cond_26

    .line 228
    const/16 v91, 0x27

    invoke-virtual/range {v71 .. v71}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_63

    const-wide/16 v92, 0x1

    :goto_c
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 231
    :cond_26
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->mugShot:Ljava/lang/Long;

    move-object/from16 v55, v0

    .line 232
    .local v55, "mugShot":Ljava/lang/Long;
    if-eqz v55, :cond_27

    .line 233
    const/16 v91, 0x28

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Long;->longValue()J

    move-result-wide v92

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 236
    :cond_27
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->contact_youtubeUrl:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 237
    .local v27, "contact_youtubeUrl":Ljava/lang/String;
    if-eqz v27, :cond_28

    .line 238
    const/16 v91, 0x29

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 241
    :cond_28
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->contact_twitter:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 242
    .local v25, "contact_twitter":Ljava/lang/String;
    if-eqz v25, :cond_29

    .line 243
    const/16 v91, 0x2a

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 246
    :cond_29
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->contact_linkedIn:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 247
    .local v22, "contact_linkedIn":Ljava/lang/String;
    if-eqz v22, :cond_2a

    .line 248
    const/16 v91, 0x2b

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 251
    :cond_2a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->contact_fax:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 252
    .local v21, "contact_fax":Ljava/lang/String;
    if-eqz v21, :cond_2b

    .line 253
    const/16 v91, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 256
    :cond_2b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->contact_telephone2:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 257
    .local v24, "contact_telephone2":Ljava/lang/String;
    if-eqz v24, :cond_2c

    .line 258
    const/16 v91, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 261
    :cond_2c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->contact_email:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 262
    .local v19, "contact_email":Ljava/lang/String;
    if-eqz v19, :cond_2d

    .line 263
    const/16 v91, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 266
    :cond_2d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->contact_facebook:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 267
    .local v20, "contact_facebook":Ljava/lang/String;
    if-eqz v20, :cond_2e

    .line 268
    const/16 v91, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 271
    :cond_2e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->contact_www:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 272
    .local v26, "contact_www":Ljava/lang/String;
    if-eqz v26, :cond_2f

    .line 273
    const/16 v91, 0x30

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 276
    :cond_2f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->contact_telephone:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 277
    .local v23, "contact_telephone":Ljava/lang/String;
    if-eqz v23, :cond_30

    .line 278
    const/16 v91, 0x31

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 281
    :cond_30
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->contact_blogUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 282
    .local v18, "contact_blogUrl":Ljava/lang/String;
    if-eqz v18, :cond_31

    .line 283
    const/16 v91, 0x32

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 286
    :cond_31
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->id:Ljava/lang/Long;

    move-object/from16 v38, v0

    .line 287
    .local v38, "id":Ljava/lang/Long;
    if-eqz v38, :cond_32

    .line 288
    const/16 v91, 0x33

    invoke-virtual/range {v38 .. v38}, Ljava/lang/Long;->longValue()J

    move-result-wide v92

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 291
    :cond_32
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showLinkedIn:Ljava/lang/Boolean;

    move-object/from16 v73, v0

    .line 292
    .local v73, "showLinkedIn":Ljava/lang/Boolean;
    if-eqz v73, :cond_33

    .line 293
    const/16 v91, 0x34

    invoke-virtual/range {v73 .. v73}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_64

    const-wide/16 v92, 0x1

    :goto_d
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 296
    :cond_33
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showDepartment:Ljava/lang/Boolean;

    move-object/from16 v66, v0

    .line 297
    .local v66, "showDepartment":Ljava/lang/Boolean;
    if-eqz v66, :cond_34

    .line 298
    const/16 v91, 0x35

    invoke-virtual/range {v66 .. v66}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_65

    const-wide/16 v92, 0x1

    :goto_e
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 301
    :cond_34
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showFax:Ljava/lang/Boolean;

    move-object/from16 v69, v0

    .line 302
    .local v69, "showFax":Ljava/lang/Boolean;
    if-eqz v69, :cond_35

    .line 303
    const/16 v91, 0x36

    invoke-virtual/range {v69 .. v69}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_66

    const-wide/16 v92, 0x1

    :goto_f
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 306
    :cond_35
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->title:Ljava/lang/String;

    move-object/from16 v85, v0

    .line 307
    .local v85, "title":Ljava/lang/String;
    if-eqz v85, :cond_36

    .line 308
    const/16 v91, 0x37

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v85

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 311
    :cond_36
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showTelephone2:Ljava/lang/Boolean;

    move-object/from16 v79, v0

    .line 312
    .local v79, "showTelephone2":Ljava/lang/Boolean;
    if-eqz v79, :cond_37

    .line 313
    const/16 v91, 0x38

    invoke-virtual/range {v79 .. v79}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_67

    const-wide/16 v92, 0x1

    :goto_10
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 316
    :cond_37
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showName:Ljava/lang/Boolean;

    move-object/from16 v76, v0

    .line 317
    .local v76, "showName":Ljava/lang/Boolean;
    if-eqz v76, :cond_38

    .line 318
    const/16 v91, 0x39

    invoke-virtual/range {v76 .. v76}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_68

    const-wide/16 v92, 0x1

    :goto_11
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 321
    :cond_38
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/genie_connect/common/db/model/Visitor;->_id:Ljava/lang/String;

    .line 322
    .local v5, "_id":Ljava/lang/String;
    if-eqz v5, :cond_39

    .line 323
    const/16 v91, 0x3a

    move-object/from16 v0, p1

    move/from16 v1, v91

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 326
    :cond_39
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->briefDescription:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 327
    .local v16, "briefDescription":Ljava/lang/String;
    if-eqz v16, :cond_3a

    .line 328
    const/16 v91, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 331
    :cond_3a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->importBatch:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 332
    .local v39, "importBatch":Ljava/lang/String;
    if-eqz v39, :cond_3b

    .line 333
    const/16 v91, 0x3c

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 336
    :cond_3b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showAddress:Ljava/lang/Boolean;

    move-object/from16 v62, v0

    .line 337
    .local v62, "showAddress":Ljava/lang/Boolean;
    if-eqz v62, :cond_3c

    .line 338
    const/16 v91, 0x3d

    invoke-virtual/range {v62 .. v62}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_69

    const-wide/16 v92, 0x1

    :goto_12
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 341
    :cond_3c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showCompanyName:Ljava/lang/Boolean;

    move-object/from16 v65, v0

    .line 342
    .local v65, "showCompanyName":Ljava/lang/Boolean;
    if-eqz v65, :cond_3d

    .line 343
    const/16 v91, 0x3e

    invoke-virtual/range {v65 .. v65}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_6a

    const-wide/16 v92, 0x1

    :goto_13
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 346
    :cond_3d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->lastAccessed:Ljava/util/Date;

    move-object/from16 v44, v0

    .line 347
    .local v44, "lastAccessed":Ljava/util/Date;
    if-eqz v44, :cond_3e

    .line 348
    const/16 v91, 0x3f

    invoke-virtual/range {v44 .. v44}, Ljava/util/Date;->getTime()J

    move-result-wide v92

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 351
    :cond_3e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->jobTitle:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 352
    .local v43, "jobTitle":Ljava/lang/String;
    if-eqz v43, :cond_3f

    .line 353
    const/16 v91, 0x40

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 356
    :cond_3f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showMugShot:Ljava/lang/Boolean;

    move-object/from16 v75, v0

    .line 357
    .local v75, "showMugShot":Ljava/lang/Boolean;
    if-eqz v75, :cond_40

    .line 358
    const/16 v91, 0x41

    invoke-virtual/range {v75 .. v75}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_6b

    const-wide/16 v92, 0x1

    :goto_14
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 361
    :cond_40
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->enableGamification:Ljava/lang/Boolean;

    move-object/from16 v31, v0

    .line 362
    .local v31, "enableGamification":Ljava/lang/Boolean;
    if-eqz v31, :cond_41

    .line 363
    const/16 v91, 0x42

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_6c

    const-wide/16 v92, 0x1

    :goto_15
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 366
    :cond_41
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->importCameFrom:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 367
    .local v40, "importCameFrom":Ljava/lang/String;
    if-eqz v40, :cond_42

    .line 368
    const/16 v91, 0x43

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 371
    :cond_42
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showWww:Ljava/lang/Boolean;

    move-object/from16 v82, v0

    .line 372
    .local v82, "showWww":Ljava/lang/Boolean;
    if-eqz v82, :cond_43

    .line 373
    const/16 v91, 0x44

    invoke-virtual/range {v82 .. v82}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_6d

    const-wide/16 v92, 0x1

    :goto_16
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 376
    :cond_43
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->modifiedDate:Ljava/util/Date;

    move-object/from16 v54, v0

    .line 377
    .local v54, "modifiedDate":Ljava/util/Date;
    if-eqz v54, :cond_44

    .line 378
    const/16 v91, 0x45

    invoke-virtual/range {v54 .. v54}, Ljava/util/Date;->getTime()J

    move-result-wide v92

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 381
    :cond_44
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showTelephone:Ljava/lang/Boolean;

    move-object/from16 v78, v0

    .line 382
    .local v78, "showTelephone":Ljava/lang/Boolean;
    if-eqz v78, :cond_45

    .line 383
    const/16 v91, 0x46

    invoke-virtual/range {v78 .. v78}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_6e

    const-wide/16 v92, 0x1

    :goto_17
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 386
    :cond_45
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->visitorGroup:Ljava/lang/String;

    move-object/from16 v89, v0

    .line 387
    .local v89, "visitorGroup":Ljava/lang/String;
    if-eqz v89, :cond_46

    .line 388
    const/16 v91, 0x47

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v89

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 391
    :cond_46
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showFacebook:Ljava/lang/Boolean;

    move-object/from16 v68, v0

    .line 392
    .local v68, "showFacebook":Ljava/lang/Boolean;
    if-eqz v68, :cond_47

    .line 393
    const/16 v91, 0x48

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_6f

    const-wide/16 v92, 0x1

    :goto_18
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 396
    :cond_47
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/genie_connect/common/db/model/Visitor;->address_county:Ljava/lang/String;

    .line 397
    .local v13, "address_county":Ljava/lang/String;
    if-eqz v13, :cond_48

    .line 398
    const/16 v91, 0x49

    move-object/from16 v0, p1

    move/from16 v1, v91

    invoke-virtual {v0, v1, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 401
    :cond_48
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/genie_connect/common/db/model/Visitor;->address_postCode:Ljava/lang/String;

    .line 402
    .local v14, "address_postCode":Ljava/lang/String;
    if-eqz v14, :cond_49

    .line 403
    const/16 v91, 0x4a

    move-object/from16 v0, p1

    move/from16 v1, v91

    invoke-virtual {v0, v1, v14}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 406
    :cond_49
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/genie_connect/common/db/model/Visitor;->address_address1:Ljava/lang/String;

    .line 407
    .local v9, "address_address1":Ljava/lang/String;
    if-eqz v9, :cond_4a

    .line 408
    const/16 v91, 0x4b

    move-object/from16 v0, p1

    move/from16 v1, v91

    invoke-virtual {v0, v1, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 411
    :cond_4a
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/genie_connect/common/db/model/Visitor;->address_address2:Ljava/lang/String;

    .line 412
    .local v10, "address_address2":Ljava/lang/String;
    if-eqz v10, :cond_4b

    .line 413
    const/16 v91, 0x4c

    move-object/from16 v0, p1

    move/from16 v1, v91

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 416
    :cond_4b
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/genie_connect/common/db/model/Visitor;->address_town:Ljava/lang/String;

    .line 417
    .local v15, "address_town":Ljava/lang/String;
    if-eqz v15, :cond_4c

    .line 418
    const/16 v91, 0x4d

    move-object/from16 v0, p1

    move/from16 v1, v91

    invoke-virtual {v0, v1, v15}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 421
    :cond_4c
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/genie_connect/common/db/model/Visitor;->address_address3:Ljava/lang/String;

    .line 422
    .local v11, "address_address3":Ljava/lang/String;
    if-eqz v11, :cond_4d

    .line 423
    const/16 v91, 0x4e

    move-object/from16 v0, p1

    move/from16 v1, v91

    invoke-virtual {v0, v1, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 426
    :cond_4d
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/genie_connect/common/db/model/Visitor;->address_country:Ljava/lang/String;

    .line 427
    .local v12, "address_country":Ljava/lang/String;
    if-eqz v12, :cond_4e

    .line 428
    const/16 v91, 0x4f

    move-object/from16 v0, p1

    move/from16 v1, v91

    invoke-virtual {v0, v1, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 431
    :cond_4e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->visitorType:Ljava/lang/String;

    move-object/from16 v90, v0

    .line 432
    .local v90, "visitorType":Ljava/lang/String;
    if-eqz v90, :cond_4f

    .line 433
    const/16 v91, 0x50

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-object/from16 v2, v90

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 436
    :cond_4f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->qrCodeGenerated:Ljava/lang/Boolean;

    move-object/from16 v60, v0

    .line 437
    .local v60, "qrCodeGenerated":Ljava/lang/Boolean;
    if-eqz v60, :cond_50

    .line 438
    const/16 v91, 0x51

    invoke-virtual/range {v60 .. v60}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_70

    const-wide/16 v92, 0x1

    :goto_19
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 441
    :cond_50
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->showMe:Ljava/lang/Boolean;

    move-object/from16 v74, v0

    .line 442
    .local v74, "showMe":Ljava/lang/Boolean;
    if-eqz v74, :cond_51

    .line 443
    const/16 v91, 0x52

    invoke-virtual/range {v74 .. v74}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_71

    const-wide/16 v92, 0x1

    :goto_1a
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 446
    :cond_51
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->exhibitor:Ljava/lang/Long;

    move-object/from16 v32, v0

    .line 447
    .local v32, "exhibitor":Ljava/lang/Long;
    if-eqz v32, :cond_52

    .line 448
    const/16 v91, 0x53

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v92

    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 451
    :cond_52
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/genie_connect/common/db/model/Visitor;->_namespace:Ljava/lang/String;

    .line 452
    .local v6, "_namespace":Ljava/lang/String;
    if-eqz v6, :cond_53

    .line 453
    const/16 v91, 0x54

    move-object/from16 v0, p1

    move/from16 v1, v91

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 456
    :cond_53
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->isFavourite:Ljava/lang/Boolean;

    move-object/from16 v42, v0

    .line 457
    .local v42, "isFavourite":Ljava/lang/Boolean;
    if-eqz v42, :cond_54

    .line 458
    const/16 v91, 0x55

    invoke-virtual/range {v42 .. v42}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_72

    const-wide/16 v92, 0x1

    :goto_1b
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 461
    :cond_54
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Visitor;->hasNote:Ljava/lang/Boolean;

    move-object/from16 v36, v0

    .line 462
    .local v36, "hasNote":Ljava/lang/Boolean;
    if-eqz v36, :cond_55

    .line 463
    const/16 v91, 0x56

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v92

    if-eqz v92, :cond_73

    const-wide/16 v92, 0x1

    :goto_1c
    move-object/from16 v0, p1

    move/from16 v1, v91

    move-wide/from16 v2, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 466
    :cond_55
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/genie_connect/common/db/model/Visitor;->_dataversion:Ljava/lang/String;

    .line 467
    .local v4, "_dataversion":Ljava/lang/String;
    if-eqz v4, :cond_56

    .line 468
    const/16 v91, 0x57

    move-object/from16 v0, p1

    move/from16 v1, v91

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 470
    :cond_56
    return-void

    .line 58
    .end local v4    # "_dataversion":Ljava/lang/String;
    .end local v5    # "_id":Ljava/lang/String;
    .end local v6    # "_namespace":Ljava/lang/String;
    .end local v7    # "actionTypesLastRanOn":Ljava/lang/String;
    .end local v8    # "activeGamePlayer":Ljava/lang/Boolean;
    .end local v9    # "address_address1":Ljava/lang/String;
    .end local v10    # "address_address2":Ljava/lang/String;
    .end local v11    # "address_address3":Ljava/lang/String;
    .end local v12    # "address_country":Ljava/lang/String;
    .end local v13    # "address_county":Ljava/lang/String;
    .end local v14    # "address_postCode":Ljava/lang/String;
    .end local v15    # "address_town":Ljava/lang/String;
    .end local v16    # "briefDescription":Ljava/lang/String;
    .end local v17    # "companyName":Ljava/lang/String;
    .end local v18    # "contact_blogUrl":Ljava/lang/String;
    .end local v19    # "contact_email":Ljava/lang/String;
    .end local v20    # "contact_facebook":Ljava/lang/String;
    .end local v21    # "contact_fax":Ljava/lang/String;
    .end local v22    # "contact_linkedIn":Ljava/lang/String;
    .end local v23    # "contact_telephone":Ljava/lang/String;
    .end local v24    # "contact_telephone2":Ljava/lang/String;
    .end local v25    # "contact_twitter":Ljava/lang/String;
    .end local v26    # "contact_www":Ljava/lang/String;
    .end local v27    # "contact_youtubeUrl":Ljava/lang/String;
    .end local v28    # "createdBy":Ljava/lang/String;
    .end local v29    # "createdDate":Ljava/util/Date;
    .end local v30    # "department":Ljava/lang/String;
    .end local v31    # "enableGamification":Ljava/lang/Boolean;
    .end local v32    # "exhibitor":Ljava/lang/Long;
    .end local v33    # "firstNames":Ljava/lang/String;
    .end local v34    # "fullDescription":Ljava/lang/String;
    .end local v36    # "hasNote":Ljava/lang/Boolean;
    .end local v37    # "hasSetProfile":Ljava/lang/Boolean;
    .end local v38    # "id":Ljava/lang/Long;
    .end local v39    # "importBatch":Ljava/lang/String;
    .end local v40    # "importCameFrom":Ljava/lang/String;
    .end local v41    # "importKey":Ljava/lang/String;
    .end local v42    # "isFavourite":Ljava/lang/Boolean;
    .end local v43    # "jobTitle":Ljava/lang/String;
    .end local v44    # "lastAccessed":Ljava/util/Date;
    .end local v45    # "lastNames":Ljava/lang/String;
    .end local v46    # "locale":Ljava/lang/String;
    .end local v48    # "meetingCredits":Ljava/lang/Long;
    .end local v49    # "meetingDebits":Ljava/lang/Long;
    .end local v51    # "messageCredits":Ljava/lang/Long;
    .end local v52    # "messageDebits":Ljava/lang/Long;
    .end local v54    # "modifiedDate":Ljava/util/Date;
    .end local v55    # "mugShot":Ljava/lang/Long;
    .end local v56    # "mugShotUrl":Ljava/lang/String;
    .end local v58    # "password":Ljava/lang/String;
    .end local v59    # "privateKey":Ljava/lang/String;
    .end local v60    # "qrCodeGenerated":Ljava/lang/Boolean;
    .end local v61    # "reasonForAttending":Ljava/lang/String;
    .end local v62    # "showAddress":Ljava/lang/Boolean;
    .end local v63    # "showBlogUrl":Ljava/lang/Boolean;
    .end local v64    # "showBriefDescription":Ljava/lang/Boolean;
    .end local v65    # "showCompanyName":Ljava/lang/Boolean;
    .end local v66    # "showDepartment":Ljava/lang/Boolean;
    .end local v67    # "showEmail":Ljava/lang/Boolean;
    .end local v68    # "showFacebook":Ljava/lang/Boolean;
    .end local v69    # "showFax":Ljava/lang/Boolean;
    .end local v70    # "showFullDescription":Ljava/lang/Boolean;
    .end local v71    # "showInterests":Ljava/lang/Boolean;
    .end local v72    # "showJobTitle":Ljava/lang/Boolean;
    .end local v73    # "showLinkedIn":Ljava/lang/Boolean;
    .end local v74    # "showMe":Ljava/lang/Boolean;
    .end local v75    # "showMugShot":Ljava/lang/Boolean;
    .end local v76    # "showName":Ljava/lang/Boolean;
    .end local v77    # "showReasonForAttending":Ljava/lang/Boolean;
    .end local v78    # "showTelephone":Ljava/lang/Boolean;
    .end local v79    # "showTelephone2":Ljava/lang/Boolean;
    .end local v80    # "showTwitter":Ljava/lang/Boolean;
    .end local v81    # "showVisitorType":Ljava/lang/Boolean;
    .end local v82    # "showWww":Ljava/lang/Boolean;
    .end local v83    # "showYouTubeUrl":Ljava/lang/Boolean;
    .end local v84    # "timezone":Ljava/lang/String;
    .end local v85    # "title":Ljava/lang/String;
    .end local v86    # "totalPlayerPoints":Ljava/lang/Long;
    .end local v87    # "userType":Ljava/lang/Long;
    .end local v88    # "username":Ljava/lang/String;
    .end local v89    # "visitorGroup":Ljava/lang/String;
    .end local v90    # "visitorType":Ljava/lang/String;
    :cond_57
    const-wide/16 v92, 0x0

    goto/16 :goto_0

    .line 63
    .restart local v8    # "activeGamePlayer":Ljava/lang/Boolean;
    :cond_58
    const-wide/16 v92, 0x0

    goto/16 :goto_1

    .line 93
    .restart local v56    # "mugShotUrl":Ljava/lang/String;
    .restart local v58    # "password":Ljava/lang/String;
    .restart local v67    # "showEmail":Ljava/lang/Boolean;
    .restart local v84    # "timezone":Ljava/lang/String;
    .restart local v87    # "userType":Ljava/lang/Long;
    .restart local v88    # "username":Ljava/lang/String;
    :cond_59
    const-wide/16 v92, 0x0

    goto/16 :goto_2

    .line 103
    .restart local v34    # "fullDescription":Ljava/lang/String;
    .restart local v80    # "showTwitter":Ljava/lang/Boolean;
    :cond_5a
    const-wide/16 v92, 0x0

    goto/16 :goto_3

    .line 143
    .restart local v29    # "createdDate":Ljava/util/Date;
    .restart local v33    # "firstNames":Ljava/lang/String;
    .restart local v45    # "lastNames":Ljava/lang/String;
    .restart local v49    # "meetingDebits":Ljava/lang/Long;
    .restart local v52    # "messageDebits":Ljava/lang/Long;
    .restart local v59    # "privateKey":Ljava/lang/String;
    .restart local v83    # "showYouTubeUrl":Ljava/lang/Boolean;
    .restart local v86    # "totalPlayerPoints":Ljava/lang/Long;
    :cond_5b
    const-wide/16 v92, 0x0

    goto/16 :goto_4

    .line 153
    .restart local v17    # "companyName":Ljava/lang/String;
    .restart local v64    # "showBriefDescription":Ljava/lang/Boolean;
    :cond_5c
    const-wide/16 v92, 0x0

    goto/16 :goto_5

    .line 163
    .restart local v28    # "createdBy":Ljava/lang/String;
    .restart local v63    # "showBlogUrl":Ljava/lang/Boolean;
    :cond_5d
    const-wide/16 v92, 0x0

    goto/16 :goto_6

    .line 173
    .restart local v7    # "actionTypesLastRanOn":Ljava/lang/String;
    .restart local v77    # "showReasonForAttending":Ljava/lang/Boolean;
    :cond_5e
    const-wide/16 v92, 0x0

    goto/16 :goto_7

    .line 178
    .restart local v81    # "showVisitorType":Ljava/lang/Boolean;
    :cond_5f
    const-wide/16 v92, 0x0

    goto/16 :goto_8

    .line 183
    .restart local v70    # "showFullDescription":Ljava/lang/Boolean;
    :cond_60
    const-wide/16 v92, 0x0

    goto/16 :goto_9

    .line 198
    .restart local v41    # "importKey":Ljava/lang/String;
    .restart local v51    # "messageCredits":Ljava/lang/Long;
    .restart local v72    # "showJobTitle":Ljava/lang/Boolean;
    :cond_61
    const-wide/16 v92, 0x0

    goto/16 :goto_a

    .line 203
    .restart local v37    # "hasSetProfile":Ljava/lang/Boolean;
    :cond_62
    const-wide/16 v92, 0x0

    goto/16 :goto_b

    .line 228
    .restart local v30    # "department":Ljava/lang/String;
    .restart local v46    # "locale":Ljava/lang/String;
    .restart local v48    # "meetingCredits":Ljava/lang/Long;
    .restart local v61    # "reasonForAttending":Ljava/lang/String;
    .restart local v71    # "showInterests":Ljava/lang/Boolean;
    :cond_63
    const-wide/16 v92, 0x0

    goto/16 :goto_c

    .line 293
    .restart local v18    # "contact_blogUrl":Ljava/lang/String;
    .restart local v19    # "contact_email":Ljava/lang/String;
    .restart local v20    # "contact_facebook":Ljava/lang/String;
    .restart local v21    # "contact_fax":Ljava/lang/String;
    .restart local v22    # "contact_linkedIn":Ljava/lang/String;
    .restart local v23    # "contact_telephone":Ljava/lang/String;
    .restart local v24    # "contact_telephone2":Ljava/lang/String;
    .restart local v25    # "contact_twitter":Ljava/lang/String;
    .restart local v26    # "contact_www":Ljava/lang/String;
    .restart local v27    # "contact_youtubeUrl":Ljava/lang/String;
    .restart local v38    # "id":Ljava/lang/Long;
    .restart local v55    # "mugShot":Ljava/lang/Long;
    .restart local v73    # "showLinkedIn":Ljava/lang/Boolean;
    :cond_64
    const-wide/16 v92, 0x0

    goto/16 :goto_d

    .line 298
    .restart local v66    # "showDepartment":Ljava/lang/Boolean;
    :cond_65
    const-wide/16 v92, 0x0

    goto/16 :goto_e

    .line 303
    .restart local v69    # "showFax":Ljava/lang/Boolean;
    :cond_66
    const-wide/16 v92, 0x0

    goto/16 :goto_f

    .line 313
    .restart local v79    # "showTelephone2":Ljava/lang/Boolean;
    .restart local v85    # "title":Ljava/lang/String;
    :cond_67
    const-wide/16 v92, 0x0

    goto/16 :goto_10

    .line 318
    .restart local v76    # "showName":Ljava/lang/Boolean;
    :cond_68
    const-wide/16 v92, 0x0

    goto/16 :goto_11

    .line 338
    .restart local v5    # "_id":Ljava/lang/String;
    .restart local v16    # "briefDescription":Ljava/lang/String;
    .restart local v39    # "importBatch":Ljava/lang/String;
    .restart local v62    # "showAddress":Ljava/lang/Boolean;
    :cond_69
    const-wide/16 v92, 0x0

    goto/16 :goto_12

    .line 343
    .restart local v65    # "showCompanyName":Ljava/lang/Boolean;
    :cond_6a
    const-wide/16 v92, 0x0

    goto/16 :goto_13

    .line 358
    .restart local v43    # "jobTitle":Ljava/lang/String;
    .restart local v44    # "lastAccessed":Ljava/util/Date;
    .restart local v75    # "showMugShot":Ljava/lang/Boolean;
    :cond_6b
    const-wide/16 v92, 0x0

    goto/16 :goto_14

    .line 363
    .restart local v31    # "enableGamification":Ljava/lang/Boolean;
    :cond_6c
    const-wide/16 v92, 0x0

    goto/16 :goto_15

    .line 373
    .restart local v40    # "importCameFrom":Ljava/lang/String;
    .restart local v82    # "showWww":Ljava/lang/Boolean;
    :cond_6d
    const-wide/16 v92, 0x0

    goto/16 :goto_16

    .line 383
    .restart local v54    # "modifiedDate":Ljava/util/Date;
    .restart local v78    # "showTelephone":Ljava/lang/Boolean;
    :cond_6e
    const-wide/16 v92, 0x0

    goto/16 :goto_17

    .line 393
    .restart local v68    # "showFacebook":Ljava/lang/Boolean;
    .restart local v89    # "visitorGroup":Ljava/lang/String;
    :cond_6f
    const-wide/16 v92, 0x0

    goto/16 :goto_18

    .line 438
    .restart local v9    # "address_address1":Ljava/lang/String;
    .restart local v10    # "address_address2":Ljava/lang/String;
    .restart local v11    # "address_address3":Ljava/lang/String;
    .restart local v12    # "address_country":Ljava/lang/String;
    .restart local v13    # "address_county":Ljava/lang/String;
    .restart local v14    # "address_postCode":Ljava/lang/String;
    .restart local v15    # "address_town":Ljava/lang/String;
    .restart local v60    # "qrCodeGenerated":Ljava/lang/Boolean;
    .restart local v90    # "visitorType":Ljava/lang/String;
    :cond_70
    const-wide/16 v92, 0x0

    goto/16 :goto_19

    .line 443
    .restart local v74    # "showMe":Ljava/lang/Boolean;
    :cond_71
    const-wide/16 v92, 0x0

    goto/16 :goto_1a

    .line 458
    .restart local v6    # "_namespace":Ljava/lang/String;
    .restart local v32    # "exhibitor":Ljava/lang/Long;
    .restart local v42    # "isFavourite":Ljava/lang/Boolean;
    :cond_72
    const-wide/16 v92, 0x0

    goto/16 :goto_1b

    .line 463
    .restart local v36    # "hasNote":Ljava/lang/Boolean;
    :cond_73
    const-wide/16 v92, 0x0

    goto/16 :goto_1c
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/Visitor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/Visitor;)V

    return-void
.end method

.method public getKey(Lcom/genie_connect/common/db/model/Visitor;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/Visitor;

    .prologue
    .line 675
    if-eqz p1, :cond_0

    .line 676
    iget-object v0, p1, Lcom/genie_connect/common/db/model/Visitor;->id:Ljava/lang/Long;

    .line 678
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
    check-cast p1, Lcom/genie_connect/common/db/model/Visitor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;->getKey(Lcom/genie_connect/common/db/model/Visitor;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 685
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/Visitor;
    .locals 90
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 481
    new-instance v2, Lcom/genie_connect/common/db/model/Visitor;

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

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    :goto_5
    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x0

    :goto_6
    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    :goto_7
    add-int/lit8 v11, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    :goto_8
    add-int/lit8 v12, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    :goto_9
    add-int/lit8 v13, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v13, 0x0

    :goto_a
    add-int/lit8 v14, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->isNull(I)Z

    move-result v14

    if-eqz v14, :cond_d

    const/4 v14, 0x0

    :goto_b
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_f

    const/4 v15, 0x0

    :goto_c
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_10

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

    if-eqz v18, :cond_13

    const/16 v18, 0x0

    :goto_f
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_14

    const/16 v19, 0x0

    :goto_10
    add-int/lit8 v20, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_15

    const/16 v20, 0x0

    :goto_11
    add-int/lit8 v21, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v21

    if-eqz v21, :cond_16

    const/16 v21, 0x0

    :goto_12
    add-int/lit8 v22, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v22

    if-eqz v22, :cond_17

    const/16 v22, 0x0

    :goto_13
    add-int/lit8 v23, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_18

    const/16 v23, 0x0

    :goto_14
    add-int/lit8 v24, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_19

    const/16 v24, 0x0

    :goto_15
    add-int/lit8 v25, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_1b

    const/16 v25, 0x0

    :goto_16
    add-int/lit8 v26, p2, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_1c

    const/16 v26, 0x0

    :goto_17
    add-int/lit8 v27, p2, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_1e

    const/16 v27, 0x0

    :goto_18
    add-int/lit8 v28, p2, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1f

    const/16 v28, 0x0

    :goto_19
    add-int/lit8 v29, p2, 0x1a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_21

    const/16 v29, 0x0

    :goto_1a
    add-int/lit8 v30, p2, 0x1b

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_22

    const/16 v30, 0x0

    :goto_1b
    add-int/lit8 v31, p2, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_24

    const/16 v31, 0x0

    :goto_1c
    add-int/lit8 v32, p2, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_26

    const/16 v32, 0x0

    :goto_1d
    add-int/lit8 v33, p2, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v33

    if-eqz v33, :cond_28

    const/16 v33, 0x0

    :goto_1e
    add-int/lit8 v34, p2, 0x1f

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_29

    const/16 v34, 0x0

    :goto_1f
    add-int/lit8 v35, p2, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_2a

    const/16 v35, 0x0

    :goto_20
    add-int/lit8 v36, p2, 0x21

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_2c

    const/16 v36, 0x0

    :goto_21
    add-int/lit8 v37, p2, 0x22

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_2e

    const/16 v37, 0x0

    :goto_22
    add-int/lit8 v38, p2, 0x23

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_2f

    const/16 v38, 0x0

    :goto_23
    add-int/lit8 v39, p2, 0x24

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_30

    const/16 v39, 0x0

    :goto_24
    add-int/lit8 v40, p2, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_31

    const/16 v40, 0x0

    :goto_25
    add-int/lit8 v41, p2, 0x26

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_32

    const/16 v41, 0x0

    :goto_26
    add-int/lit8 v42, p2, 0x27

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_34

    const/16 v42, 0x0

    :goto_27
    add-int/lit8 v43, p2, 0x28

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_35

    const/16 v43, 0x0

    :goto_28
    add-int/lit8 v44, p2, 0x29

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v44

    if-eqz v44, :cond_36

    const/16 v44, 0x0

    :goto_29
    add-int/lit8 v45, p2, 0x2a

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_37

    const/16 v45, 0x0

    :goto_2a
    add-int/lit8 v46, p2, 0x2b

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_38

    const/16 v46, 0x0

    :goto_2b
    add-int/lit8 v47, p2, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v47

    if-eqz v47, :cond_39

    const/16 v47, 0x0

    :goto_2c
    add-int/lit8 v48, p2, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v48

    if-eqz v48, :cond_3a

    const/16 v48, 0x0

    :goto_2d
    add-int/lit8 v49, p2, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v49

    if-eqz v49, :cond_3b

    const/16 v49, 0x0

    :goto_2e
    add-int/lit8 v50, p2, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_3c

    const/16 v50, 0x0

    :goto_2f
    add-int/lit8 v51, p2, 0x30

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_3d

    const/16 v51, 0x0

    :goto_30
    add-int/lit8 v52, p2, 0x31

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_3e

    const/16 v52, 0x0

    :goto_31
    add-int/lit8 v53, p2, 0x32

    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_3f

    const/16 v53, 0x0

    :goto_32
    add-int/lit8 v54, p2, 0x33

    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v54

    if-eqz v54, :cond_40

    const/16 v54, 0x0

    :goto_33
    add-int/lit8 v55, p2, 0x34

    move-object/from16 v0, p1

    move/from16 v1, v55

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v55

    if-eqz v55, :cond_42

    const/16 v55, 0x0

    :goto_34
    add-int/lit8 v56, p2, 0x35

    move-object/from16 v0, p1

    move/from16 v1, v56

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v56

    if-eqz v56, :cond_44

    const/16 v56, 0x0

    :goto_35
    add-int/lit8 v57, p2, 0x36

    move-object/from16 v0, p1

    move/from16 v1, v57

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v57

    if-eqz v57, :cond_46

    const/16 v57, 0x0

    :goto_36
    add-int/lit8 v58, p2, 0x37

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v58

    if-eqz v58, :cond_47

    const/16 v58, 0x0

    :goto_37
    add-int/lit8 v59, p2, 0x38

    move-object/from16 v0, p1

    move/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v59

    if-eqz v59, :cond_49

    const/16 v59, 0x0

    :goto_38
    add-int/lit8 v60, p2, 0x39

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v60

    if-eqz v60, :cond_4b

    const/16 v60, 0x0

    :goto_39
    add-int/lit8 v61, p2, 0x3a

    move-object/from16 v0, p1

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v61

    if-eqz v61, :cond_4c

    const/16 v61, 0x0

    :goto_3a
    add-int/lit8 v62, p2, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v62

    if-eqz v62, :cond_4d

    const/16 v62, 0x0

    :goto_3b
    add-int/lit8 v63, p2, 0x3c

    move-object/from16 v0, p1

    move/from16 v1, v63

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v63

    if-eqz v63, :cond_4e

    const/16 v63, 0x0

    :goto_3c
    add-int/lit8 v64, p2, 0x3d

    move-object/from16 v0, p1

    move/from16 v1, v64

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v64

    if-eqz v64, :cond_50

    const/16 v64, 0x0

    :goto_3d
    add-int/lit8 v65, p2, 0x3e

    move-object/from16 v0, p1

    move/from16 v1, v65

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v65

    if-eqz v65, :cond_52

    const/16 v65, 0x0

    :goto_3e
    add-int/lit8 v66, p2, 0x3f

    move-object/from16 v0, p1

    move/from16 v1, v66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v66

    if-eqz v66, :cond_53

    const/16 v66, 0x0

    :goto_3f
    add-int/lit8 v67, p2, 0x40

    move-object/from16 v0, p1

    move/from16 v1, v67

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v67

    if-eqz v67, :cond_54

    const/16 v67, 0x0

    :goto_40
    add-int/lit8 v68, p2, 0x41

    move-object/from16 v0, p1

    move/from16 v1, v68

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v68

    if-eqz v68, :cond_56

    const/16 v68, 0x0

    :goto_41
    add-int/lit8 v69, p2, 0x42

    move-object/from16 v0, p1

    move/from16 v1, v69

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v69

    if-eqz v69, :cond_58

    const/16 v69, 0x0

    :goto_42
    add-int/lit8 v70, p2, 0x43

    move-object/from16 v0, p1

    move/from16 v1, v70

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v70

    if-eqz v70, :cond_59

    const/16 v70, 0x0

    :goto_43
    add-int/lit8 v71, p2, 0x44

    move-object/from16 v0, p1

    move/from16 v1, v71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v71

    if-eqz v71, :cond_5b

    const/16 v71, 0x0

    :goto_44
    add-int/lit8 v72, p2, 0x45

    move-object/from16 v0, p1

    move/from16 v1, v72

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v72

    if-eqz v72, :cond_5c

    const/16 v72, 0x0

    :goto_45
    add-int/lit8 v73, p2, 0x46

    move-object/from16 v0, p1

    move/from16 v1, v73

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v73

    if-eqz v73, :cond_5e

    const/16 v73, 0x0

    :goto_46
    add-int/lit8 v74, p2, 0x47

    move-object/from16 v0, p1

    move/from16 v1, v74

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v74

    if-eqz v74, :cond_5f

    const/16 v74, 0x0

    :goto_47
    add-int/lit8 v75, p2, 0x48

    move-object/from16 v0, p1

    move/from16 v1, v75

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v75

    if-eqz v75, :cond_61

    const/16 v75, 0x0

    :goto_48
    add-int/lit8 v76, p2, 0x49

    move-object/from16 v0, p1

    move/from16 v1, v76

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v76

    if-eqz v76, :cond_62

    const/16 v76, 0x0

    :goto_49
    add-int/lit8 v77, p2, 0x4a

    move-object/from16 v0, p1

    move/from16 v1, v77

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v77

    if-eqz v77, :cond_63

    const/16 v77, 0x0

    :goto_4a
    add-int/lit8 v78, p2, 0x4b

    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v78

    if-eqz v78, :cond_64

    const/16 v78, 0x0

    :goto_4b
    add-int/lit8 v79, p2, 0x4c

    move-object/from16 v0, p1

    move/from16 v1, v79

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v79

    if-eqz v79, :cond_65

    const/16 v79, 0x0

    :goto_4c
    add-int/lit8 v80, p2, 0x4d

    move-object/from16 v0, p1

    move/from16 v1, v80

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v80

    if-eqz v80, :cond_66

    const/16 v80, 0x0

    :goto_4d
    add-int/lit8 v81, p2, 0x4e

    move-object/from16 v0, p1

    move/from16 v1, v81

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v81

    if-eqz v81, :cond_67

    const/16 v81, 0x0

    :goto_4e
    add-int/lit8 v82, p2, 0x4f

    move-object/from16 v0, p1

    move/from16 v1, v82

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v82

    if-eqz v82, :cond_68

    const/16 v82, 0x0

    :goto_4f
    add-int/lit8 v83, p2, 0x50

    move-object/from16 v0, p1

    move/from16 v1, v83

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v83

    if-eqz v83, :cond_69

    const/16 v83, 0x0

    :goto_50
    add-int/lit8 v84, p2, 0x51

    move-object/from16 v0, p1

    move/from16 v1, v84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v84

    if-eqz v84, :cond_6b

    const/16 v84, 0x0

    :goto_51
    add-int/lit8 v85, p2, 0x52

    move-object/from16 v0, p1

    move/from16 v1, v85

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v85

    if-eqz v85, :cond_6d

    const/16 v85, 0x0

    :goto_52
    add-int/lit8 v86, p2, 0x53

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v86

    if-eqz v86, :cond_6e

    const/16 v86, 0x0

    :goto_53
    add-int/lit8 v87, p2, 0x54

    move-object/from16 v0, p1

    move/from16 v1, v87

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v87

    if-eqz v87, :cond_6f

    const/16 v87, 0x0

    :goto_54
    add-int/lit8 v88, p2, 0x55

    move-object/from16 v0, p1

    move/from16 v1, v88

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v88

    if-eqz v88, :cond_71

    const/16 v88, 0x0

    :goto_55
    add-int/lit8 v89, p2, 0x56

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v89

    if-eqz v89, :cond_73

    const/16 v89, 0x0

    :goto_56
    invoke-direct/range {v2 .. v89}, Lcom/genie_connect/common/db/model/Visitor;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 570
    .local v2, "entity":Lcom/genie_connect/common/db/model/Visitor;
    return-object v2

    .line 481
    .end local v2    # "entity":Lcom/genie_connect/common/db/model/Visitor;
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

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_57
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_4

    :cond_5
    const/4 v7, 0x0

    goto :goto_57

    :cond_6
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getShort(I)S

    move-result v8

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_58
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_5

    :cond_7
    const/4 v8, 0x0

    goto :goto_58

    :cond_8
    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    :cond_9
    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto/16 :goto_7

    :cond_a
    add-int/lit8 v11, p2, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_8

    :cond_b
    add-int/lit8 v12, p2, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_9

    :cond_c
    add-int/lit8 v13, p2, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_a

    :cond_d
    add-int/lit8 v14, p2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getShort(I)S

    move-result v14

    if-eqz v14, :cond_e

    const/4 v14, 0x1

    :goto_59
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    goto/16 :goto_b

    :cond_e
    const/4 v14, 0x0

    goto :goto_59

    :cond_f
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_c

    :cond_10
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v16

    if-eqz v16, :cond_11

    const/16 v16, 0x1

    :goto_5a
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    goto/16 :goto_d

    :cond_11
    const/16 v16, 0x0

    goto :goto_5a

    :cond_12
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto/16 :goto_e

    :cond_13
    add-int/lit8 v18, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_f

    :cond_14
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v19

    goto/16 :goto_10

    :cond_15
    add-int/lit8 v20, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_11

    :cond_16
    add-int/lit8 v21, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    goto/16 :goto_12

    :cond_17
    add-int/lit8 v22, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_13

    :cond_18
    add-int/lit8 v23, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    goto/16 :goto_14

    :cond_19
    add-int/lit8 v24, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v24

    if-eqz v24, :cond_1a

    const/16 v24, 0x1

    :goto_5b
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    goto/16 :goto_15

    :cond_1a
    const/16 v24, 0x0

    goto :goto_5b

    :cond_1b
    add-int/lit8 v25, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_16

    :cond_1c
    add-int/lit8 v26, p2, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v26

    if-eqz v26, :cond_1d

    const/16 v26, 0x1

    :goto_5c
    invoke-static/range {v26 .. v26}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v26

    goto/16 :goto_17

    :cond_1d
    const/16 v26, 0x0

    goto :goto_5c

    :cond_1e
    add-int/lit8 v27, p2, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_18

    :cond_1f
    add-int/lit8 v28, p2, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v28

    if-eqz v28, :cond_20

    const/16 v28, 0x1

    :goto_5d
    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    goto/16 :goto_19

    :cond_20
    const/16 v28, 0x0

    goto :goto_5d

    :cond_21
    add-int/lit8 v29, p2, 0x1a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_1a

    :cond_22
    add-int/lit8 v30, p2, 0x1b

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v30

    if-eqz v30, :cond_23

    const/16 v30, 0x1

    :goto_5e
    invoke-static/range {v30 .. v30}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v30

    goto/16 :goto_1b

    :cond_23
    const/16 v30, 0x0

    goto :goto_5e

    :cond_24
    add-int/lit8 v31, p2, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v31

    if-eqz v31, :cond_25

    const/16 v31, 0x1

    :goto_5f
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v31

    goto/16 :goto_1c

    :cond_25
    const/16 v31, 0x0

    goto :goto_5f

    :cond_26
    add-int/lit8 v32, p2, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v32

    if-eqz v32, :cond_27

    const/16 v32, 0x1

    :goto_60
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_1d

    :cond_27
    const/16 v32, 0x0

    goto :goto_60

    :cond_28
    add-int/lit8 v33, p2, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v33

    goto/16 :goto_1e

    :cond_29
    add-int/lit8 v34, p2, 0x1f

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_1f

    :cond_2a
    add-int/lit8 v35, p2, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v35

    if-eqz v35, :cond_2b

    const/16 v35, 0x1

    :goto_61
    invoke-static/range {v35 .. v35}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    goto/16 :goto_20

    :cond_2b
    const/16 v35, 0x0

    goto :goto_61

    :cond_2c
    add-int/lit8 v36, p2, 0x21

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v36

    if-eqz v36, :cond_2d

    const/16 v36, 0x1

    :goto_62
    invoke-static/range {v36 .. v36}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    goto/16 :goto_21

    :cond_2d
    const/16 v36, 0x0

    goto :goto_62

    :cond_2e
    add-int/lit8 v37, p2, 0x22

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    goto/16 :goto_22

    :cond_2f
    add-int/lit8 v38, p2, 0x23

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_23

    :cond_30
    add-int/lit8 v39, p2, 0x24

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_24

    :cond_31
    add-int/lit8 v40, p2, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    goto/16 :goto_25

    :cond_32
    add-int/lit8 v41, p2, 0x26

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v41

    if-eqz v41, :cond_33

    const/16 v41, 0x1

    :goto_63
    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v41

    goto/16 :goto_26

    :cond_33
    const/16 v41, 0x0

    goto :goto_63

    :cond_34
    add-int/lit8 v42, p2, 0x27

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    goto/16 :goto_27

    :cond_35
    add-int/lit8 v43, p2, 0x28

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_28

    :cond_36
    add-int/lit8 v44, p2, 0x29

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    goto/16 :goto_29

    :cond_37
    add-int/lit8 v45, p2, 0x2a

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_2a

    :cond_38
    add-int/lit8 v46, p2, 0x2b

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    goto/16 :goto_2b

    :cond_39
    add-int/lit8 v47, p2, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_2c

    :cond_3a
    add-int/lit8 v48, p2, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    goto/16 :goto_2d

    :cond_3b
    add-int/lit8 v49, p2, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    goto/16 :goto_2e

    :cond_3c
    add-int/lit8 v50, p2, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    goto/16 :goto_2f

    :cond_3d
    add-int/lit8 v51, p2, 0x30

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    goto/16 :goto_30

    :cond_3e
    add-int/lit8 v52, p2, 0x31

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_31

    :cond_3f
    add-int/lit8 v53, p2, 0x32

    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    invoke-static/range {v54 .. v55}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v53

    goto/16 :goto_32

    :cond_40
    add-int/lit8 v54, p2, 0x33

    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v54

    if-eqz v54, :cond_41

    const/16 v54, 0x1

    :goto_64
    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    goto/16 :goto_33

    :cond_41
    const/16 v54, 0x0

    goto :goto_64

    :cond_42
    add-int/lit8 v55, p2, 0x34

    move-object/from16 v0, p1

    move/from16 v1, v55

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v55

    if-eqz v55, :cond_43

    const/16 v55, 0x1

    :goto_65
    invoke-static/range {v55 .. v55}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v55

    goto/16 :goto_34

    :cond_43
    const/16 v55, 0x0

    goto :goto_65

    :cond_44
    add-int/lit8 v56, p2, 0x35

    move-object/from16 v0, p1

    move/from16 v1, v56

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v56

    if-eqz v56, :cond_45

    const/16 v56, 0x1

    :goto_66
    invoke-static/range {v56 .. v56}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v56

    goto/16 :goto_35

    :cond_45
    const/16 v56, 0x0

    goto :goto_66

    :cond_46
    add-int/lit8 v57, p2, 0x36

    move-object/from16 v0, p1

    move/from16 v1, v57

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v57

    goto/16 :goto_36

    :cond_47
    add-int/lit8 v58, p2, 0x37

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v58

    if-eqz v58, :cond_48

    const/16 v58, 0x1

    :goto_67
    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v58

    goto/16 :goto_37

    :cond_48
    const/16 v58, 0x0

    goto :goto_67

    :cond_49
    add-int/lit8 v59, p2, 0x38

    move-object/from16 v0, p1

    move/from16 v1, v59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v59

    if-eqz v59, :cond_4a

    const/16 v59, 0x1

    :goto_68
    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v59

    goto/16 :goto_38

    :cond_4a
    const/16 v59, 0x0

    goto :goto_68

    :cond_4b
    add-int/lit8 v60, p2, 0x39

    move-object/from16 v0, p1

    move/from16 v1, v60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v60

    goto/16 :goto_39

    :cond_4c
    add-int/lit8 v61, p2, 0x3a

    move-object/from16 v0, p1

    move/from16 v1, v61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    goto/16 :goto_3a

    :cond_4d
    add-int/lit8 v62, p2, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v62

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    goto/16 :goto_3b

    :cond_4e
    add-int/lit8 v63, p2, 0x3c

    move-object/from16 v0, p1

    move/from16 v1, v63

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v63

    if-eqz v63, :cond_4f

    const/16 v63, 0x1

    :goto_69
    invoke-static/range {v63 .. v63}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v63

    goto/16 :goto_3c

    :cond_4f
    const/16 v63, 0x0

    goto :goto_69

    :cond_50
    add-int/lit8 v64, p2, 0x3d

    move-object/from16 v0, p1

    move/from16 v1, v64

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v64

    if-eqz v64, :cond_51

    const/16 v64, 0x1

    :goto_6a
    invoke-static/range {v64 .. v64}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v64

    goto/16 :goto_3d

    :cond_51
    const/16 v64, 0x0

    goto :goto_6a

    :cond_52
    add-int/lit8 v65, p2, 0x3e

    move-object/from16 v0, p1

    move/from16 v1, v65

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v65

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v65

    goto/16 :goto_3e

    :cond_53
    add-int/lit8 v66, p2, 0x3f

    move-object/from16 v0, p1

    move/from16 v1, v66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v66

    goto/16 :goto_3f

    :cond_54
    add-int/lit8 v67, p2, 0x40

    move-object/from16 v0, p1

    move/from16 v1, v67

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v67

    if-eqz v67, :cond_55

    const/16 v67, 0x1

    :goto_6b
    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v67

    goto/16 :goto_40

    :cond_55
    const/16 v67, 0x0

    goto :goto_6b

    :cond_56
    add-int/lit8 v68, p2, 0x41

    move-object/from16 v0, p1

    move/from16 v1, v68

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v68

    if-eqz v68, :cond_57

    const/16 v68, 0x1

    :goto_6c
    invoke-static/range {v68 .. v68}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v68

    goto/16 :goto_41

    :cond_57
    const/16 v68, 0x0

    goto :goto_6c

    :cond_58
    add-int/lit8 v69, p2, 0x42

    move-object/from16 v0, p1

    move/from16 v1, v69

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v69

    goto/16 :goto_42

    :cond_59
    add-int/lit8 v70, p2, 0x43

    move-object/from16 v0, p1

    move/from16 v1, v70

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v70

    if-eqz v70, :cond_5a

    const/16 v70, 0x1

    :goto_6d
    invoke-static/range {v70 .. v70}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v70

    goto/16 :goto_43

    :cond_5a
    const/16 v70, 0x0

    goto :goto_6d

    :cond_5b
    add-int/lit8 v71, p2, 0x44

    move-object/from16 v0, p1

    move/from16 v1, v71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v71

    goto/16 :goto_44

    :cond_5c
    add-int/lit8 v72, p2, 0x45

    move-object/from16 v0, p1

    move/from16 v1, v72

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v72

    if-eqz v72, :cond_5d

    const/16 v72, 0x1

    :goto_6e
    invoke-static/range {v72 .. v72}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v72

    goto/16 :goto_45

    :cond_5d
    const/16 v72, 0x0

    goto :goto_6e

    :cond_5e
    add-int/lit8 v73, p2, 0x46

    move-object/from16 v0, p1

    move/from16 v1, v73

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v73

    goto/16 :goto_46

    :cond_5f
    add-int/lit8 v74, p2, 0x47

    move-object/from16 v0, p1

    move/from16 v1, v74

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v74

    if-eqz v74, :cond_60

    const/16 v74, 0x1

    :goto_6f
    invoke-static/range {v74 .. v74}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v74

    goto/16 :goto_47

    :cond_60
    const/16 v74, 0x0

    goto :goto_6f

    :cond_61
    add-int/lit8 v75, p2, 0x48

    move-object/from16 v0, p1

    move/from16 v1, v75

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v75

    goto/16 :goto_48

    :cond_62
    add-int/lit8 v76, p2, 0x49

    move-object/from16 v0, p1

    move/from16 v1, v76

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v76

    goto/16 :goto_49

    :cond_63
    add-int/lit8 v77, p2, 0x4a

    move-object/from16 v0, p1

    move/from16 v1, v77

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v77

    goto/16 :goto_4a

    :cond_64
    add-int/lit8 v78, p2, 0x4b

    move-object/from16 v0, p1

    move/from16 v1, v78

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v78

    goto/16 :goto_4b

    :cond_65
    add-int/lit8 v79, p2, 0x4c

    move-object/from16 v0, p1

    move/from16 v1, v79

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v79

    goto/16 :goto_4c

    :cond_66
    add-int/lit8 v80, p2, 0x4d

    move-object/from16 v0, p1

    move/from16 v1, v80

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v80

    goto/16 :goto_4d

    :cond_67
    add-int/lit8 v81, p2, 0x4e

    move-object/from16 v0, p1

    move/from16 v1, v81

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v81

    goto/16 :goto_4e

    :cond_68
    add-int/lit8 v82, p2, 0x4f

    move-object/from16 v0, p1

    move/from16 v1, v82

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v82

    goto/16 :goto_4f

    :cond_69
    add-int/lit8 v83, p2, 0x50

    move-object/from16 v0, p1

    move/from16 v1, v83

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v83

    if-eqz v83, :cond_6a

    const/16 v83, 0x1

    :goto_70
    invoke-static/range {v83 .. v83}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v83

    goto/16 :goto_50

    :cond_6a
    const/16 v83, 0x0

    goto :goto_70

    :cond_6b
    add-int/lit8 v84, p2, 0x51

    move-object/from16 v0, p1

    move/from16 v1, v84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v84

    if-eqz v84, :cond_6c

    const/16 v84, 0x1

    :goto_71
    invoke-static/range {v84 .. v84}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v84

    goto/16 :goto_51

    :cond_6c
    const/16 v84, 0x0

    goto :goto_71

    :cond_6d
    add-int/lit8 v85, p2, 0x52

    move-object/from16 v0, p1

    move/from16 v1, v85

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v86

    invoke-static/range {v86 .. v87}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v85

    goto/16 :goto_52

    :cond_6e
    add-int/lit8 v86, p2, 0x53

    move-object/from16 v0, p1

    move/from16 v1, v86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v86

    goto/16 :goto_53

    :cond_6f
    add-int/lit8 v87, p2, 0x54

    move-object/from16 v0, p1

    move/from16 v1, v87

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v87

    if-eqz v87, :cond_70

    const/16 v87, 0x1

    :goto_72
    invoke-static/range {v87 .. v87}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v87

    goto/16 :goto_54

    :cond_70
    const/16 v87, 0x0

    goto :goto_72

    :cond_71
    add-int/lit8 v88, p2, 0x55

    move-object/from16 v0, p1

    move/from16 v1, v88

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v88

    if-eqz v88, :cond_72

    const/16 v88, 0x1

    :goto_73
    invoke-static/range {v88 .. v88}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v88

    goto/16 :goto_55

    :cond_72
    const/16 v88, 0x0

    goto :goto_73

    :cond_73
    add-int/lit8 v89, p2, 0x56

    move-object/from16 v0, p1

    move/from16 v1, v89

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v89

    goto/16 :goto_56
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;->readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/Visitor;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/Visitor;I)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/Visitor;
    .param p3, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 576
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->meetingsTarget:Ljava/lang/Long;

    .line 577
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->gamePersona_nickname:Ljava/lang/String;

    .line 578
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->modifiedBy:Ljava/lang/String;

    .line 579
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->newPassword:Ljava/lang/String;

    .line 580
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->loginEmailSent:Ljava/lang/Boolean;

    .line 581
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    :goto_5
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->activeGamePlayer:Ljava/lang/Boolean;

    .line 582
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_6
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->password:Ljava/lang/String;

    .line 583
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_7
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->userType:Ljava/lang/Long;

    .line 584
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_8
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->timezone:Ljava/lang/String;

    .line 585
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    :goto_9
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->username:Ljava/lang/String;

    .line 586
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v1

    :goto_a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->mugShotUrl:Ljava/lang/String;

    .line 587
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v1

    :goto_b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showEmail:Ljava/lang/Boolean;

    .line 588
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v1

    :goto_c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->fullDescription:Ljava/lang/String;

    .line 589
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v1

    :goto_d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showTwitter:Ljava/lang/Boolean;

    .line 590
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v1

    :goto_e
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->messageDebits:Ljava/lang/Long;

    .line 591
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, v1

    :goto_f
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->lastNames:Ljava/lang/String;

    .line 592
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v1

    :goto_10
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->createdDate:Ljava/util/Date;

    .line 593
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, v1

    :goto_11
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->firstNames:Ljava/lang/String;

    .line 594
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, v1

    :goto_12
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->meetingDebits:Ljava/lang/Long;

    .line 595
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v1

    :goto_13
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->privateKey:Ljava/lang/String;

    .line 596
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object v0, v1

    :goto_14
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->totalPlayerPoints:Ljava/lang/Long;

    .line 597
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_19

    move-object v0, v1

    :goto_15
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showYouTubeUrl:Ljava/lang/Boolean;

    .line 598
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object v0, v1

    :goto_16
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->companyName:Ljava/lang/String;

    .line 599
    add-int/lit8 v0, p3, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object v0, v1

    :goto_17
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showBriefDescription:Ljava/lang/Boolean;

    .line 600
    add-int/lit8 v0, p3, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v0, v1

    :goto_18
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->createdBy:Ljava/lang/String;

    .line 601
    add-int/lit8 v0, p3, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object v0, v1

    :goto_19
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showBlogUrl:Ljava/lang/Boolean;

    .line 602
    add-int/lit8 v0, p3, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_21

    move-object v0, v1

    :goto_1a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->actionTypesLastRanOn:Ljava/lang/String;

    .line 603
    add-int/lit8 v0, p3, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_22

    move-object v0, v1

    :goto_1b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showReasonForAttending:Ljava/lang/Boolean;

    .line 604
    add-int/lit8 v0, p3, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_24

    move-object v0, v1

    :goto_1c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showVisitorType:Ljava/lang/Boolean;

    .line 605
    add-int/lit8 v0, p3, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_26

    move-object v0, v1

    :goto_1d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showFullDescription:Ljava/lang/Boolean;

    .line 606
    add-int/lit8 v0, p3, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_28

    move-object v0, v1

    :goto_1e
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->messageCredits:Ljava/lang/Long;

    .line 607
    add-int/lit8 v0, p3, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_29

    move-object v0, v1

    :goto_1f
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->importKey:Ljava/lang/String;

    .line 608
    add-int/lit8 v0, p3, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    move-object v0, v1

    :goto_20
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showJobTitle:Ljava/lang/Boolean;

    .line 609
    add-int/lit8 v0, p3, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object v0, v1

    :goto_21
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->hasSetProfile:Ljava/lang/Boolean;

    .line 610
    add-int/lit8 v0, p3, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    move-object v0, v1

    :goto_22
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->meetingCredits:Ljava/lang/Long;

    .line 611
    add-int/lit8 v0, p3, 0x23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    move-object v0, v1

    :goto_23
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->department:Ljava/lang/String;

    .line 612
    add-int/lit8 v0, p3, 0x24

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_30

    move-object v0, v1

    :goto_24
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->locale:Ljava/lang/String;

    .line 613
    add-int/lit8 v0, p3, 0x25

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_31

    move-object v0, v1

    :goto_25
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->reasonForAttending:Ljava/lang/String;

    .line 614
    add-int/lit8 v0, p3, 0x26

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_32

    move-object v0, v1

    :goto_26
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showInterests:Ljava/lang/Boolean;

    .line 615
    add-int/lit8 v0, p3, 0x27

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_34

    move-object v0, v1

    :goto_27
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->mugShot:Ljava/lang/Long;

    .line 616
    add-int/lit8 v0, p3, 0x28

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_35

    move-object v0, v1

    :goto_28
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->contact_youtubeUrl:Ljava/lang/String;

    .line 617
    add-int/lit8 v0, p3, 0x29

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_36

    move-object v0, v1

    :goto_29
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->contact_twitter:Ljava/lang/String;

    .line 618
    add-int/lit8 v0, p3, 0x2a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_37

    move-object v0, v1

    :goto_2a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->contact_linkedIn:Ljava/lang/String;

    .line 619
    add-int/lit8 v0, p3, 0x2b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_38

    move-object v0, v1

    :goto_2b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->contact_fax:Ljava/lang/String;

    .line 620
    add-int/lit8 v0, p3, 0x2c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_39

    move-object v0, v1

    :goto_2c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->contact_telephone2:Ljava/lang/String;

    .line 621
    add-int/lit8 v0, p3, 0x2d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    move-object v0, v1

    :goto_2d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->contact_email:Ljava/lang/String;

    .line 622
    add-int/lit8 v0, p3, 0x2e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    move-object v0, v1

    :goto_2e
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->contact_facebook:Ljava/lang/String;

    .line 623
    add-int/lit8 v0, p3, 0x2f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    move-object v0, v1

    :goto_2f
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->contact_www:Ljava/lang/String;

    .line 624
    add-int/lit8 v0, p3, 0x30

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    move-object v0, v1

    :goto_30
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->contact_telephone:Ljava/lang/String;

    .line 625
    add-int/lit8 v0, p3, 0x31

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3e

    move-object v0, v1

    :goto_31
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->contact_blogUrl:Ljava/lang/String;

    .line 626
    add-int/lit8 v0, p3, 0x32

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    move-object v0, v1

    :goto_32
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->id:Ljava/lang/Long;

    .line 627
    add-int/lit8 v0, p3, 0x33

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_40

    move-object v0, v1

    :goto_33
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showLinkedIn:Ljava/lang/Boolean;

    .line 628
    add-int/lit8 v0, p3, 0x34

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_42

    move-object v0, v1

    :goto_34
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showDepartment:Ljava/lang/Boolean;

    .line 629
    add-int/lit8 v0, p3, 0x35

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_44

    move-object v0, v1

    :goto_35
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showFax:Ljava/lang/Boolean;

    .line 630
    add-int/lit8 v0, p3, 0x36

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_46

    move-object v0, v1

    :goto_36
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->title:Ljava/lang/String;

    .line 631
    add-int/lit8 v0, p3, 0x37

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_47

    move-object v0, v1

    :goto_37
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showTelephone2:Ljava/lang/Boolean;

    .line 632
    add-int/lit8 v0, p3, 0x38

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_49

    move-object v0, v1

    :goto_38
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showName:Ljava/lang/Boolean;

    .line 633
    add-int/lit8 v0, p3, 0x39

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4b

    move-object v0, v1

    :goto_39
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->_id:Ljava/lang/String;

    .line 634
    add-int/lit8 v0, p3, 0x3a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    move-object v0, v1

    :goto_3a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->briefDescription:Ljava/lang/String;

    .line 635
    add-int/lit8 v0, p3, 0x3b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4d

    move-object v0, v1

    :goto_3b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->importBatch:Ljava/lang/String;

    .line 636
    add-int/lit8 v0, p3, 0x3c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    move-object v0, v1

    :goto_3c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showAddress:Ljava/lang/Boolean;

    .line 637
    add-int/lit8 v0, p3, 0x3d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_50

    move-object v0, v1

    :goto_3d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showCompanyName:Ljava/lang/Boolean;

    .line 638
    add-int/lit8 v0, p3, 0x3e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_52

    move-object v0, v1

    :goto_3e
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->lastAccessed:Ljava/util/Date;

    .line 639
    add-int/lit8 v0, p3, 0x3f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_53

    move-object v0, v1

    :goto_3f
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->jobTitle:Ljava/lang/String;

    .line 640
    add-int/lit8 v0, p3, 0x40

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_54

    move-object v0, v1

    :goto_40
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showMugShot:Ljava/lang/Boolean;

    .line 641
    add-int/lit8 v0, p3, 0x41

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_56

    move-object v0, v1

    :goto_41
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->enableGamification:Ljava/lang/Boolean;

    .line 642
    add-int/lit8 v0, p3, 0x42

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_58

    move-object v0, v1

    :goto_42
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->importCameFrom:Ljava/lang/String;

    .line 643
    add-int/lit8 v0, p3, 0x43

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_59

    move-object v0, v1

    :goto_43
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showWww:Ljava/lang/Boolean;

    .line 644
    add-int/lit8 v0, p3, 0x44

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    move-object v0, v1

    :goto_44
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->modifiedDate:Ljava/util/Date;

    .line 645
    add-int/lit8 v0, p3, 0x45

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5c

    move-object v0, v1

    :goto_45
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showTelephone:Ljava/lang/Boolean;

    .line 646
    add-int/lit8 v0, p3, 0x46

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5e

    move-object v0, v1

    :goto_46
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->visitorGroup:Ljava/lang/String;

    .line 647
    add-int/lit8 v0, p3, 0x47

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    move-object v0, v1

    :goto_47
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showFacebook:Ljava/lang/Boolean;

    .line 648
    add-int/lit8 v0, p3, 0x48

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_61

    move-object v0, v1

    :goto_48
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->address_county:Ljava/lang/String;

    .line 649
    add-int/lit8 v0, p3, 0x49

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_62

    move-object v0, v1

    :goto_49
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->address_postCode:Ljava/lang/String;

    .line 650
    add-int/lit8 v0, p3, 0x4a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_63

    move-object v0, v1

    :goto_4a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->address_address1:Ljava/lang/String;

    .line 651
    add-int/lit8 v0, p3, 0x4b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_64

    move-object v0, v1

    :goto_4b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->address_address2:Ljava/lang/String;

    .line 652
    add-int/lit8 v0, p3, 0x4c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_65

    move-object v0, v1

    :goto_4c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->address_town:Ljava/lang/String;

    .line 653
    add-int/lit8 v0, p3, 0x4d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_66

    move-object v0, v1

    :goto_4d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->address_address3:Ljava/lang/String;

    .line 654
    add-int/lit8 v0, p3, 0x4e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_67

    move-object v0, v1

    :goto_4e
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->address_country:Ljava/lang/String;

    .line 655
    add-int/lit8 v0, p3, 0x4f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_68

    move-object v0, v1

    :goto_4f
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->visitorType:Ljava/lang/String;

    .line 656
    add-int/lit8 v0, p3, 0x50

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_69

    move-object v0, v1

    :goto_50
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->qrCodeGenerated:Ljava/lang/Boolean;

    .line 657
    add-int/lit8 v0, p3, 0x51

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    move-object v0, v1

    :goto_51
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->showMe:Ljava/lang/Boolean;

    .line 658
    add-int/lit8 v0, p3, 0x52

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    move-object v0, v1

    :goto_52
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->exhibitor:Ljava/lang/Long;

    .line 659
    add-int/lit8 v0, p3, 0x53

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6e

    move-object v0, v1

    :goto_53
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->_namespace:Ljava/lang/String;

    .line 660
    add-int/lit8 v0, p3, 0x54

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    move-object v0, v1

    :goto_54
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->isFavourite:Ljava/lang/Boolean;

    .line 661
    add-int/lit8 v0, p3, 0x55

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_71

    move-object v0, v1

    :goto_55
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Visitor;->hasNote:Ljava/lang/Boolean;

    .line 662
    add-int/lit8 v0, p3, 0x56

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_73

    :goto_56
    iput-object v1, p2, Lcom/genie_connect/common/db/model/Visitor;->_dataversion:Ljava/lang/String;

    .line 663
    return-void

    .line 576
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 577
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 578
    :cond_2
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 579
    :cond_3
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 580
    :cond_4
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    :goto_57
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_4

    :cond_5
    move v0, v3

    goto :goto_57

    .line 581
    :cond_6
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_5

    :cond_7
    move v0, v3

    goto :goto_58

    .line 582
    :cond_8
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 583
    :cond_9
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_7

    .line 584
    :cond_a
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 585
    :cond_b
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 586
    :cond_c
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 587
    :cond_d
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_e

    move v0, v2

    :goto_59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_b

    :cond_e
    move v0, v3

    goto :goto_59

    .line 588
    :cond_f
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    .line 589
    :cond_10
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    :goto_5a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_d

    :cond_11
    move v0, v3

    goto :goto_5a

    .line 590
    :cond_12
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_e

    .line 591
    :cond_13
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    .line 592
    :cond_14
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_10

    .line 593
    :cond_15
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    .line 594
    :cond_16
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_12

    .line 595
    :cond_17
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 596
    :cond_18
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_14

    .line 597
    :cond_19
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v2

    :goto_5b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_15

    :cond_1a
    move v0, v3

    goto :goto_5b

    .line 598
    :cond_1b
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    .line 599
    :cond_1c
    add-int/lit8 v0, p3, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v2

    :goto_5c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_17

    :cond_1d
    move v0, v3

    goto :goto_5c

    .line 600
    :cond_1e
    add-int/lit8 v0, p3, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 601
    :cond_1f
    add-int/lit8 v0, p3, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_20

    move v0, v2

    :goto_5d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_19

    :cond_20
    move v0, v3

    goto :goto_5d

    .line 602
    :cond_21
    add-int/lit8 v0, p3, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a

    .line 603
    :cond_22
    add-int/lit8 v0, p3, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_23

    move v0, v2

    :goto_5e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1b

    :cond_23
    move v0, v3

    goto :goto_5e

    .line 604
    :cond_24
    add-int/lit8 v0, p3, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_25

    move v0, v2

    :goto_5f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1c

    :cond_25
    move v0, v3

    goto :goto_5f

    .line 605
    :cond_26
    add-int/lit8 v0, p3, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_27

    move v0, v2

    :goto_60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1d

    :cond_27
    move v0, v3

    goto :goto_60

    .line 606
    :cond_28
    add-int/lit8 v0, p3, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_1e

    .line 607
    :cond_29
    add-int/lit8 v0, p3, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1f

    .line 608
    :cond_2a
    add-int/lit8 v0, p3, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v2

    :goto_61
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_20

    :cond_2b
    move v0, v3

    goto :goto_61

    .line 609
    :cond_2c
    add-int/lit8 v0, p3, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v2

    :goto_62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_21

    :cond_2d
    move v0, v3

    goto :goto_62

    .line 610
    :cond_2e
    add-int/lit8 v0, p3, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_22

    .line 611
    :cond_2f
    add-int/lit8 v0, p3, 0x23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 612
    :cond_30
    add-int/lit8 v0, p3, 0x24

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    .line 613
    :cond_31
    add-int/lit8 v0, p3, 0x25

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_25

    .line 614
    :cond_32
    add-int/lit8 v0, p3, 0x26

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_33

    move v0, v2

    :goto_63
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_26

    :cond_33
    move v0, v3

    goto :goto_63

    .line 615
    :cond_34
    add-int/lit8 v0, p3, 0x27

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_27

    .line 616
    :cond_35
    add-int/lit8 v0, p3, 0x28

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_28

    .line 617
    :cond_36
    add-int/lit8 v0, p3, 0x29

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_29

    .line 618
    :cond_37
    add-int/lit8 v0, p3, 0x2a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2a

    .line 619
    :cond_38
    add-int/lit8 v0, p3, 0x2b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 620
    :cond_39
    add-int/lit8 v0, p3, 0x2c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2c

    .line 621
    :cond_3a
    add-int/lit8 v0, p3, 0x2d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d

    .line 622
    :cond_3b
    add-int/lit8 v0, p3, 0x2e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2e

    .line 623
    :cond_3c
    add-int/lit8 v0, p3, 0x2f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2f

    .line 624
    :cond_3d
    add-int/lit8 v0, p3, 0x30

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30

    .line 625
    :cond_3e
    add-int/lit8 v0, p3, 0x31

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 626
    :cond_3f
    add-int/lit8 v0, p3, 0x32

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_32

    .line 627
    :cond_40
    add-int/lit8 v0, p3, 0x33

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_41

    move v0, v2

    :goto_64
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_33

    :cond_41
    move v0, v3

    goto :goto_64

    .line 628
    :cond_42
    add-int/lit8 v0, p3, 0x34

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_43

    move v0, v2

    :goto_65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_34

    :cond_43
    move v0, v3

    goto :goto_65

    .line 629
    :cond_44
    add-int/lit8 v0, p3, 0x35

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_45

    move v0, v2

    :goto_66
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_35

    :cond_45
    move v0, v3

    goto :goto_66

    .line 630
    :cond_46
    add-int/lit8 v0, p3, 0x36

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_36

    .line 631
    :cond_47
    add-int/lit8 v0, p3, 0x37

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_48

    move v0, v2

    :goto_67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_37

    :cond_48
    move v0, v3

    goto :goto_67

    .line 632
    :cond_49
    add-int/lit8 v0, p3, 0x38

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_4a

    move v0, v2

    :goto_68
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_38

    :cond_4a
    move v0, v3

    goto :goto_68

    .line 633
    :cond_4b
    add-int/lit8 v0, p3, 0x39

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_39

    .line 634
    :cond_4c
    add-int/lit8 v0, p3, 0x3a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3a

    .line 635
    :cond_4d
    add-int/lit8 v0, p3, 0x3b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3b

    .line 636
    :cond_4e
    add-int/lit8 v0, p3, 0x3c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_4f

    move v0, v2

    :goto_69
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_3c

    :cond_4f
    move v0, v3

    goto :goto_69

    .line 637
    :cond_50
    add-int/lit8 v0, p3, 0x3d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_51

    move v0, v2

    :goto_6a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_3d

    :cond_51
    move v0, v3

    goto :goto_6a

    .line 638
    :cond_52
    add-int/lit8 v0, p3, 0x3e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_3e

    .line 639
    :cond_53
    add-int/lit8 v0, p3, 0x3f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3f

    .line 640
    :cond_54
    add-int/lit8 v0, p3, 0x40

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_55

    move v0, v2

    :goto_6b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_40

    :cond_55
    move v0, v3

    goto :goto_6b

    .line 641
    :cond_56
    add-int/lit8 v0, p3, 0x41

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_57

    move v0, v2

    :goto_6c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_41

    :cond_57
    move v0, v3

    goto :goto_6c

    .line 642
    :cond_58
    add-int/lit8 v0, p3, 0x42

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_42

    .line 643
    :cond_59
    add-int/lit8 v0, p3, 0x43

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_5a

    move v0, v2

    :goto_6d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_43

    :cond_5a
    move v0, v3

    goto :goto_6d

    .line 644
    :cond_5b
    add-int/lit8 v0, p3, 0x44

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_44

    .line 645
    :cond_5c
    add-int/lit8 v0, p3, 0x45

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_5d

    move v0, v2

    :goto_6e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_45

    :cond_5d
    move v0, v3

    goto :goto_6e

    .line 646
    :cond_5e
    add-int/lit8 v0, p3, 0x46

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_46

    .line 647
    :cond_5f
    add-int/lit8 v0, p3, 0x47

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_60

    move v0, v2

    :goto_6f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_47

    :cond_60
    move v0, v3

    goto :goto_6f

    .line 648
    :cond_61
    add-int/lit8 v0, p3, 0x48

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_48

    .line 649
    :cond_62
    add-int/lit8 v0, p3, 0x49

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_49

    .line 650
    :cond_63
    add-int/lit8 v0, p3, 0x4a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4a

    .line 651
    :cond_64
    add-int/lit8 v0, p3, 0x4b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4b

    .line 652
    :cond_65
    add-int/lit8 v0, p3, 0x4c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4c

    .line 653
    :cond_66
    add-int/lit8 v0, p3, 0x4d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4d

    .line 654
    :cond_67
    add-int/lit8 v0, p3, 0x4e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4e

    .line 655
    :cond_68
    add-int/lit8 v0, p3, 0x4f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4f

    .line 656
    :cond_69
    add-int/lit8 v0, p3, 0x50

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_6a

    move v0, v2

    :goto_70
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_50

    :cond_6a
    move v0, v3

    goto :goto_70

    .line 657
    :cond_6b
    add-int/lit8 v0, p3, 0x51

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_6c

    move v0, v2

    :goto_71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_51

    :cond_6c
    move v0, v3

    goto :goto_71

    .line 658
    :cond_6d
    add-int/lit8 v0, p3, 0x52

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_52

    .line 659
    :cond_6e
    add-int/lit8 v0, p3, 0x53

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_53

    .line 660
    :cond_6f
    add-int/lit8 v0, p3, 0x54

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_70

    move v0, v2

    :goto_72
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_54

    :cond_70
    move v0, v3

    goto :goto_72

    .line 661
    :cond_71
    add-int/lit8 v0, p3, 0x55

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_72

    :goto_73
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_55

    :cond_72
    move v2, v3

    goto :goto_73

    .line 662
    :cond_73
    add-int/lit8 v0, p3, 0x56

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_56
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/Visitor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;->readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/Visitor;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 475
    add-int/lit8 v0, p2, 0x32

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x32

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
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/genie_connect/common/db/model/Visitor;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/Visitor;
    .param p2, "rowId"    # J

    .prologue
    .line 668
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/genie_connect/common/db/model/Visitor;->id:Ljava/lang/Long;

    .line 669
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
    check-cast p1, Lcom/genie_connect/common/db/model/Visitor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/VisitorDao;->updateKeyAfterInsert(Lcom/genie_connect/common/db/model/Visitor;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
