.class public Lcom/genie_connect/android/services/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field public static final LIVE_SYNC_RESULT_ARTICLES_UPDATED:I = 0x2

.field public static final LIVE_SYNC_RESULT_MESSAGES_UPDATED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areAnyDataServicesRunning(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-static {}, Lcom/genie_connect/android/services/lss/LiveSyncService;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v3

    .line 62
    :cond_1
    invoke-static {}, Lcom/genie_connect/android/services/dss/DataSyncService;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 68
    .local v1, "manager":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 69
    .local v2, "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    const-class v4, Lcom/genie_connect/android/services/lss/LiveSyncService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ SERVICEHELPER: LSS is running! Asked by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_3
    const-class v4, Lcom/genie_connect/android/services/dss/DataSyncService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ SERVICEHELPER: DSS is running! Asked by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v2    # "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static cancelDataSyncService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const-string v1, "^ SERVICEHELPER: Request DSS cancelation."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "com.eventgenie.android.BROADCAST_DSS_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 86
    return-void
.end method

.method public static cancelLiveSyncService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const-string v1, "^ SERVICEHELPER: Request LSS cancelation."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->warn(Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "com.eventgenie.android.BROADCAST_LSS_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 93
    return-void
.end method

.method public static doSyncEntitiesOnDashboard(Landroid/content/Context;)V
    .locals 3
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "messages"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "visitorsurveys"

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static doSyncLiveData(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/genie_connect/android/services/lss/LiveSyncService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 145
    return-void
.end method

.method public static doSyncLiveData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "entitiesToSync":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/genie_connect/android/services/ServiceManager;->isLiveSyncServiceRunning(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/genie_connect/android/services/ServiceManager;->isDataSyncServiceUpdating()Z

    move-result v2

    if-nez v2, :cond_0

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ SERVICEHELPER: Starting sync from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/genie_connect/android/services/lss/LiveSyncService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.eventgenie.android.EXTRA_ENTITIES_TO_SYNC"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 136
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static varargs doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "entitiesToSync"    # [Ljava/lang/String;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 151
    :cond_0
    return-void
.end method

.method public static doSyncLiveDataFull(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 154
    invoke-static {}, Lcom/genie_connect/android/db/access/UdmEntityLists;->getUdmSyncableEntities()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/SetUtils;->convertStringSetToArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public static isDataSyncServiceUpdating()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public static isLiveSyncServiceRunning(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    invoke-static {}, Lcom/genie_connect/android/services/lss/LiveSyncService;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/genie_connect/android/services/lss/LiveSyncService;

    invoke-static {p0, v0}, Lcom/genie_connect/android/services/ServiceManager;->isMyServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    :cond_0
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMyServiceRunning(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, "service":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 108
    .local v1, "manager":Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 109
    .local v2, "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "^ SERVICEHELPER: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is running! Asked by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 111
    const/4 v3, 0x1

    .line 114
    .end local v2    # "runningService":Landroid/app/ActivityManager$RunningServiceInfo;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static startDataSyncService(Landroid/content/Context;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # I

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/genie_connect/android/services/ServiceManager;->startDataSyncService(Landroid/content/Context;ILjava/lang/String;)V

    .line 181
    return-void
.end method

.method public static startDataSyncService(Landroid/content/Context;ILjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # I
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 186
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/genie_connect/android/services/ServiceManager;->startDataSyncService(Landroid/content/Context;ILjava/lang/String;Z[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)V

    .line 187
    return-void
.end method

.method public static startDataSyncService(Landroid/content/Context;ILjava/lang/String;Z[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # I
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "isMultiEventSelect"    # Z
    .param p4, "entities"    # [Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p5, "isBackgroundUpdate"    # Z

    .prologue
    .line 163
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/genie_connect/android/services/dss/DataSyncService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "com.eventgenie.android.EXTRA_ACTION"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    const-string v2, "com.eventgenie.android.IS_BACKGROUND_UPDATE"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 168
    const-string v2, "com.eventgenie.android.IS_MULTI_EVENT_SELECT"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    if-eqz p2, :cond_0

    .line 170
    const-string v2, "com.eventgenie.android.EXTRA_VERSION"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    if-eqz p4, :cond_1

    .line 173
    const-string v2, "com.eventgenie.android.EXTRA_ENTITIES_TO_INITIALISE"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 175
    :cond_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 177
    return-void
.end method
