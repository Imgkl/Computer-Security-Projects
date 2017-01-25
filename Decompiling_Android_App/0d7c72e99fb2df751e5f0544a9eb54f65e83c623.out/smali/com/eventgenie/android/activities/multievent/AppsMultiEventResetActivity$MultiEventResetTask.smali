.class Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;
.super Lcom/github/ignition/core/tasks/IgnitedAsyncTask;
.source "AppsMultiEventResetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiEventResetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/ignition/core/tasks/IgnitedAsyncTask",
        "<",
        "Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAY:I = 0x3e8


# instance fields
.field private mDataversion:Ljava/lang/String;

.field private mMode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "dataVersion"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/github/ignition/core/tasks/IgnitedAsyncTask;-><init>()V

    .line 236
    iput p1, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->mMode:I

    .line 237
    iput-object p2, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->mDataversion:Ljava/lang/String;

    .line 238
    return-void
.end method


# virtual methods
.method public bridge synthetic onTaskCompleted(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 229
    check-cast p1, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;

    .end local p1    # "x0":Landroid/content/Context;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->onTaskCompleted(Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public onTaskCompleted(Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "context"    # Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;
    .param p2, "result"    # Ljava/lang/Integer;

    .prologue
    .line 242
    const-string v0, "^ MULTIRESET: task completed"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onTaskStarted(Landroid/content/Context;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 229
    check-cast p1, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;

    .end local p1    # "x0":Landroid/content/Context;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->onTaskStarted(Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;)Z

    move-result v0

    return v0
.end method

.method public onTaskStarted(Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;)Z
    .locals 4
    .param p1, "context"    # Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 248
    const-string v0, "^ MULTIRESET: task started"

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 249
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->publishProgress([Ljava/lang/Object;)V

    .line 250
    return v3
.end method

.method public bridge synthetic onTaskSuccess(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 229
    check-cast p1, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;

    .end local p1    # "x0":Landroid/content/Context;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->onTaskSuccess(Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method public onTaskSuccess(Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "context"    # Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity;
    .param p2, "result"    # Ljava/lang/Integer;

    .prologue
    .line 255
    const/4 v0, 0x1

    return v0
.end method

.method public varargs run([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 261
    const-string v7, "^ MULTIRESET: task running"

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 263
    :goto_0
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->isAppSwitchableNow(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 264
    const-string v7, "^ MULTIRESET: there are tasks running - waiting for 1000"

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/android/services/ServiceManager;->cancelLiveSyncService(Landroid/content/Context;)V

    .line 266
    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 271
    :cond_0
    iget v7, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->mMode:I

    packed-switch v7, :pswitch_data_0

    .line 310
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->mMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->mDataversion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 273
    :pswitch_0
    const-string v7, "^ MULTIRESET: it seems clear to start the switch."

    invoke-static {v7}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v7

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->setActiveDataInstance(Landroid/content/Context;IZ)V

    .line 277
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/genie_connect/android/security/VisitorLoginManager;->setGuestModeEnabled(Z)V

    .line 278
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/datastore/acl/Acl;->buildAclManager()V

    .line 280
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v7

    const-class v8, Lde/greenrobot/event/EventBus;

    invoke-virtual {v7, v8}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lde/greenrobot/event/EventBus;

    .line 281
    .local v3, "eventBus":Lde/greenrobot/event/EventBus;
    new-instance v7, Lcom/eventgenie/android/eventbus/events/notification/HideNotificationsEvent;

    invoke-direct {v7}, Lcom/eventgenie/android/eventbus/events/notification/HideNotificationsEvent;-><init>()V

    invoke-virtual {v3, v7}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 284
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 285
    .local v1, "broadcast":Landroid/content/Intent;
    const-string v7, "com.eventgenie.android.FINISH_HOME"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 289
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v7

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/AppConfig;->isSecureApp()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v7

    if-nez v7, :cond_2

    move v4, v5

    .line 292
    .local v4, "unauth":Z
    :goto_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 294
    .local v2, "defaultPrefs":Landroid/content/SharedPreferences;
    const-string v7, "auto_update"

    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 296
    .local v0, "autoUpdate":Z
    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    .line 297
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/android/net/providers/DeltaUtils;->canRecieveUpdates(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v6, v8}, Lcom/genie_connect/android/services/ServiceManager;->startDataSyncService(Landroid/content/Context;ILjava/lang/String;)V

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->getContext()Landroid/content/Context;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/String;

    const-string v8, "apprefs"

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveData(Landroid/content/Context;[Ljava/lang/String;)V

    .line 313
    .end local v0    # "autoUpdate":Z
    .end local v1    # "broadcast":Landroid/content/Intent;
    .end local v2    # "defaultPrefs":Landroid/content/SharedPreferences;
    .end local v3    # "eventBus":Lde/greenrobot/event/EventBus;
    .end local v4    # "unauth":Z
    :goto_2
    iget v5, p0, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->mMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    .restart local v1    # "broadcast":Landroid/content/Intent;
    .restart local v3    # "eventBus":Lde/greenrobot/event/EventBus;
    :cond_2
    move v4, v6

    .line 289
    goto :goto_1

    .line 307
    .end local v1    # "broadcast":Landroid/content/Intent;
    .end local v3    # "eventBus":Lde/greenrobot/event/EventBus;
    :pswitch_1
    const-string v5, "^ MULTIRESET: it seems clear to re-initialise."

    invoke-static {v5}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic run([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 229
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/multievent/AppsMultiEventResetActivity$MultiEventResetTask;->run([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
