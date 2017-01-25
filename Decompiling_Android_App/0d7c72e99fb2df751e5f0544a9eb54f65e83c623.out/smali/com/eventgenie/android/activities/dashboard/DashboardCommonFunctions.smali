.class public Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;
.super Ljava/lang/Object;
.source "DashboardCommonFunctions.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadDataIfNecessary(Landroid/app/Activity;Lcom/genie_connect/android/db/config/AppConfig;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Lcom/genie_connect/android/db/config/AppConfig;

    .prologue
    .line 28
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/genie_connect/android/prefs/PreferencesManager;->getNamespacedPreferences(Landroid/content/Context;J)Lcom/genie_connect/android/prefs/NamespacedPreferences;

    move-result-object v3

    .line 31
    .local v3, "prefs":Lcom/genie_connect/android/prefs/NamespacedPreferences;
    invoke-virtual {v3}, Lcom/genie_connect/android/prefs/NamespacedPreferences;->isDataDownloadRequired()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    const-string v4, "^ Data download required - starting DataUpdateWaitActivity"

    invoke-static {v4}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 35
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/eventgenie/android/activities/others/DataUpdateWaitActivity;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lcom/eventgenie/android/activities/dashboard/DashboardCommonFunctions;->getFullEvent(Landroid/app/Activity;J)Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    move-result-object v0

    .line 39
    .local v0, "app":Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v1, "b":Landroid/os/Bundle;
    const-string v4, "com.eventgenie.android.EXTRA_ACTION"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    const-string v4, "com.eventgenie.android.EXTRA_VERSION"

    invoke-virtual {v0}, Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;->getLiveVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 49
    .end local v0    # "app":Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public getFullEvent(Landroid/app/Activity;J)Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "namespace"    # J

    .prologue
    .line 52
    invoke-static {p1}, Lcom/genie_connect/android/security/CmsLoginManager;->getCurrentCmsLoginManager(Landroid/content/Context;)Lcom/genie_connect/android/security/CmsLoginManager;

    move-result-object v1

    .line 55
    .local v1, "cmsLogin":Lcom/genie_connect/android/security/CmsLoginManager;
    new-instance v2, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    invoke-direct {v2, p1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    .line 58
    .local v2, "networkDownloader":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    sget-object v4, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v2, v4, p2, p3}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v3

    .line 60
    .local v3, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v3}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    invoke-virtual {v3}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    .line 63
    .local v0, "app":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v0, :cond_0

    .line 64
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/ProoferAppSelection;->populateProoferEvent(Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/android/net/container/gson/entities/AppGsonModel;

    move-result-object v4

    .line 68
    .end local v0    # "app":Lcom/genie_connect/common/platform/json/IJsonObject;
    :goto_0
    return-object v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
