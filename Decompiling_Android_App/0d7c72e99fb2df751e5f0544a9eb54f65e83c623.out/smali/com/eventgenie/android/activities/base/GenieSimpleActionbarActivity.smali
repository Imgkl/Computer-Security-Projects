.class public abstract Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;
.super Landroid/app/Activity;
.source "GenieSimpleActionbarActivity.java"

# interfaces
.implements Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;
.implements Lcom/eventgenie/android/activities/base/ActivityFields;


# instance fields
.field private mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;->mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;->mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;->mActionBar:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    return-object v0
.end method

.method public getActionbarCommon()Lcom/eventgenie/android/ui/actionbar/ActionbarTopControls;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    return-object v0
.end method

.method public getActionbarCompat()Lcom/eventgenie/android/ui/actionbar/GenieAbc;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is a GenieBaseActivity, you should use getActionbar() instead!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;->getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDataStore()Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1

    .prologue
    .line 76
    invoke-static {p0}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/config/AppConfig;->getFeatureConfig()Lcom/genie_connect/android/db/config/FeatureConfig;

    move-result-object v0

    return-object v0
.end method

.method public getLastNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRestServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-static {}, Lcom/genie_connect/android/net/ReachabilityManager;->getInstance()Lcom/genie_connect/android/net/ReachabilityManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/genie_connect/android/net/ReachabilityManager;->getServer(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 94
    invoke-static {p0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onContactItemClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 98
    new-instance v0, Lcom/eventgenie/android/utils/intents/IntentFactory;

    invoke-direct {v0, p0}, Lcom/eventgenie/android/utils/intents/IntentFactory;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/eventgenie/android/utils/intents/IntentFactory;->getContactDetailsIntent(Landroid/view/View;)Lcom/eventgenie/android/utils/intents/NavigationIntent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/eventgenie/android/utils/intents/Navigation;->navigateTo(Landroid/content/Context;Lcom/eventgenie/android/utils/intents/NavigationIntent;)V

    .line 99
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "paramMenuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 109
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 114
    invoke-virtual {p0}, Lcom/eventgenie/android/activities/base/GenieSimpleActionbarActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    .line 115
    return-void
.end method

.method public startActivityCarefully(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 118
    invoke-static {p0, p1}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 119
    return-void
.end method
