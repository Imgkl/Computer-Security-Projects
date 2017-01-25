.class public Lcom/genie_connect/android/services/dss/NotificationHandler;
.super Ljava/lang/Object;
.source "NotificationHandler.java"

# interfaces
.implements Lcom/genie_connect/common/platform/INotificationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/services/dss/NotificationHandler$1;
    }
.end annotation


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mEventBus:Lde/greenrobot/event/EventBus;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/greenrobot/event/EventBus;)V
    .locals 0
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "eventBus"    # Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/genie_connect/android/services/dss/NotificationHandler;->mAppContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/genie_connect/android/services/dss/NotificationHandler;->mEventBus:Lde/greenrobot/event/EventBus;

    .line 26
    return-void
.end method


# virtual methods
.method public notifyCancelled(Z)V
    .locals 4
    .param p1, "isMultiEventSelect"    # Z

    .prologue
    .line 31
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/NotificationHandler;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lcom/eventgenie/android/eventbus/events/notification/HideNotificationsEvent;

    invoke-direct {v1}, Lcom/eventgenie/android/eventbus/events/notification/HideNotificationsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 32
    if-eqz p1, :cond_0

    .line 34
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/NotificationHandler;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    iget-object v1, p0, Lcom/genie_connect/android/services/dss/NotificationHandler;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->setActiveDataInstance(Landroid/content/Context;IZ)V

    .line 36
    :cond_0
    return-void
.end method

.method public notifyEntityAction(Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;Ljava/lang/String;II)V
    .locals 3
    .param p1, "action"    # Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;
    .param p2, "entity"    # Ljava/lang/String;
    .param p3, "progress"    # I
    .param p4, "progressMax"    # I

    .prologue
    .line 45
    sget-object v1, Lcom/genie_connect/android/services/dss/NotificationHandler$1;->$SwitchMap$com$genie_connect$common$services$dss$DataInitialisationOperation$Action:[I

    invoke-virtual {p1}, Lcom/genie_connect/common/services/dss/DataInitialisationOperation$Action;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 53
    move-object v0, p2

    .line 57
    .local v0, "message":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p3, p4, v0}, Lcom/genie_connect/android/services/dss/NotificationHandler;->sendSyncUpdateBroadcast(IIILjava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/genie_connect/android/services/dss/NotificationHandler;->mEventBus:Lde/greenrobot/event/EventBus;

    new-instance v2, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;

    invoke-direct {v2, p3, p4}, Lcom/eventgenie/android/eventbus/events/notification/UpdateProgressEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 64
    return-void

    .line 47
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 50
    .end local v0    # "message":Ljava/lang/String;
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Downloading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendSyncUpdateBroadcast(IIILjava/lang/String;)V
    .locals 1
    .param p1, "messageType"    # I
    .param p2, "progress"    # I
    .param p3, "max"    # I
    .param p4, "description"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/genie_connect/android/services/dss/NotificationHandler;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/genie_connect/android/services/dss/DataSyncService;->sendSyncUpdateBroadcast(Landroid/content/Context;IIILjava/lang/String;)V

    .line 70
    return-void
.end method
