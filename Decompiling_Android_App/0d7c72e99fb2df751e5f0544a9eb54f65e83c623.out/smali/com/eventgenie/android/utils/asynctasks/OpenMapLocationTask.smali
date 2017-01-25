.class public Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;
.super Landroid/os/AsyncTask;
.source "OpenMapLocationTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "location"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->mActivity:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->mLocation:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private toggleIndicator(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 107
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;

    invoke-interface {v0}, Lcom/eventgenie/android/ui/actionbar/GenieActionbarControls;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->displayAppropriateIndicator(ZZ)V

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 65
    .local v1, "res":Z
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->mLocation:Ljava/lang/String;

    invoke-static {v2}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getLocations()Lcom/genie_connect/android/db/access/DbLocations;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->mLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/access/DbLocations;->getLocation(Ljava/lang/String;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    .line 68
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 69
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 75
    .end local v0    # "c":Landroid/database/Cursor;
    :goto_0
    return-object v2

    .line 71
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    .line 75
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/genie_connect/android/db/config/AppConfig;
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 113
    invoke-static {p1}, Lcom/eventgenie/android/activities/base/GenieActivityStaticMethods;->getDataStore(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 84
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->toggleIndicator(Z)V

    .line 85
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/eventgenie/android/activities/mapping/Map2DActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "window_title"

    invoke-virtual {p0}, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    sget-object v4, Lcom/genie_connect/android/db/config/misc/Noun$NounKey;->FLOORPLANS:Lcom/genie_connect/android/db/config/misc/Noun$NounKey;

    sget-object v5, Lcom/genie_connect/android/db/config/misc/Noun$NounType;->PLURAL:Lcom/genie_connect/android/db/config/misc/Noun$NounType;

    invoke-virtual {v3, v4, v5}, Lcom/genie_connect/android/db/config/AppConfig;->getNoun(Lcom/genie_connect/android/db/config/misc/Noun$NounKey;Lcom/genie_connect/android/db/config/misc/Noun$NounType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "location_focus"

    iget-object v3, p0, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 92
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/eventgenie/android/utils/intents/Navigation;->startActivityCarefully(Landroid/content/Context;Landroid/content/Intent;)V

    .line 99
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->mActivity:Landroid/app/Activity;

    sget v3, Lcom/eventgenie/android/R$string;->location_unavailable:I

    sget-object v4, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v2, v3, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/eventgenie/android/utils/asynctasks/OpenMapLocationTask;->toggleIndicator(Z)V

    .line 104
    return-void
.end method
