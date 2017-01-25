.class public Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;
.super Lde/greenrobot/dao/AbstractDao;
.source "SpeakerDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/dao/AbstractDao",
        "<",
        "Lcom/genie_connect/common/db/model/Speaker;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final TABLENAME:Ljava/lang/String; = "speakers"


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
.method protected bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/Speaker;)V
    .locals 62
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/Speaker;

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 36
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->gamePersona_nickname:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 37
    .local v33, "gamePersona_nickname":Ljava/lang/String;
    if-eqz v33, :cond_0

    .line 38
    const/16 v58, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 41
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->modifiedBy:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 42
    .local v45, "modifiedBy":Ljava/lang/String;
    if-eqz v45, :cond_1

    .line 43
    const/16 v58, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 46
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->newPassword:Ljava/lang/String;

    move-object/from16 v49, v0

    .line 47
    .local v49, "newPassword":Ljava/lang/String;
    if-eqz v49, :cond_2

    .line 48
    const/16 v58, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 51
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->loginEmailSent:Ljava/lang/Boolean;

    move-object/from16 v44, v0

    .line 52
    .local v44, "loginEmailSent":Ljava/lang/Boolean;
    if-eqz v44, :cond_3

    .line 53
    const/16 v60, 0x4

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v58

    if-eqz v58, :cond_36

    const-wide/16 v58, 0x1

    :goto_0
    move-object/from16 v0, p1

    move/from16 v1, v60

    move-wide/from16 v2, v58

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 56
    :cond_3
    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/genie_connect/common/db/model/Speaker;->activeGamePlayer:Ljava/lang/Boolean;

    .line 57
    .local v7, "activeGamePlayer":Ljava/lang/Boolean;
    if-eqz v7, :cond_4

    .line 58
    const/16 v60, 0x5

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v58

    if-eqz v58, :cond_37

    const-wide/16 v58, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, v60

    move-wide/from16 v2, v58

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 61
    :cond_4
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->password:Ljava/lang/String;

    move-object/from16 v50, v0

    .line 62
    .local v50, "password":Ljava/lang/String;
    if-eqz v50, :cond_5

    .line 63
    const/16 v58, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 66
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->userType:Ljava/lang/Long;

    move-object/from16 v55, v0

    .line 67
    .local v55, "userType":Ljava/lang/Long;
    if-eqz v55, :cond_6

    .line 68
    const/16 v58, 0x7

    invoke-virtual/range {v55 .. v55}, Ljava/lang/Long;->longValue()J

    move-result-wide v60

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-wide/from16 v2, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 71
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->timezone:Ljava/lang/String;

    move-object/from16 v52, v0

    .line 72
    .local v52, "timezone":Ljava/lang/String;
    if-eqz v52, :cond_7

    .line 73
    const/16 v58, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 76
    :cond_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->username:Ljava/lang/String;

    move-object/from16 v56, v0

    .line 77
    .local v56, "username":Ljava/lang/String;
    if-eqz v56, :cond_8

    .line 78
    const/16 v58, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 81
    :cond_8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->mugShotUrl:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 82
    .local v48, "mugShotUrl":Ljava/lang/String;
    if-eqz v48, :cond_9

    .line 83
    const/16 v58, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 86
    :cond_9
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->fullDescription:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 87
    .local v32, "fullDescription":Ljava/lang/String;
    if-eqz v32, :cond_a

    .line 88
    const/16 v58, 0xb

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 91
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->lastNames:Ljava/lang/String;

    move-object/from16 v42, v0

    .line 92
    .local v42, "lastNames":Ljava/lang/String;
    if-eqz v42, :cond_b

    .line 93
    const/16 v58, 0xc

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 96
    :cond_b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->createdDate:Ljava/util/Date;

    move-object/from16 v28, v0

    .line 97
    .local v28, "createdDate":Ljava/util/Date;
    if-eqz v28, :cond_c

    .line 98
    const/16 v58, 0xd

    invoke-virtual/range {v28 .. v28}, Ljava/util/Date;->getTime()J

    move-result-wide v60

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-wide/from16 v2, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 101
    :cond_c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->firstNames:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 102
    .local v31, "firstNames":Ljava/lang/String;
    if-eqz v31, :cond_d

    .line 103
    const/16 v58, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 106
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->totalPlayerPoints:Ljava/lang/Long;

    move-object/from16 v54, v0

    .line 107
    .local v54, "totalPlayerPoints":Ljava/lang/Long;
    if-eqz v54, :cond_e

    .line 108
    const/16 v58, 0xf

    invoke-virtual/range {v54 .. v54}, Ljava/lang/Long;->longValue()J

    move-result-wide v60

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-wide/from16 v2, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 111
    :cond_e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->companyName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 112
    .local v16, "companyName":Ljava/lang/String;
    if-eqz v16, :cond_f

    .line 113
    const/16 v58, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 116
    :cond_f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->createdBy:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 117
    .local v27, "createdBy":Ljava/lang/String;
    if-eqz v27, :cond_10

    .line 118
    const/16 v58, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 121
    :cond_10
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->shareUrl:Ljava/lang/String;

    move-object/from16 v51, v0

    .line 122
    .local v51, "shareUrl":Ljava/lang/String;
    if-eqz v51, :cond_11

    .line 123
    const/16 v58, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 126
    :cond_11
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->importKey:Ljava/lang/String;

    move-object/from16 v38, v0

    .line 127
    .local v38, "importKey":Ljava/lang/String;
    if-eqz v38, :cond_12

    .line 128
    const/16 v58, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 131
    :cond_12
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->department:Ljava/lang/String;

    move-object/from16 v29, v0

    .line 132
    .local v29, "department":Ljava/lang/String;
    if-eqz v29, :cond_13

    .line 133
    const/16 v58, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 136
    :cond_13
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->locale:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 137
    .local v43, "locale":Ljava/lang/String;
    if-eqz v43, :cond_14

    .line 138
    const/16 v58, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 141
    :cond_14
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->mugShot:Ljava/lang/Long;

    move-object/from16 v47, v0

    .line 142
    .local v47, "mugShot":Ljava/lang/Long;
    if-eqz v47, :cond_15

    .line 143
    const/16 v58, 0x16

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Long;->longValue()J

    move-result-wide v60

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-wide/from16 v2, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    :cond_15
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->contact_youtubeUrl:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 147
    .local v26, "contact_youtubeUrl":Ljava/lang/String;
    if-eqz v26, :cond_16

    .line 148
    const/16 v58, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 151
    :cond_16
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->contact_twitter:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 152
    .local v24, "contact_twitter":Ljava/lang/String;
    if-eqz v24, :cond_17

    .line 153
    const/16 v58, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 156
    :cond_17
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->contact_linkedIn:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 157
    .local v21, "contact_linkedIn":Ljava/lang/String;
    if-eqz v21, :cond_18

    .line 158
    const/16 v58, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 161
    :cond_18
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->contact_fax:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 162
    .local v20, "contact_fax":Ljava/lang/String;
    if-eqz v20, :cond_19

    .line 163
    const/16 v58, 0x1a

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 166
    :cond_19
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->contact_telephone2:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 167
    .local v23, "contact_telephone2":Ljava/lang/String;
    if-eqz v23, :cond_1a

    .line 168
    const/16 v58, 0x1b

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 171
    :cond_1a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->contact_email:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 172
    .local v18, "contact_email":Ljava/lang/String;
    if-eqz v18, :cond_1b

    .line 173
    const/16 v58, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 176
    :cond_1b
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->contact_facebook:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 177
    .local v19, "contact_facebook":Ljava/lang/String;
    if-eqz v19, :cond_1c

    .line 178
    const/16 v58, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 181
    :cond_1c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->contact_www:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 182
    .local v25, "contact_www":Ljava/lang/String;
    if-eqz v25, :cond_1d

    .line 183
    const/16 v58, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 186
    :cond_1d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->contact_telephone:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 187
    .local v22, "contact_telephone":Ljava/lang/String;
    if-eqz v22, :cond_1e

    .line 188
    const/16 v58, 0x1f

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 191
    :cond_1e
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->contact_blogUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 192
    .local v17, "contact_blogUrl":Ljava/lang/String;
    if-eqz v17, :cond_1f

    .line 193
    const/16 v58, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 196
    :cond_1f
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->id:Ljava/lang/Long;

    move-object/from16 v35, v0

    .line 197
    .local v35, "id":Ljava/lang/Long;
    if-eqz v35, :cond_20

    .line 198
    const/16 v58, 0x21

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v60

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-wide/from16 v2, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 201
    :cond_20
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->title:Ljava/lang/String;

    move-object/from16 v53, v0

    .line 202
    .local v53, "title":Ljava/lang/String;
    if-eqz v53, :cond_21

    .line 203
    const/16 v58, 0x22

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 206
    :cond_21
    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/genie_connect/common/db/model/Speaker;->_id:Ljava/lang/String;

    .line 207
    .local v5, "_id":Ljava/lang/String;
    if-eqz v5, :cond_22

    .line 208
    const/16 v58, 0x23

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 211
    :cond_22
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/genie_connect/common/db/model/Speaker;->briefDescription:Ljava/lang/String;

    .line 212
    .local v15, "briefDescription":Ljava/lang/String;
    if-eqz v15, :cond_23

    .line 213
    const/16 v58, 0x24

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1, v15}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 216
    :cond_23
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->importBatch:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 217
    .local v36, "importBatch":Ljava/lang/String;
    if-eqz v36, :cond_24

    .line 218
    const/16 v58, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 221
    :cond_24
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->lastAccessed:Ljava/util/Date;

    move-object/from16 v41, v0

    .line 222
    .local v41, "lastAccessed":Ljava/util/Date;
    if-eqz v41, :cond_25

    .line 223
    const/16 v58, 0x26

    invoke-virtual/range {v41 .. v41}, Ljava/util/Date;->getTime()J

    move-result-wide v60

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-wide/from16 v2, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 226
    :cond_25
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->jobTitle:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 227
    .local v40, "jobTitle":Ljava/lang/String;
    if-eqz v40, :cond_26

    .line 228
    const/16 v58, 0x27

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 231
    :cond_26
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->enableGamification:Ljava/lang/Boolean;

    move-object/from16 v30, v0

    .line 232
    .local v30, "enableGamification":Ljava/lang/Boolean;
    if-eqz v30, :cond_27

    .line 233
    const/16 v60, 0x28

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v58

    if-eqz v58, :cond_38

    const-wide/16 v58, 0x1

    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v60

    move-wide/from16 v2, v58

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 236
    :cond_27
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->importCameFrom:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 237
    .local v37, "importCameFrom":Ljava/lang/String;
    if-eqz v37, :cond_28

    .line 238
    const/16 v58, 0x29

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 241
    :cond_28
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->visitor:Ljava/lang/Long;

    move-object/from16 v57, v0

    .line 242
    .local v57, "visitor":Ljava/lang/Long;
    if-eqz v57, :cond_29

    .line 243
    const/16 v58, 0x2a

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Long;->longValue()J

    move-result-wide v60

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-wide/from16 v2, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 246
    :cond_29
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->modifiedDate:Ljava/util/Date;

    move-object/from16 v46, v0

    .line 247
    .local v46, "modifiedDate":Ljava/util/Date;
    if-eqz v46, :cond_2a

    .line 248
    const/16 v58, 0x2b

    invoke-virtual/range {v46 .. v46}, Ljava/util/Date;->getTime()J

    move-result-wide v60

    move-object/from16 v0, p1

    move/from16 v1, v58

    move-wide/from16 v2, v60

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 251
    :cond_2a
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/genie_connect/common/db/model/Speaker;->address_county:Ljava/lang/String;

    .line 252
    .local v12, "address_county":Ljava/lang/String;
    if-eqz v12, :cond_2b

    .line 253
    const/16 v58, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1, v12}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 256
    :cond_2b
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/genie_connect/common/db/model/Speaker;->address_postCode:Ljava/lang/String;

    .line 257
    .local v13, "address_postCode":Ljava/lang/String;
    if-eqz v13, :cond_2c

    .line 258
    const/16 v58, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 261
    :cond_2c
    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/genie_connect/common/db/model/Speaker;->address_address1:Ljava/lang/String;

    .line 262
    .local v8, "address_address1":Ljava/lang/String;
    if-eqz v8, :cond_2d

    .line 263
    const/16 v58, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1, v8}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 266
    :cond_2d
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/genie_connect/common/db/model/Speaker;->address_address2:Ljava/lang/String;

    .line 267
    .local v9, "address_address2":Ljava/lang/String;
    if-eqz v9, :cond_2e

    .line 268
    const/16 v58, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 271
    :cond_2e
    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/genie_connect/common/db/model/Speaker;->address_town:Ljava/lang/String;

    .line 272
    .local v14, "address_town":Ljava/lang/String;
    if-eqz v14, :cond_2f

    .line 273
    const/16 v58, 0x30

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1, v14}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 276
    :cond_2f
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/genie_connect/common/db/model/Speaker;->address_address3:Ljava/lang/String;

    .line 277
    .local v10, "address_address3":Ljava/lang/String;
    if-eqz v10, :cond_30

    .line 278
    const/16 v58, 0x31

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 281
    :cond_30
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/genie_connect/common/db/model/Speaker;->address_country:Ljava/lang/String;

    .line 282
    .local v11, "address_country":Ljava/lang/String;
    if-eqz v11, :cond_31

    .line 283
    const/16 v58, 0x32

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 286
    :cond_31
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/genie_connect/common/db/model/Speaker;->_namespace:Ljava/lang/String;

    .line 287
    .local v6, "_namespace":Ljava/lang/String;
    if-eqz v6, :cond_32

    .line 288
    const/16 v58, 0x33

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 291
    :cond_32
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->isFavourite:Ljava/lang/Boolean;

    move-object/from16 v39, v0

    .line 292
    .local v39, "isFavourite":Ljava/lang/Boolean;
    if-eqz v39, :cond_33

    .line 293
    const/16 v60, 0x34

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v58

    if-eqz v58, :cond_39

    const-wide/16 v58, 0x1

    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, v60

    move-wide/from16 v2, v58

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 296
    :cond_33
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/genie_connect/common/db/model/Speaker;->hasNote:Ljava/lang/Boolean;

    move-object/from16 v34, v0

    .line 297
    .local v34, "hasNote":Ljava/lang/Boolean;
    if-eqz v34, :cond_34

    .line 298
    const/16 v60, 0x35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v58

    if-eqz v58, :cond_3a

    const-wide/16 v58, 0x1

    :goto_4
    move-object/from16 v0, p1

    move/from16 v1, v60

    move-wide/from16 v2, v58

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 301
    :cond_34
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/genie_connect/common/db/model/Speaker;->_dataversion:Ljava/lang/String;

    .line 302
    .local v4, "_dataversion":Ljava/lang/String;
    if-eqz v4, :cond_35

    .line 303
    const/16 v58, 0x36

    move-object/from16 v0, p1

    move/from16 v1, v58

    invoke-virtual {v0, v1, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 305
    :cond_35
    return-void

    .line 53
    .end local v4    # "_dataversion":Ljava/lang/String;
    .end local v5    # "_id":Ljava/lang/String;
    .end local v6    # "_namespace":Ljava/lang/String;
    .end local v7    # "activeGamePlayer":Ljava/lang/Boolean;
    .end local v8    # "address_address1":Ljava/lang/String;
    .end local v9    # "address_address2":Ljava/lang/String;
    .end local v10    # "address_address3":Ljava/lang/String;
    .end local v11    # "address_country":Ljava/lang/String;
    .end local v12    # "address_county":Ljava/lang/String;
    .end local v13    # "address_postCode":Ljava/lang/String;
    .end local v14    # "address_town":Ljava/lang/String;
    .end local v15    # "briefDescription":Ljava/lang/String;
    .end local v16    # "companyName":Ljava/lang/String;
    .end local v17    # "contact_blogUrl":Ljava/lang/String;
    .end local v18    # "contact_email":Ljava/lang/String;
    .end local v19    # "contact_facebook":Ljava/lang/String;
    .end local v20    # "contact_fax":Ljava/lang/String;
    .end local v21    # "contact_linkedIn":Ljava/lang/String;
    .end local v22    # "contact_telephone":Ljava/lang/String;
    .end local v23    # "contact_telephone2":Ljava/lang/String;
    .end local v24    # "contact_twitter":Ljava/lang/String;
    .end local v25    # "contact_www":Ljava/lang/String;
    .end local v26    # "contact_youtubeUrl":Ljava/lang/String;
    .end local v27    # "createdBy":Ljava/lang/String;
    .end local v28    # "createdDate":Ljava/util/Date;
    .end local v29    # "department":Ljava/lang/String;
    .end local v30    # "enableGamification":Ljava/lang/Boolean;
    .end local v31    # "firstNames":Ljava/lang/String;
    .end local v32    # "fullDescription":Ljava/lang/String;
    .end local v34    # "hasNote":Ljava/lang/Boolean;
    .end local v35    # "id":Ljava/lang/Long;
    .end local v36    # "importBatch":Ljava/lang/String;
    .end local v37    # "importCameFrom":Ljava/lang/String;
    .end local v38    # "importKey":Ljava/lang/String;
    .end local v39    # "isFavourite":Ljava/lang/Boolean;
    .end local v40    # "jobTitle":Ljava/lang/String;
    .end local v41    # "lastAccessed":Ljava/util/Date;
    .end local v42    # "lastNames":Ljava/lang/String;
    .end local v43    # "locale":Ljava/lang/String;
    .end local v46    # "modifiedDate":Ljava/util/Date;
    .end local v47    # "mugShot":Ljava/lang/Long;
    .end local v48    # "mugShotUrl":Ljava/lang/String;
    .end local v50    # "password":Ljava/lang/String;
    .end local v51    # "shareUrl":Ljava/lang/String;
    .end local v52    # "timezone":Ljava/lang/String;
    .end local v53    # "title":Ljava/lang/String;
    .end local v54    # "totalPlayerPoints":Ljava/lang/Long;
    .end local v55    # "userType":Ljava/lang/Long;
    .end local v56    # "username":Ljava/lang/String;
    .end local v57    # "visitor":Ljava/lang/Long;
    :cond_36
    const-wide/16 v58, 0x0

    goto/16 :goto_0

    .line 58
    .restart local v7    # "activeGamePlayer":Ljava/lang/Boolean;
    :cond_37
    const-wide/16 v58, 0x0

    goto/16 :goto_1

    .line 233
    .restart local v5    # "_id":Ljava/lang/String;
    .restart local v15    # "briefDescription":Ljava/lang/String;
    .restart local v16    # "companyName":Ljava/lang/String;
    .restart local v17    # "contact_blogUrl":Ljava/lang/String;
    .restart local v18    # "contact_email":Ljava/lang/String;
    .restart local v19    # "contact_facebook":Ljava/lang/String;
    .restart local v20    # "contact_fax":Ljava/lang/String;
    .restart local v21    # "contact_linkedIn":Ljava/lang/String;
    .restart local v22    # "contact_telephone":Ljava/lang/String;
    .restart local v23    # "contact_telephone2":Ljava/lang/String;
    .restart local v24    # "contact_twitter":Ljava/lang/String;
    .restart local v25    # "contact_www":Ljava/lang/String;
    .restart local v26    # "contact_youtubeUrl":Ljava/lang/String;
    .restart local v27    # "createdBy":Ljava/lang/String;
    .restart local v28    # "createdDate":Ljava/util/Date;
    .restart local v29    # "department":Ljava/lang/String;
    .restart local v30    # "enableGamification":Ljava/lang/Boolean;
    .restart local v31    # "firstNames":Ljava/lang/String;
    .restart local v32    # "fullDescription":Ljava/lang/String;
    .restart local v35    # "id":Ljava/lang/Long;
    .restart local v36    # "importBatch":Ljava/lang/String;
    .restart local v38    # "importKey":Ljava/lang/String;
    .restart local v40    # "jobTitle":Ljava/lang/String;
    .restart local v41    # "lastAccessed":Ljava/util/Date;
    .restart local v42    # "lastNames":Ljava/lang/String;
    .restart local v43    # "locale":Ljava/lang/String;
    .restart local v47    # "mugShot":Ljava/lang/Long;
    .restart local v48    # "mugShotUrl":Ljava/lang/String;
    .restart local v50    # "password":Ljava/lang/String;
    .restart local v51    # "shareUrl":Ljava/lang/String;
    .restart local v52    # "timezone":Ljava/lang/String;
    .restart local v53    # "title":Ljava/lang/String;
    .restart local v54    # "totalPlayerPoints":Ljava/lang/Long;
    .restart local v55    # "userType":Ljava/lang/Long;
    .restart local v56    # "username":Ljava/lang/String;
    :cond_38
    const-wide/16 v58, 0x0

    goto/16 :goto_2

    .line 293
    .restart local v6    # "_namespace":Ljava/lang/String;
    .restart local v8    # "address_address1":Ljava/lang/String;
    .restart local v9    # "address_address2":Ljava/lang/String;
    .restart local v10    # "address_address3":Ljava/lang/String;
    .restart local v11    # "address_country":Ljava/lang/String;
    .restart local v12    # "address_county":Ljava/lang/String;
    .restart local v13    # "address_postCode":Ljava/lang/String;
    .restart local v14    # "address_town":Ljava/lang/String;
    .restart local v37    # "importCameFrom":Ljava/lang/String;
    .restart local v39    # "isFavourite":Ljava/lang/Boolean;
    .restart local v46    # "modifiedDate":Ljava/util/Date;
    .restart local v57    # "visitor":Ljava/lang/Long;
    :cond_39
    const-wide/16 v58, 0x0

    goto :goto_3

    .line 298
    .restart local v34    # "hasNote":Ljava/lang/Boolean;
    :cond_3a
    const-wide/16 v58, 0x0

    goto :goto_4
.end method

.method protected bridge synthetic bindValues(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/Speaker;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;->bindValues(Landroid/database/sqlite/SQLiteStatement;Lcom/genie_connect/common/db/model/Speaker;)V

    return-void
.end method

.method public getKey(Lcom/genie_connect/common/db/model/Speaker;)Ljava/lang/Long;
    .locals 1
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/Speaker;

    .prologue
    .line 444
    if-eqz p1, :cond_0

    .line 445
    iget-object v0, p1, Lcom/genie_connect/common/db/model/Speaker;->id:Ljava/lang/Long;

    .line 447
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
    check-cast p1, Lcom/genie_connect/common/db/model/Speaker;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;->getKey(Lcom/genie_connect/common/db/model/Speaker;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected isEntityUpdateable()Z
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x1

    return v0
.end method

.method public readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/Speaker;
    .locals 57
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 316
    new-instance v2, Lcom/genie_connect/common/db/model/Speaker;

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

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    :goto_4
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_7

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

    if-eqz v15, :cond_e

    const/4 v15, 0x0

    :goto_c
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    :goto_d
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    :goto_e
    add-int/lit8 v18, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    :goto_f
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    :goto_10
    add-int/lit8 v20, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-eqz v20, :cond_13

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

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    :goto_14
    add-int/lit8 v24, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    :goto_15
    add-int/lit8 v25, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v25

    if-eqz v25, :cond_18

    const/16 v25, 0x0

    :goto_16
    add-int/lit8 v26, p2, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-eqz v26, :cond_19

    const/16 v26, 0x0

    :goto_17
    add-int/lit8 v27, p2, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    if-eqz v27, :cond_1a

    const/16 v27, 0x0

    :goto_18
    add-int/lit8 v28, p2, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v28

    if-eqz v28, :cond_1b

    const/16 v28, 0x0

    :goto_19
    add-int/lit8 v29, p2, 0x1a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    if-eqz v29, :cond_1c

    const/16 v29, 0x0

    :goto_1a
    add-int/lit8 v30, p2, 0x1b

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v30

    if-eqz v30, :cond_1d

    const/16 v30, 0x0

    :goto_1b
    add-int/lit8 v31, p2, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v31

    if-eqz v31, :cond_1e

    const/16 v31, 0x0

    :goto_1c
    add-int/lit8 v32, p2, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    if-eqz v32, :cond_1f

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
    add-int/lit8 v34, p2, 0x1f

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v34

    if-eqz v34, :cond_21

    const/16 v34, 0x0

    :goto_1f
    add-int/lit8 v35, p2, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v35

    if-eqz v35, :cond_22

    const/16 v35, 0x0

    :goto_20
    add-int/lit8 v36, p2, 0x21

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v36

    if-eqz v36, :cond_23

    const/16 v36, 0x0

    :goto_21
    add-int/lit8 v37, p2, 0x22

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v37

    if-eqz v37, :cond_24

    const/16 v37, 0x0

    :goto_22
    add-int/lit8 v38, p2, 0x23

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v38

    if-eqz v38, :cond_25

    const/16 v38, 0x0

    :goto_23
    add-int/lit8 v39, p2, 0x24

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v39

    if-eqz v39, :cond_26

    const/16 v39, 0x0

    :goto_24
    add-int/lit8 v40, p2, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-eqz v40, :cond_27

    const/16 v40, 0x0

    :goto_25
    add-int/lit8 v41, p2, 0x26

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v41

    if-eqz v41, :cond_28

    const/16 v41, 0x0

    :goto_26
    add-int/lit8 v42, p2, 0x27

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v42

    if-eqz v42, :cond_29

    const/16 v42, 0x0

    :goto_27
    add-int/lit8 v43, p2, 0x28

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v43

    if-eqz v43, :cond_2b

    const/16 v43, 0x0

    :goto_28
    add-int/lit8 v44, p2, 0x29

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v44

    if-eqz v44, :cond_2c

    const/16 v44, 0x0

    :goto_29
    add-int/lit8 v45, p2, 0x2a

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v45

    if-eqz v45, :cond_2d

    const/16 v45, 0x0

    :goto_2a
    add-int/lit8 v46, p2, 0x2b

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v46

    if-eqz v46, :cond_2e

    const/16 v46, 0x0

    :goto_2b
    add-int/lit8 v47, p2, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v47

    if-eqz v47, :cond_2f

    const/16 v47, 0x0

    :goto_2c
    add-int/lit8 v48, p2, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v48

    if-eqz v48, :cond_30

    const/16 v48, 0x0

    :goto_2d
    add-int/lit8 v49, p2, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v49

    if-eqz v49, :cond_31

    const/16 v49, 0x0

    :goto_2e
    add-int/lit8 v50, p2, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v50

    if-eqz v50, :cond_32

    const/16 v50, 0x0

    :goto_2f
    add-int/lit8 v51, p2, 0x30

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v51

    if-eqz v51, :cond_33

    const/16 v51, 0x0

    :goto_30
    add-int/lit8 v52, p2, 0x31

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v52

    if-eqz v52, :cond_34

    const/16 v52, 0x0

    :goto_31
    add-int/lit8 v53, p2, 0x32

    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v53

    if-eqz v53, :cond_35

    const/16 v53, 0x0

    :goto_32
    add-int/lit8 v54, p2, 0x33

    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v54

    if-eqz v54, :cond_36

    const/16 v54, 0x0

    :goto_33
    add-int/lit8 v55, p2, 0x34

    move-object/from16 v0, p1

    move/from16 v1, v55

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v55

    if-eqz v55, :cond_38

    const/16 v55, 0x0

    :goto_34
    add-int/lit8 v56, p2, 0x35

    move-object/from16 v0, p1

    move/from16 v1, v56

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v56

    if-eqz v56, :cond_3a

    const/16 v56, 0x0

    :goto_35
    invoke-direct/range {v2 .. v56}, Lcom/genie_connect/common/db/model/Speaker;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Long;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 372
    .local v2, "entity":Lcom/genie_connect/common/db/model/Speaker;
    return-object v2

    .line 316
    .end local v2    # "entity":Lcom/genie_connect/common/db/model/Speaker;
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

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v6, p2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getShort(I)S

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    :goto_36
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_3

    :cond_4
    const/4 v6, 0x0

    goto :goto_36

    :cond_5
    add-int/lit8 v7, p2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getShort(I)S

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_37
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_4

    :cond_6
    const/4 v7, 0x0

    goto :goto_37

    :cond_7
    add-int/lit8 v8, p2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    :cond_8
    add-int/lit8 v9, p2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto/16 :goto_6

    :cond_9
    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

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

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_b

    :cond_e
    add-int/lit8 v15, p2, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    goto/16 :goto_c

    :cond_f
    add-int/lit8 v16, p2, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_d

    :cond_10
    add-int/lit8 v17, p2, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    goto/16 :goto_e

    :cond_11
    add-int/lit8 v18, p2, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_f

    :cond_12
    add-int/lit8 v19, p2, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_10

    :cond_13
    add-int/lit8 v20, p2, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_11

    :cond_14
    add-int/lit8 v21, p2, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_12

    :cond_15
    add-int/lit8 v22, p2, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_13

    :cond_16
    add-int/lit8 v23, p2, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_14

    :cond_17
    add-int/lit8 v24, p2, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    goto/16 :goto_15

    :cond_18
    add-int/lit8 v25, p2, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_16

    :cond_19
    add-int/lit8 v26, p2, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_17

    :cond_1a
    add-int/lit8 v27, p2, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_18

    :cond_1b
    add-int/lit8 v28, p2, 0x19

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_19

    :cond_1c
    add-int/lit8 v29, p2, 0x1a

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_1a

    :cond_1d
    add-int/lit8 v30, p2, 0x1b

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    goto/16 :goto_1b

    :cond_1e
    add-int/lit8 v31, p2, 0x1c

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    goto/16 :goto_1c

    :cond_1f
    add-int/lit8 v32, p2, 0x1d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_1d

    :cond_20
    add-int/lit8 v33, p2, 0x1e

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_1e

    :cond_21
    add-int/lit8 v34, p2, 0x1f

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_1f

    :cond_22
    add-int/lit8 v35, p2, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    goto/16 :goto_20

    :cond_23
    add-int/lit8 v36, p2, 0x21

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_21

    :cond_24
    add-int/lit8 v37, p2, 0x22

    move-object/from16 v0, p1

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    goto/16 :goto_22

    :cond_25
    add-int/lit8 v38, p2, 0x23

    move-object/from16 v0, p1

    move/from16 v1, v38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    goto/16 :goto_23

    :cond_26
    add-int/lit8 v39, p2, 0x24

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_24

    :cond_27
    add-int/lit8 v40, p2, 0x25

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v40

    goto/16 :goto_25

    :cond_28
    add-int/lit8 v41, p2, 0x26

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    goto/16 :goto_26

    :cond_29
    add-int/lit8 v42, p2, 0x27

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v42

    if-eqz v42, :cond_2a

    const/16 v42, 0x1

    :goto_38
    invoke-static/range {v42 .. v42}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v42

    goto/16 :goto_27

    :cond_2a
    const/16 v42, 0x0

    goto :goto_38

    :cond_2b
    add-int/lit8 v43, p2, 0x28

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    goto/16 :goto_28

    :cond_2c
    add-int/lit8 v44, p2, 0x29

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v44

    goto/16 :goto_29

    :cond_2d
    add-int/lit8 v45, p2, 0x2a

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v45

    goto/16 :goto_2a

    :cond_2e
    add-int/lit8 v46, p2, 0x2b

    move-object/from16 v0, p1

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    goto/16 :goto_2b

    :cond_2f
    add-int/lit8 v47, p2, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v47

    goto/16 :goto_2c

    :cond_30
    add-int/lit8 v48, p2, 0x2d

    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    goto/16 :goto_2d

    :cond_31
    add-int/lit8 v49, p2, 0x2e

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    goto/16 :goto_2e

    :cond_32
    add-int/lit8 v50, p2, 0x2f

    move-object/from16 v0, p1

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    goto/16 :goto_2f

    :cond_33
    add-int/lit8 v51, p2, 0x30

    move-object/from16 v0, p1

    move/from16 v1, v51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    goto/16 :goto_30

    :cond_34
    add-int/lit8 v52, p2, 0x31

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    goto/16 :goto_31

    :cond_35
    add-int/lit8 v53, p2, 0x32

    move-object/from16 v0, p1

    move/from16 v1, v53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    goto/16 :goto_32

    :cond_36
    add-int/lit8 v54, p2, 0x33

    move-object/from16 v0, p1

    move/from16 v1, v54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v54

    if-eqz v54, :cond_37

    const/16 v54, 0x1

    :goto_39
    invoke-static/range {v54 .. v54}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v54

    goto/16 :goto_33

    :cond_37
    const/16 v54, 0x0

    goto :goto_39

    :cond_38
    add-int/lit8 v55, p2, 0x34

    move-object/from16 v0, p1

    move/from16 v1, v55

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getShort(I)S

    move-result v55

    if-eqz v55, :cond_39

    const/16 v55, 0x1

    :goto_3a
    invoke-static/range {v55 .. v55}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v55

    goto/16 :goto_34

    :cond_39
    const/16 v55, 0x0

    goto :goto_3a

    :cond_3a
    add-int/lit8 v56, p2, 0x35

    move-object/from16 v0, p1

    move/from16 v1, v56

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_35
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # I

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;->readEntity(Landroid/database/Cursor;I)Lcom/genie_connect/common/db/model/Speaker;

    move-result-object v0

    return-object v0
.end method

.method public readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/Speaker;I)V
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "entity"    # Lcom/genie_connect/common/db/model/Speaker;
    .param p3, "offset"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 378
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->gamePersona_nickname:Ljava/lang/String;

    .line 379
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->modifiedBy:Ljava/lang/String;

    .line 380
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->newPassword:Ljava/lang/String;

    .line 381
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->loginEmailSent:Ljava/lang/Boolean;

    .line 382
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_4
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->activeGamePlayer:Ljava/lang/Boolean;

    .line 383
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    :goto_5
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->password:Ljava/lang/String;

    .line 384
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v1

    :goto_6
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->userType:Ljava/lang/Long;

    .line 385
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_7
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->timezone:Ljava/lang/String;

    .line 386
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    :goto_8
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->username:Ljava/lang/String;

    .line 387
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v1

    :goto_9
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->mugShotUrl:Ljava/lang/String;

    .line 388
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v1

    :goto_a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->fullDescription:Ljava/lang/String;

    .line 389
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v1

    :goto_b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->lastNames:Ljava/lang/String;

    .line 390
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, v1

    :goto_c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->createdDate:Ljava/util/Date;

    .line 391
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_f

    move-object v0, v1

    :goto_d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->firstNames:Ljava/lang/String;

    .line 392
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, v1

    :goto_e
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->totalPlayerPoints:Ljava/lang/Long;

    .line 393
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v1

    :goto_f
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->companyName:Ljava/lang/String;

    .line 394
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_12

    move-object v0, v1

    :goto_10
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->createdBy:Ljava/lang/String;

    .line 395
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, v1

    :goto_11
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->shareUrl:Ljava/lang/String;

    .line 396
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v1

    :goto_12
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->importKey:Ljava/lang/String;

    .line 397
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, v1

    :goto_13
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->department:Ljava/lang/String;

    .line 398
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object v0, v1

    :goto_14
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->locale:Ljava/lang/String;

    .line 399
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, v1

    :goto_15
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->mugShot:Ljava/lang/Long;

    .line 400
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object v0, v1

    :goto_16
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->contact_youtubeUrl:Ljava/lang/String;

    .line 401
    add-int/lit8 v0, p3, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_19

    move-object v0, v1

    :goto_17
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->contact_twitter:Ljava/lang/String;

    .line 402
    add-int/lit8 v0, p3, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    move-object v0, v1

    :goto_18
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->contact_linkedIn:Ljava/lang/String;

    .line 403
    add-int/lit8 v0, p3, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    move-object v0, v1

    :goto_19
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->contact_fax:Ljava/lang/String;

    .line 404
    add-int/lit8 v0, p3, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object v0, v1

    :goto_1a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->contact_telephone2:Ljava/lang/String;

    .line 405
    add-int/lit8 v0, p3, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    move-object v0, v1

    :goto_1b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->contact_email:Ljava/lang/String;

    .line 406
    add-int/lit8 v0, p3, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v0, v1

    :goto_1c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->contact_facebook:Ljava/lang/String;

    .line 407
    add-int/lit8 v0, p3, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    move-object v0, v1

    :goto_1d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->contact_www:Ljava/lang/String;

    .line 408
    add-int/lit8 v0, p3, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v0, v1

    :goto_1e
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->contact_telephone:Ljava/lang/String;

    .line 409
    add-int/lit8 v0, p3, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_21

    move-object v0, v1

    :goto_1f
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->contact_blogUrl:Ljava/lang/String;

    .line 410
    add-int/lit8 v0, p3, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_22

    move-object v0, v1

    :goto_20
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->id:Ljava/lang/Long;

    .line 411
    add-int/lit8 v0, p3, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, v1

    :goto_21
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->title:Ljava/lang/String;

    .line 412
    add-int/lit8 v0, p3, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_24

    move-object v0, v1

    :goto_22
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->_id:Ljava/lang/String;

    .line 413
    add-int/lit8 v0, p3, 0x23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_25

    move-object v0, v1

    :goto_23
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->briefDescription:Ljava/lang/String;

    .line 414
    add-int/lit8 v0, p3, 0x24

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_26

    move-object v0, v1

    :goto_24
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->importBatch:Ljava/lang/String;

    .line 415
    add-int/lit8 v0, p3, 0x25

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_27

    move-object v0, v1

    :goto_25
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->lastAccessed:Ljava/util/Date;

    .line 416
    add-int/lit8 v0, p3, 0x26

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_28

    move-object v0, v1

    :goto_26
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->jobTitle:Ljava/lang/String;

    .line 417
    add-int/lit8 v0, p3, 0x27

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_29

    move-object v0, v1

    :goto_27
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->enableGamification:Ljava/lang/Boolean;

    .line 418
    add-int/lit8 v0, p3, 0x28

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    move-object v0, v1

    :goto_28
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->importCameFrom:Ljava/lang/String;

    .line 419
    add-int/lit8 v0, p3, 0x29

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    move-object v0, v1

    :goto_29
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->visitor:Ljava/lang/Long;

    .line 420
    add-int/lit8 v0, p3, 0x2a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    move-object v0, v1

    :goto_2a
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->modifiedDate:Ljava/util/Date;

    .line 421
    add-int/lit8 v0, p3, 0x2b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    move-object v0, v1

    :goto_2b
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->address_county:Ljava/lang/String;

    .line 422
    add-int/lit8 v0, p3, 0x2c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    move-object v0, v1

    :goto_2c
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->address_postCode:Ljava/lang/String;

    .line 423
    add-int/lit8 v0, p3, 0x2d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_30

    move-object v0, v1

    :goto_2d
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->address_address1:Ljava/lang/String;

    .line 424
    add-int/lit8 v0, p3, 0x2e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_31

    move-object v0, v1

    :goto_2e
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->address_address2:Ljava/lang/String;

    .line 425
    add-int/lit8 v0, p3, 0x2f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_32

    move-object v0, v1

    :goto_2f
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->address_town:Ljava/lang/String;

    .line 426
    add-int/lit8 v0, p3, 0x30

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_33

    move-object v0, v1

    :goto_30
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->address_address3:Ljava/lang/String;

    .line 427
    add-int/lit8 v0, p3, 0x31

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_34

    move-object v0, v1

    :goto_31
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->address_country:Ljava/lang/String;

    .line 428
    add-int/lit8 v0, p3, 0x32

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_35

    move-object v0, v1

    :goto_32
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->_namespace:Ljava/lang/String;

    .line 429
    add-int/lit8 v0, p3, 0x33

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_36

    move-object v0, v1

    :goto_33
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->isFavourite:Ljava/lang/Boolean;

    .line 430
    add-int/lit8 v0, p3, 0x34

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_38

    move-object v0, v1

    :goto_34
    iput-object v0, p2, Lcom/genie_connect/common/db/model/Speaker;->hasNote:Ljava/lang/Boolean;

    .line 431
    add-int/lit8 v0, p3, 0x35

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_3a

    :goto_35
    iput-object v1, p2, Lcom/genie_connect/common/db/model/Speaker;->_dataversion:Ljava/lang/String;

    .line 432
    return-void

    .line 378
    :cond_0
    add-int/lit8 v0, p3, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 379
    :cond_1
    add-int/lit8 v0, p3, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 380
    :cond_2
    add-int/lit8 v0, p3, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 381
    :cond_3
    add-int/lit8 v0, p3, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_3

    :cond_4
    move v0, v3

    goto :goto_36

    .line 382
    :cond_5
    add-int/lit8 v0, p3, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    :goto_37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_4

    :cond_6
    move v0, v3

    goto :goto_37

    .line 383
    :cond_7
    add-int/lit8 v0, p3, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 384
    :cond_8
    add-int/lit8 v0, p3, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_6

    .line 385
    :cond_9
    add-int/lit8 v0, p3, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 386
    :cond_a
    add-int/lit8 v0, p3, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 387
    :cond_b
    add-int/lit8 v0, p3, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 388
    :cond_c
    add-int/lit8 v0, p3, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    .line 389
    :cond_d
    add-int/lit8 v0, p3, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    .line 390
    :cond_e
    add-int/lit8 v0, p3, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_c

    .line 391
    :cond_f
    add-int/lit8 v0, p3, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    .line 392
    :cond_10
    add-int/lit8 v0, p3, 0xe

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_e

    .line 393
    :cond_11
    add-int/lit8 v0, p3, 0xf

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f

    .line 394
    :cond_12
    add-int/lit8 v0, p3, 0x10

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    .line 395
    :cond_13
    add-int/lit8 v0, p3, 0x11

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_11

    .line 396
    :cond_14
    add-int/lit8 v0, p3, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_12

    .line 397
    :cond_15
    add-int/lit8 v0, p3, 0x13

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 398
    :cond_16
    add-int/lit8 v0, p3, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    .line 399
    :cond_17
    add-int/lit8 v0, p3, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_15

    .line 400
    :cond_18
    add-int/lit8 v0, p3, 0x16

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_16

    .line 401
    :cond_19
    add-int/lit8 v0, p3, 0x17

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 402
    :cond_1a
    add-int/lit8 v0, p3, 0x18

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_18

    .line 403
    :cond_1b
    add-int/lit8 v0, p3, 0x19

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_19

    .line 404
    :cond_1c
    add-int/lit8 v0, p3, 0x1a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1a

    .line 405
    :cond_1d
    add-int/lit8 v0, p3, 0x1b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1b

    .line 406
    :cond_1e
    add-int/lit8 v0, p3, 0x1c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1c

    .line 407
    :cond_1f
    add-int/lit8 v0, p3, 0x1d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1d

    .line 408
    :cond_20
    add-int/lit8 v0, p3, 0x1e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1e

    .line 409
    :cond_21
    add-int/lit8 v0, p3, 0x1f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1f

    .line 410
    :cond_22
    add-int/lit8 v0, p3, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_20

    .line 411
    :cond_23
    add-int/lit8 v0, p3, 0x21

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21

    .line 412
    :cond_24
    add-int/lit8 v0, p3, 0x22

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_22

    .line 413
    :cond_25
    add-int/lit8 v0, p3, 0x23

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_23

    .line 414
    :cond_26
    add-int/lit8 v0, p3, 0x24

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_24

    .line 415
    :cond_27
    add-int/lit8 v0, p3, 0x25

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_25

    .line 416
    :cond_28
    add-int/lit8 v0, p3, 0x26

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_26

    .line 417
    :cond_29
    add-int/lit8 v0, p3, 0x27

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v2

    :goto_38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_27

    :cond_2a
    move v0, v3

    goto :goto_38

    .line 418
    :cond_2b
    add-int/lit8 v0, p3, 0x28

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_28

    .line 419
    :cond_2c
    add-int/lit8 v0, p3, 0x29

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_29

    .line 420
    :cond_2d
    add-int/lit8 v0, p3, 0x2a

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;->getDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto/16 :goto_2a

    .line 421
    :cond_2e
    add-int/lit8 v0, p3, 0x2b

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 422
    :cond_2f
    add-int/lit8 v0, p3, 0x2c

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2c

    .line 423
    :cond_30
    add-int/lit8 v0, p3, 0x2d

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2d

    .line 424
    :cond_31
    add-int/lit8 v0, p3, 0x2e

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2e

    .line 425
    :cond_32
    add-int/lit8 v0, p3, 0x2f

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2f

    .line 426
    :cond_33
    add-int/lit8 v0, p3, 0x30

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_30

    .line 427
    :cond_34
    add-int/lit8 v0, p3, 0x31

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_31

    .line 428
    :cond_35
    add-int/lit8 v0, p3, 0x32

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_32

    .line 429
    :cond_36
    add-int/lit8 v0, p3, 0x33

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_37

    move v0, v2

    :goto_39
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_33

    :cond_37
    move v0, v3

    goto :goto_39

    .line 430
    :cond_38
    add-int/lit8 v0, p3, 0x34

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-eqz v0, :cond_39

    :goto_3a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_34

    :cond_39
    move v2, v3

    goto :goto_3a

    .line 431
    :cond_3a
    add-int/lit8 v0, p3, 0x35

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_35
.end method

.method public bridge synthetic readEntity(Landroid/database/Cursor;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "x0"    # Landroid/database/Cursor;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # I

    .prologue
    .line 18
    check-cast p2, Lcom/genie_connect/common/db/model/Speaker;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;->readEntity(Landroid/database/Cursor;Lcom/genie_connect/common/db/model/Speaker;I)V

    return-void
.end method

.method public readKey(Landroid/database/Cursor;I)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "offset"    # I

    .prologue
    .line 310
    add-int/lit8 v0, p2, 0x20

    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p2, 0x20

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
    invoke-virtual {p0, p1, p2}, Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;->readKey(Landroid/database/Cursor;I)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected updateKeyAfterInsert(Lcom/genie_connect/common/db/model/Speaker;J)Ljava/lang/Long;
    .locals 2
    .param p1, "entity"    # Lcom/genie_connect/common/db/model/Speaker;
    .param p2, "rowId"    # J

    .prologue
    .line 437
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/genie_connect/common/db/model/Speaker;->id:Ljava/lang/Long;

    .line 438
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
    check-cast p1, Lcom/genie_connect/common/db/model/Speaker;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lcom/genie_connect/android/db/access/gen/dao/SpeakerDao;->updateKeyAfterInsert(Lcom/genie_connect/common/db/model/Speaker;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
