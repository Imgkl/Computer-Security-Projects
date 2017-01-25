.class public Lcom/genie_connect/android/repository/NoteRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "NoteRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/repository/NoteRepository$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/Note;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;)V
    .locals 6
    .param p2, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p3, "acl"    # Lcom/genie_connect/android/db/datastore/acl/Acl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Note;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/db/datastore/acl/Acl;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 56
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Note;Ljava/lang/Long;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->NOTE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 58
    return-void
.end method

.method private hasNote(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z
    .locals 3
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/NoteRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/genie_connect/android/repository/NoteRepository;->getLinkPropertyForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lde/greenrobot/dao/Property;

    move-result-object v1

    invoke-virtual {v1, p1}, Lde/greenrobot/dao/Property;->eq(Ljava/lang/Object;)Lde/greenrobot/dao/query/WhereCondition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lde/greenrobot/dao/query/WhereCondition;

    invoke-virtual {v0, v1, v2}, Lde/greenrobot/dao/query/QueryBuilder;->where(Lde/greenrobot/dao/query/WhereCondition;[Lde/greenrobot/dao/query/WhereCondition;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lde/greenrobot/dao/query/QueryBuilder;->any()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public exhibitorHasNote(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "exhibitorId"    # Ljava/lang/Long;

    .prologue
    .line 93
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, p1, v0}, Lcom/genie_connect/android/repository/NoteRepository;->hasNote(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v0

    return v0
.end method

.method public getLinkPropertyForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Lde/greenrobot/dao/Property;
    .locals 2
    .param p1, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 62
    sget-object v0, Lcom/genie_connect/android/repository/NoteRepository$1;->$SwitchMap$com$genie_connect$common$db$entityfactory$GenieEntity:[I

    invoke-virtual {p1}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 64
    :pswitch_0
    sget-object v0, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedExhibitor:Lde/greenrobot/dao/Property;

    goto :goto_0

    .line 66
    :pswitch_1
    sget-object v0, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedProduct:Lde/greenrobot/dao/Property;

    goto :goto_0

    .line 68
    :pswitch_2
    sget-object v0, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedPoi:Lde/greenrobot/dao/Property;

    goto :goto_0

    .line 70
    :pswitch_3
    sget-object v0, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedSpeaker:Lde/greenrobot/dao/Property;

    goto :goto_0

    .line 72
    :pswitch_4
    sget-object v0, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedSession:Lde/greenrobot/dao/Property;

    goto :goto_0

    .line 74
    :pswitch_5
    sget-object v0, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedSubSession:Lde/greenrobot/dao/Property;

    goto :goto_0

    .line 76
    :pswitch_6
    sget-object v0, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedVisitor:Lde/greenrobot/dao/Property;

    goto :goto_0

    .line 78
    :pswitch_7
    sget-object v0, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedDownloadable:Lde/greenrobot/dao/Property;

    goto :goto_0

    .line 80
    :pswitch_8
    sget-object v0, Lcom/genie_connect/common/db/model/Note$Properties;->RelatedActivityStreamPost:Lde/greenrobot/dao/Property;

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public poiHasNote(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "poiId"    # Ljava/lang/Long;

    .prologue
    .line 101
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->POI:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, p1, v0}, Lcom/genie_connect/android/repository/NoteRepository;->hasNote(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v0

    return v0
.end method

.method public productHasNote(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "productId"    # Ljava/lang/Long;

    .prologue
    .line 97
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->PRODUCT:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, p1, v0}, Lcom/genie_connect/android/repository/NoteRepository;->hasNote(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v0

    return v0
.end method

.method public sessionHasNote(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/Long;

    .prologue
    .line 109
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, p1, v0}, Lcom/genie_connect/android/repository/NoteRepository;->hasNote(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v0

    return v0
.end method

.method public speakerHasNote(Ljava/lang/Long;)Z
    .locals 1
    .param p1, "speakerId"    # Ljava/lang/Long;

    .prologue
    .line 105
    sget-object v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SPEAKER:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-direct {p0, p1, v0}, Lcom/genie_connect/android/repository/NoteRepository;->hasNote(Ljava/lang/Long;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)Z

    move-result v0

    return v0
.end method
