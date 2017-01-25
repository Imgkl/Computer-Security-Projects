.class public abstract Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;
.super Lcom/eventgenie/android/activities/base/GenieBaseActivity;
.source "EmspBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected OpenEntityPicker(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 120
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 121
    .local v0, "entitySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/genie_connect/common/db/entityfactory/GenieEntity;>;"
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->EXHIBITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPFACILITY:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MAPZONE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->SUBSESSION:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-static {p0, v0}, Lcom/eventgenie/android/activities/others/EntityPickerActivity;->getIntentForLocationPicking(Landroid/content/Context;Ljava/util/Set;)Landroid/content/Intent;

    move-result-object v1

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, p1}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    return-void
.end method

.method protected lookupLocation()V
    .locals 3

    .prologue
    .line 64
    sget v0, Lcom/eventgenie/android/R$string;->map_route_finding_location:I

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {p0, v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 69
    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    new-instance v2, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;

    invoke-direct {v2, p0}, Lcom/eventgenie/android/activities/mapping/EmspBaseActivity$1;-><init>(Lcom/eventgenie/android/activities/mapping/EmspBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getCurrentLocation(Lcom/genie_connect/android/db/access/GenieConnectDatabase;Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V

    .line 112
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->registerActivity(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/eventgenie/android/activities/base/GenieBaseActivity;->onDestroy()V

    .line 39
    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->unregisterActivity(Landroid/app/Activity;)V

    .line 40
    return-void
.end method

.method protected abstract onLocationFound(Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V
.end method

.method protected useEmsp()Z
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->getInstance()Lcom/eventgenie/android/utils/help/emsp/EmspManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eventgenie/android/utils/help/emsp/EmspManager;->isEmspEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
