.class public Lcom/eventgenie/android/ui/dialog/GenieDialog;
.super Landroid/app/Dialog;
.source "GenieDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/dialog/GenieDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 18
    .local v0, "configuration":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/dialog/GenieDialog;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/dialog/GenieDialog;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/dialog/GenieDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/eventgenie/android/utils/managers/LocaleManager;->updateLocale(Landroid/content/res/Configuration;Lcom/genie_connect/android/db/config/AppConfig;Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 3

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/dialog/GenieDialog;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/ui/dialog/GenieDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/eventgenie/android/ui/dialog/GenieDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method

.method public getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getLocaleManager()Lcom/eventgenie/android/utils/managers/LocaleManager;

    move-result-object v0

    return-object v0
.end method
