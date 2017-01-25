.class public Lcom/genie_connect/android/services/UpdatesManager;
.super Ljava/lang/Object;
.source "UpdatesManager.java"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final KEY_APPLY_DELTAS_TIL:Ljava/lang/String; = "applyDeltasTil"

.field private static final KEY_VERSION_TEMP_DB:Ljava/lang/String; = "tempDatabaseVersion"


# instance fields
.field public appContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "appContext"
    .end annotation
.end field

.field public mConfig:Lcom/genie_connect/android/db/config/AppConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCurrentVersionDownload:Ljava/lang/String;

.field public mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mEventBus:Lde/greenrobot/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public mPrefs:Landroid/content/SharedPreferences;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "defaultPrefs"
    .end annotation
.end field

.field public mUserNotificationManager:Lcom/eventgenie/android/utils/managers/UserNotificationManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "^ UpdatesManager: Injecting myself.. and registering me into EventBus "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 46
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v0

    invoke-virtual {v0, p0}, Ldagger/ObjectGraph;->inject(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mEventBus:Lde/greenrobot/event/EventBus;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method private afterUpdateApplyOperations()V
    .locals 2

    .prologue
    .line 105
    const-string v0, "^ UPDATE_MANAGER:  afterUpdateApplyOperations() "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mUserNotificationManager:Lcom/eventgenie/android/utils/managers/UserNotificationManager;

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->hideBlockingProgressBar()V

    .line 108
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "tempDatabaseVersion"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 109
    return-void
.end method

.method private shouldLaunchBackgroundUpdate(Ljava/lang/String;)Z
    .locals 5
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 74
    iget-object v2, p0, Lcom/genie_connect/android/services/UpdatesManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "applyDeltasTil"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "applyDeltasTilVersion":Ljava/lang/String;
    invoke-static {v0}, Lcom/a_vcard/android/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startBackgroundUpdate(Ljava/lang/String;)V
    .locals 6
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 51
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->appContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/genie_connect/android/services/ServiceManager;->startDataSyncService(Landroid/content/Context;ILjava/lang/String;Z[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)V

    .line 52
    return-void
.end method


# virtual methods
.method public applyBackgroundUpdate(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 85
    const-string v0, "^ UPDATE_MANAGER: applyBackgroundUpdate "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mUserNotificationManager:Lcom/eventgenie/android/utils/managers/UserNotificationManager;

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showBlockingProgressBar(Landroid/app/Activity;)V

    .line 88
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "tempDatabaseVersion"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "version":Ljava/lang/String;
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->appContext:Landroid/content/Context;

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/genie_connect/android/services/ServiceManager;->startDataSyncService(Landroid/content/Context;ILjava/lang/String;Z[Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)V

    .line 90
    return-void
.end method

.method public isBackgroundUpdateAvailable()Z
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "tempDatabaseVersion"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/AppChangedEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/AppChangedEvent;

    .prologue
    .line 136
    const-string v0, "^ UPDATE_MANAGER: got  AppChangedEvent "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "tempDatabaseVersion"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpToDateEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpToDateEvent;

    .prologue
    .line 80
    const-string v0, "^ UPDATE_MANAGER: got  DataUpToDateEvent "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->updateLastCheckedPreference(ZLjava/lang/String;)V

    .line 82
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;)V
    .locals 4
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ UPDATE_MANAGER: got  DataUpdateAvailableEvent with newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;->getNewVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/genie_connect/android/services/UpdatesManager;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;->getNewVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->updateLastCheckedPreference(ZLjava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/genie_connect/android/services/UpdatesManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "tempDatabaseVersion"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "version":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;->getNewVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const-string v1, "^ UPDATE_MANAGER: new version is equal to KEY_VERSION_TEMP_DB pref"

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/genie_connect/android/services/UpdatesManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "tempDatabaseVersion"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 64
    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;->getNewVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/genie_connect/android/services/UpdatesManager;->mCurrentVersionDownload:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;->getNewVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/genie_connect/android/services/UpdatesManager;->shouldLaunchBackgroundUpdate(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ UPDATE_MANAGER: startBackgroundUPdate ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;->getNewVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Lcom/eventgenie/android/eventbus/events/dataupdate/DataUpdateAvailableEvent;->getNewVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/genie_connect/android/services/UpdatesManager;->startBackgroundUpdate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/InitStartEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/InitStartEvent;

    .prologue
    .line 142
    const-string v0, "^ UPDATE_MANAGER: got  InitStartEvent "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "tempDatabaseVersion"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultErrorEvent;

    .prologue
    .line 121
    const-string v0, "^ UPDATE_MANAGER: got  SyncResultErrorEvent "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mCurrentVersionDownload:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultSuccessEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/SyncResultSuccessEvent;

    .prologue
    .line 112
    const-string v0, "^ UPDATE_MANAGER: got  SyncResultSuccessEvent "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mCurrentVersionDownload:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "tempDatabaseVersion"

    iget-object v2, p0, Lcom/genie_connect/android/services/UpdatesManager;->mCurrentVersionDownload:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mCurrentVersionDownload:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplyErrorEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplyErrorEvent;

    .prologue
    .line 93
    const-string v0, "^ UPDATE_MANAGER: got  UpdateApplyErrorEvent "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/genie_connect/android/services/UpdatesManager;->afterUpdateApplyOperations()V

    .line 96
    return-void
.end method

.method public onEvent(Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplySuccessEvent;

    .prologue
    .line 99
    const-string v0, "^ UPDATE_MANAGER: got  UpdateApplySuccessEvent "

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/genie_connect/android/services/UpdatesManager;->afterUpdateApplyOperations()V

    .line 102
    return-void
.end method

.method public setApplyDeltasTil(Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ UPDATE_MANAGER: setApplyDeltasTil ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/genie_connect/android/services/UpdatesManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "applyDeltasTil"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    return-void
.end method
