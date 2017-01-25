.class public Lcom/genie_connect/android/repository/MeetingRepository;
.super Lcom/genie_connect/android/repository/base/BaseRepository;
.source "MeetingRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/genie_connect/android/repository/base/BaseRepository",
        "<",
        "Lcom/genie_connect/common/db/model/Meeting;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;


# direct methods
.method public constructor <init>(Lde/greenrobot/dao/Dao;Landroid/content/Context;Lcom/genie_connect/android/security/VisitorLoginManager;)V
    .locals 6
    .param p2, "appContext"    # Landroid/content/Context;
        .annotation runtime Ljavax/inject/Named;
            value = "appContext"
        .end annotation
    .end param
    .param p3, "loginManager"    # Lcom/genie_connect/android/security/VisitorLoginManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/dao/Dao",
            "<",
            "Lcom/genie_connect/common/db/model/Meeting;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/genie_connect/android/security/VisitorLoginManager;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .local p1, "dao":Lde/greenrobot/dao/Dao;, "Lde/greenrobot/dao/Dao<Lcom/genie_connect/common/db/model/Meeting;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 34
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->HOTSPOTS:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/genie_connect/android/repository/base/BaseRepository;-><init>(Lde/greenrobot/dao/Dao;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Landroid/content/Context;Lcom/genie_connect/android/db/datastore/acl/Acl;Lcom/genie_connect/android/repository/NoteRepository;)V

    .line 36
    iput-object p2, p0, Lcom/genie_connect/android/repository/MeetingRepository;->mContext:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/genie_connect/android/repository/MeetingRepository;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    .line 38
    return-void
.end method


# virtual methods
.method public shouldDeclineMeeting(J)Z
    .locals 13
    .param p1, "meetingId"    # J

    .prologue
    const/4 v6, 0x0

    .line 48
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/genie_connect/android/repository/MeetingRepository;->getById(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/genie_connect/common/db/model/Meeting;

    .line 50
    .local v3, "meeting":Lcom/genie_connect/common/db/model/Meeting;
    iget-object v7, v3, Lcom/genie_connect/common/db/model/Meeting;->status:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_1

    .line 52
    iget-object v7, p0, Lcom/genie_connect/android/repository/MeetingRepository;->mLoginManager:Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-virtual {v7}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorRecord()Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;

    move-result-object v4

    .line 54
    .local v4, "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    if-eqz v4, :cond_1

    .line 56
    invoke-virtual {v4}, Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;->getId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 58
    .local v1, "currentUserId":Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/genie_connect/android/repository/MeetingRepository;->query()Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    const-string v8, "meetings_approvedVisitors"

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->innerJoin(Ljava/lang/String;)Lde/greenrobot/dao/join/JoinBuilder;

    move-result-object v7

    sget-object v8, Lcom/genie_connect/common/db/model/Meeting$Properties;->Id:Lde/greenrobot/dao/Property;

    const-string v9, "meetings_id"

    invoke-virtual {v7, v8, v9}, Lde/greenrobot/dao/join/JoinBuilder;->on(Lde/greenrobot/dao/Selectable;Ljava/lang/String;)Lde/greenrobot/dao/query/QueryBuilder;

    move-result-object v7

    const-string v8, "approvedVisitors"

    invoke-virtual {v7, v8}, Lde/greenrobot/dao/query/QueryBuilder;->listOfFieldAsLong(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 66
    .local v0, "approvedVisitorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v0, :cond_1

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 69
    .local v5, "visitorId":Ljava/lang/Long;
    if-ne v5, v1, :cond_0

    .line 80
    .end local v0    # "approvedVisitorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v1    # "currentUserId":Ljava/lang/Long;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    .end local v5    # "visitorId":Ljava/lang/Long;
    :cond_1
    :goto_0
    return v6

    .line 74
    .restart local v0    # "approvedVisitorIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v1    # "currentUserId":Ljava/lang/Long;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "visitor":Lcom/genie_connect/android/net/container/gson/entities/VisitorGsonModel;
    :cond_2
    const/4 v6, 0x1

    goto :goto_0
.end method
