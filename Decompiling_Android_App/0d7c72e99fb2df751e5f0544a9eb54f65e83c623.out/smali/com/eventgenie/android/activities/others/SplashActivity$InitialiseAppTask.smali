.class Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;
.super Landroid/os/AsyncTask;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InitialiseAppTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/SplashActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/SplashActivity;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private final fireActivMetric()V
    .locals 8

    .prologue
    .line 229
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/others/SplashActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    .line 232
    .local v2, "currentNamespace":J
    const-wide v6, 0x161fa729000000L

    cmp-long v1, v6, v2

    if-nez v1, :cond_0

    .line 233
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/eventgenie/android/utils/intents/Navigation;->setActivMetricsReportingEnabled(Z)V

    .line 235
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->getVisitorCredentials()Lcom/genie_connect/android/net/container/LoginCredentials;

    move-result-object v0

    .line 236
    .local v0, "creds":Lcom/genie_connect/android/net/container/LoginCredentials;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/LoginCredentials;->getUserId()J

    move-result-wide v4

    .line 238
    .local v4, "visitorId":J
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    .line 239
    new-instance v1, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsTask;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-direct {v1, v6, v7}, Lcom/eventgenie/android/utils/help/activmetrics/ActivMetricsTask;-><init>(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 243
    .end local v0    # "creds":Lcom/genie_connect/android/net/container/LoginCredentials;
    .end local v4    # "visitorId":J
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "arg0"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x1

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 135
    .local v2, "startTime":J
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$000(Lcom/eventgenie/android/activities/others/SplashActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    .line 136
    .local v0, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    invoke-static {v1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    .line 139
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$000(Lcom/eventgenie/android/activities/others/SplashActivity;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v1

    if-nez v1, :cond_1

    .line 141
    iget-object v5, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->needsCreateOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    :goto_0
    # setter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mHasDB:Z
    invoke-static {v5, v1}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$102(Lcom/eventgenie/android/activities/others/SplashActivity;Z)Z

    .line 142
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^ SPLASH: SQLite user version is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/genie_connect/android/db/datastore/acl/Acl;->getInstance()Lcom/genie_connect/android/db/datastore/acl/Acl;

    .line 150
    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->initialiseCaches()V

    .line 156
    :goto_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mHasDB:Z
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$100(Lcom/eventgenie/android/activities/others/SplashActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 159
    :goto_2
    const-wide/16 v6, 0x3e8

    add-long/2addr v6, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-ltz v1, :cond_2

    .line 160
    monitor-enter p0

    .line 162
    const-wide/16 v6, 0xa

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :goto_3
    :try_start_1
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 141
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 153
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # setter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mHasDB:Z
    invoke-static {v1, v4}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$102(Lcom/eventgenie/android/activities/others/SplashActivity;Z)Z

    goto :goto_1

    .line 169
    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 163
    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 130
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ SPLASH: hasDb   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mHasDB:Z
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$100(Lcom/eventgenie/android/activities/others/SplashActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ SPLASH: Dev     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mIsDevBuild:Z
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$200(Lcom/eventgenie/android/activities/others/SplashActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ SPLASH: Proofer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mIsProofer:Z
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$300(Lcom/eventgenie/android/activities/others/SplashActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^ SPLASH: FirstRun: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mIsFirstRun:Z
    invoke-static {v3}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$400(Lcom/eventgenie/android/activities/others/SplashActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mHasDB:Z
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$100(Lcom/eventgenie/android/activities/others/SplashActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mIsDevBuild:Z
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$200(Lcom/eventgenie/android/activities/others/SplashActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mIsProofer:Z
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$300(Lcom/eventgenie/android/activities/others/SplashActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 183
    const-string v2, "^ SPLASH: This is a BUILD DATA build!"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "fireActiveMetric":Z
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    sget v4, Lcom/eventgenie/android/R$string;->event_packaged_data_version:I

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/activities/others/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/eventgenie/android/activities/others/SplashActivity;->initialiseData(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$500(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 188
    .end local v0    # "fireActiveMetric":Z
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mHasDB:Z
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$100(Lcom/eventgenie/android/activities/others/SplashActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mIsProofer:Z
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$300(Lcom/eventgenie/android/activities/others/SplashActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    const-string v2, "^ SPLASH: This is a PROOFER build!"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x1

    .line 193
    .restart local v0    # "fireActiveMetric":Z
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    const-class v3, Lcom/eventgenie/android/activities/others/ProoferAppSelection;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    invoke-virtual {v2, v1}, Lcom/eventgenie/android/activities/others/SplashActivity;->startActivityCarefully(Landroid/content/Intent;)V

    goto :goto_0

    .line 197
    .end local v0    # "fireActiveMetric":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v2, "^ SPLASH: This is a NORMAL build!"

    invoke-static {v2}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x1

    .line 200
    .restart local v0    # "fireActiveMetric":Z
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveDataFull(Landroid/content/Context;Landroid/os/Handler;)V

    .line 203
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/others/SplashActivity;->getWidgetConfig()Lcom/genie_connect/android/db/config/widgets/WidgetConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/config/widgets/WidgetConfig;->getHomeActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 204
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    invoke-virtual {v2, v1}, Lcom/eventgenie/android/activities/others/SplashActivity;->startActivityCarefully(Landroid/content/Intent;)V

    .line 206
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    sget-object v3, Lcom/genie_connect/android/db/config/GenieWidget;->DASHBOARD:Lcom/genie_connect/android/db/config/GenieWidget;

    invoke-static {v2, v3}, Lcom/genie_connect/android/net/analytics/geniemobile/Analytics;->notifyWidgetOpen(Landroid/content/Context;Lcom/genie_connect/android/db/config/GenieWidget;)Z

    .line 208
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    const/high16 v3, 0x10a0000

    const v4, 0x10a0001

    invoke-virtual {v2, v3, v4}, Lcom/eventgenie/android/activities/others/SplashActivity;->overridePendingTransition(II)V

    .line 210
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    invoke-static {v2}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    if-eqz v0, :cond_3

    .line 213
    invoke-direct {p0}, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->fireActivMetric()V

    .line 219
    :cond_3
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SplashActivity;->mAutoUpdate:Z
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$600(Lcom/eventgenie/android/activities/others/SplashActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->this$0:Lcom/eventgenie/android/activities/others/SplashActivity;

    # invokes: Lcom/eventgenie/android/activities/others/SplashActivity;->checkForUpdates()V
    invoke-static {v2}, Lcom/eventgenie/android/activities/others/SplashActivity;->access$700(Lcom/eventgenie/android/activities/others/SplashActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 130
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/SplashActivity$InitialiseAppTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
