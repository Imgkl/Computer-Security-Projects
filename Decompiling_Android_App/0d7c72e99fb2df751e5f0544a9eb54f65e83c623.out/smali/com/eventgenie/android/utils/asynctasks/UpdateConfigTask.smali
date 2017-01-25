.class public Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;
.super Landroid/os/AsyncTask;
.source "UpdateConfigTask.java"


# annotations
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
.field private final mActivity:Landroid/app/Activity;

.field private final mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->mActivity:Landroid/app/Activity;

    .line 49
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    .line 50
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "arg0"    # [Ljava/lang/Boolean;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getActiveDataInstance()I

    move-result v1

    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    iget-object v3, p0, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;)Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/genie_connect/android/db/config/AppConfig;->updateRemoteConfig(Landroid/content/Context;IJLjava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    .line 68
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/eventgenie/android/utils/intents/Navigation;->goHome(Landroid/app/Activity;)V

    .line 75
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->mActivity:Landroid/app/Activity;

    const-string v1, "Config update failed!"

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/UpdateConfigTask;->mActivity:Landroid/app/Activity;

    const-string v1, "Updating config..."

    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method
