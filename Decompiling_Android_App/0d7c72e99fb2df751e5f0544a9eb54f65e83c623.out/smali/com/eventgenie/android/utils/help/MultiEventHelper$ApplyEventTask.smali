.class Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;
.super Landroid/os/AsyncTask;
.source "MultiEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/help/MultiEventHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplyEventTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Lcom/genie_connect/common/net/container/NetworkResultJsonContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 6
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 246
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$000(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Basic YW5vbnltb3VzOmd1ZXN0"

    iget-object v3, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mSelectedAppId:J
    invoke-static {v3}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$300(Lcom/eventgenie/android/utils/help/MultiEventHelper;)J

    move-result-wide v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;Ljava/lang/String;J)V

    .line 250
    .local v0, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    const-string v1, "^ starting GetAppLiveVersionTask..."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 251
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->APP:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mSelectedAppId:J
    invoke-static {v2}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$300(Lcom/eventgenie/android/utils/help/MultiEventHelper;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 243
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    .locals 9
    .param p1, "result"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 257
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 259
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v2

    .line 260
    .local v2, "o":Lcom/genie_connect/common/platform/json/IJsonObject;
    const-string v7, "liveVersion"

    invoke-interface {v2, v7}, Lcom/genie_connect/common/platform/json/IJsonObject;->optJSONObject(Ljava/lang/String;)Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v0

    .line 262
    .local v0, "live":Lcom/genie_connect/common/platform/json/IJsonObject;
    if-eqz v0, :cond_0

    .line 263
    const-string v7, "name"

    invoke-static {v0, v7}, Lcom/eventgenie/android/ui/help/UIUtils;->optString(Lcom/genie_connect/common/platform/json/IJsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "v":Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$000(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/genie_connect/android/net/providers/DeltaUtils;->canRecieveUpdates(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    move v1, v5

    .line 269
    .local v1, "liveMode":Z
    :goto_1
    if-eqz v1, :cond_2

    const/4 v4, 0x0

    .line 271
    .local v4, "versionName":Ljava/lang/String;
    :goto_2
    iget-object v7, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static {v7}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$100(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v7

    iget-object v8, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$000(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8, v5, v6}, Lcom/genie_connect/android/db/datastore/Datastore;->setActiveDataInstance(Landroid/content/Context;IZ)V

    .line 273
    new-instance v5, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;

    invoke-direct {v5, p0, v4}, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;-><init>(Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;Ljava/lang/String;)V

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 292
    .end local v0    # "live":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v1    # "liveMode":Z
    .end local v2    # "o":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v3    # "v":Ljava/lang/String;
    .end local v4    # "versionName":Ljava/lang/String;
    :goto_3
    return-void

    .line 265
    .restart local v0    # "live":Lcom/genie_connect/common/platform/json/IJsonObject;
    .restart local v2    # "o":Lcom/genie_connect/common/platform/json/IJsonObject;
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "v":Ljava/lang/String;
    goto :goto_0

    :cond_1
    move v1, v6

    .line 268
    goto :goto_1

    .restart local v1    # "liveMode":Z
    :cond_2
    move-object v4, v3

    .line 269
    goto :goto_2

    .line 290
    .end local v0    # "live":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v1    # "liveMode":Z
    .end local v2    # "o":Lcom/genie_connect/common/platform/json/IJsonObject;
    .end local v3    # "v":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$000(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 243
    check-cast p1, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V

    return-void
.end method
