.class public Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;
.super Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;
.source "ActivityStreamLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/db/loaders/ActivityStreamLoader$1;
    }
.end annotation


# instance fields
.field private final mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

.field private mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

.field private mEntityId:J

.field private mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private final mFilter:J

.field private mMyVisitorId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "id"    # J

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 79
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 80
    iput-wide p3, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mFilter:J

    .line 81
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mMyVisitorId:J

    .line 82
    sget-object v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->ALL:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;JJLcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "id"    # J
    .param p5, "myVisitorId"    # J
    .param p7, "displayMode"    # Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 68
    iput-wide p3, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mFilter:J

    .line 69
    iput-wide p5, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mMyVisitorId:J

    .line 70
    iput-object p7, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "db"    # Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    .param p3, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "entityId"    # J

    .prologue
    const-wide/16 v2, -0x1

    .line 91
    invoke-direct {p0, p1}, Lcom/commonsware/cwac/loaderex/acl/AbstractCursorLoader;-><init>(Landroid/content/Context;)V

    .line 92
    iput-object p2, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    .line 93
    sget-object v0, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->ENTITY:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    iput-object v0, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    .line 94
    iput-wide p4, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mEntityId:J

    .line 95
    iput-object p3, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 96
    iput-wide v2, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mFilter:J

    .line 97
    iput-wide v2, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mMyVisitorId:J

    .line 98
    return-void
.end method


# virtual methods
.method protected buildCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 106
    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mFilter:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 108
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v1

    const-class v2, Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v1, v2}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/db/config/AppConfig;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getWidgets()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getActivityStream()Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/widgets/ActivityStreamConfig;->hideEntityRelatedPosts()Z

    move-result v0

    .line 115
    .local v0, "hideEntityPosts":Z
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAll(Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    .line 133
    .end local v0    # "hideEntityPosts":Z
    :goto_0
    return-object v1

    .line 119
    .restart local v0    # "hideEntityPosts":Z
    :cond_0
    sget-object v1, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader$1;->$SwitchMap$com$eventgenie$android$activities$activitystream$activities$ActivitystreamActivity$DISPLAY_MODES:[I

    iget-object v2, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDisplayMode:Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/activitystream/activities/ActivitystreamActivity$DISPLAY_MODES;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 129
    const/4 v1, 0x0

    goto :goto_0

    .line 121
    :pswitch_0
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getAll(Z)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    goto :goto_0

    .line 123
    :pswitch_1
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getFavs()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v1

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mMyVisitorId:J

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getMyPosts(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    goto :goto_0

    .line 127
    :pswitch_3
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v1

    iget-object v2, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-wide v4, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mEntityId:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getForEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    goto :goto_0

    .line 133
    .end local v0    # "hideEntityPosts":Z
    :cond_1
    iget-object v1, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getActivityStreamPosts()Lcom/genie_connect/android/db/access/DbActivitystreampost;

    move-result-object v1

    iget-wide v2, p0, Lcom/genie_connect/android/db/loaders/ActivityStreamLoader;->mFilter:J

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/access/DbActivitystreampost;->getById(J)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
