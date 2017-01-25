.class public Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;
.super Landroid/os/AsyncTask;
.source "ValidateFavouritingOnServerTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAction:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

.field private final mActivity:Landroid/app/Activity;

.field private final mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private final mId:J

.field private mNetworkSender:Lcom/genie_connect/android/net/providers/NetworkSender;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLcom/genie_connect/android/db/access/Udm$FavouriteAction;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "entity"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p3, "id"    # J
    .param p5, "action"    # Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p5, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mAction:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    .line 28
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mActivity:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 30
    iput-wide p3, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mId:J

    .line 31
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkSender;

    invoke-direct {v0, p1}, Lcom/genie_connect/android/net/providers/NetworkSender;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mNetworkSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    .line 32
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;
    .locals 11
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 45
    iget-object v6, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mNetworkSender:Lcom/genie_connect/android/net/providers/NetworkSender;

    iget-object v7, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mEntity:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-wide v8, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mId:J

    iget-object v10, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mAction:Lcom/genie_connect/android/db/access/Udm$FavouriteAction;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/genie_connect/android/net/providers/NetworkSender;->postFavouriteForGson(Lcom/genie_connect/common/db/entityfactory/GenieEntity;JLcom/genie_connect/android/db/access/Udm$FavouriteAction;)Lcom/genie_connect/common/net/container/NetworkResultGsonContent;

    move-result-object v2

    .line 49
    .local v2, "netResult":Lcom/genie_connect/common/net/container/NetworkResultGsonContent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "^ VALIDATEFAVOURITESONSERVER: Response - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 51
    if-nez v2, :cond_0

    .line 52
    const-string v1, "There was an error processing your request.\nTry again later."

    .line 53
    .local v1, "message":Ljava/lang/String;
    const/4 v5, 0x0

    .line 70
    .local v5, "successful":Z
    :goto_0
    new-instance v6, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;

    invoke-direct {v6, v5, v1}, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;-><init>(ZLjava/lang/String;)V

    return-object v6

    .line 54
    .end local v1    # "message":Ljava/lang/String;
    .end local v5    # "successful":Z
    :cond_0
    invoke-virtual {v2}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->isSuccesful()Z

    move-result v6

    if-nez v6, :cond_1

    .line 55
    iget-object v6, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->getNetworkResultError(Landroid/content/Context;Lcom/genie_connect/common/net/container/NetworkResult;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .restart local v1    # "message":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "successful":Z
    goto :goto_0

    .line 58
    .end local v1    # "message":Ljava/lang/String;
    .end local v5    # "successful":Z
    :cond_1
    invoke-virtual {v2}, Lcom/genie_connect/common/net/container/NetworkResultGsonContent;->getPayload()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/genie_connect/android/net/container/gson/rpc/EmptyRpcResponseModel;

    .line 59
    .local v4, "response":Lcom/genie_connect/android/net/container/gson/rpc/EmptyRpcResponseModel;
    invoke-virtual {v4}, Lcom/genie_connect/android/net/container/gson/rpc/EmptyRpcResponseModel;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "rawMessage":Ljava/lang/String;
    if-nez v3, :cond_2

    const/4 v0, 0x0

    .line 62
    .local v0, "cleanMessage":Ljava/lang/String;
    :goto_1
    move-object v1, v0

    .line 63
    .restart local v1    # "message":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/genie_connect/android/net/container/gson/rpc/EmptyRpcResponseModel;->getStatus()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 64
    const/4 v5, 0x1

    .restart local v5    # "successful":Z
    goto :goto_0

    .line 60
    .end local v0    # "cleanMessage":Ljava/lang/String;
    .end local v1    # "message":Ljava/lang/String;
    .end local v5    # "successful":Z
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 66
    .restart local v0    # "cleanMessage":Ljava/lang/String;
    .restart local v1    # "message":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "successful":Z
    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->doInBackground([Ljava/lang/Void;)Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;)V
    .locals 3
    .param p1, "result"    # Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 17
    check-cast p1, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->onPostExecute(Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 37
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string v1, "Validating your request..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 39
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 40
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 41
    return-void
.end method
