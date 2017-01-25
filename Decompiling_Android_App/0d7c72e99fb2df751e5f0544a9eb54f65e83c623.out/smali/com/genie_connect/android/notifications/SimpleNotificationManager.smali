.class public Lcom/genie_connect/android/notifications/SimpleNotificationManager;
.super Ljava/lang/Object;
.source "SimpleNotificationManager.java"

# interfaces
.implements Lcom/genie_connect/android/notifications/IGenieNotificationsManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/genie_connect/android/notifications/IGenieNotificationsManager;

.field private static sIdCounter:I


# instance fields
.field private mNM:Landroid/app/NotificationManager;

.field private mNotificationHolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->sIdCounter:I

    .line 26
    const-string v0, "^ SimpleNotificationManager "

    sput-object v0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->mNotificationHolderMap:Ljava/util/Map;

    .line 58
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->mNM:Landroid/app/NotificationManager;

    .line 59
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected static getInstance(Landroid/content/Context;)Lcom/genie_connect/android/notifications/IGenieNotificationsManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->mInstance:Lcom/genie_connect/android/notifications/IGenieNotificationsManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;

    invoke-direct {v0, p0}, Lcom/genie_connect/android/notifications/SimpleNotificationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->mInstance:Lcom/genie_connect/android/notifications/IGenieNotificationsManager;

    .line 41
    :cond_0
    sget-object v0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->mInstance:Lcom/genie_connect/android/notifications/IGenieNotificationsManager;

    return-object v0
.end method

.method private declared-synchronized triggerNotifications()V
    .locals 5

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->mNotificationHolderMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 89
    .local v1, "integerSimpleNotificationHolderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;

    # getter for: Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->mState:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;
    invoke-static {v2}, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->access$000(Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;)Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    move-result-object v2

    sget-object v3, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;->WAITING:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    if-ne v2, v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->mNM:Landroid/app/NotificationManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;

    invoke-virtual {v2}, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->getNotificationId()I

    move-result v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;

    invoke-virtual {v2}, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Trigger notification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;

    invoke-virtual {v2}, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->getNotificationId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;

    invoke-virtual {v2}, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;

    sget-object v3, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;->SENT:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    # setter for: Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->mState:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;
    invoke-static {v2, v3}, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->access$002(Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;)Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "integerSimpleNotificationHolderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 99
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public declared-synchronized addNotifications(Landroid/app/Notification;JLcom/genie_connect/common/db/entityfactory/GenieEntity;)V
    .locals 6
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "entityId"    # J
    .param p4, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->getEntityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "referenceId":Ljava/lang/String;
    iget-object v2, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->mNotificationHolderMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->mNotificationHolderMap:Ljava/util/Map;

    new-instance v3, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;

    sget v4, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->sIdCounter:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->sIdCounter:I

    invoke-direct {v3, p1, v4}, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;-><init>(Landroid/app/Notification;I)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :goto_0
    invoke-direct {p0}, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->triggerNotifications()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->mNotificationHolderMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;

    .line 76
    .local v1, "simpleNotificationHolder":Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;
    sget-object v2, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;->UPDATED:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    # setter for: Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->mState:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;
    invoke-static {v1, v2}, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->access$002(Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;)Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    .line 77
    invoke-virtual {v1, p1}, Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;->setNotification(Landroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    .end local v0    # "referenceId":Ljava/lang/String;
    .end local v1    # "simpleNotificationHolder":Lcom/genie_connect/android/notifications/SimpleNotificationManager$SimpleNotificationHolder;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public clearNotifications()V
    .locals 4

    .prologue
    .line 105
    sget-object v0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ": clearNotifications() called."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 107
    iget-object v0, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->mNotificationHolderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genie_connect/android/notifications/SimpleNotificationManager;->mNotificationHolderMap:Ljava/util/Map;

    .line 109
    return-void
.end method
