.class public Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;
.super Landroid/os/AsyncTask;
.source "MessagesSendMessageTask.java"


# annotations
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
.field private final mActivity:Landroid/support/v4/app/FragmentActivity;

.field private final mBody:Ljava/lang/String;

.field private final mDialogControls:Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;

.field private final mSubject:Ljava/lang/String;

.field private final mVisitorId:J


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "recipientId"    # J
    .param p4, "subject"    # Ljava/lang/String;
    .param p5, "body"    # Ljava/lang/String;
    .param p6, "replyTo"    # Ljava/lang/Long;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 55
    iput-wide p2, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mVisitorId:J

    .line 56
    iput-object p4, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mSubject:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mBody:Ljava/lang/String;

    .line 58
    new-instance v0, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mDialogControls:Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;

    .line 59
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 12
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkPersister;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/genie_connect/android/net/providers/NetworkPersister;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "netPersist":Lcom/genie_connect/android/net/providers/NetworkPersister;
    new-instance v7, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v7, v1}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;-><init>(Landroid/content/Context;)V

    .line 73
    .local v7, "netMeetings":Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v6

    .line 75
    .local v6, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    iget-wide v10, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mVisitorId:J

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mSubject:Ljava/lang/String;

    iget-object v3, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mBody:Ljava/lang/String;

    invoke-virtual {v7, v10, v11, v1, v3}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->postMessage(JLjava/lang/String;Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v8

    .line 77
    .local v8, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/Udm;->getMessageLastSyncedTimestamp()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "timestamp":Ljava/lang/String;
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadEntities(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/common/net/container/NetworkResult;

    .line 79
    return-object v8
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    .locals 3
    .param p1, "result"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mDialogControls:Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;->dialogFragmentDismiss()V

    .line 86
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/eventgenie/android/R$string;->message_sent:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 90
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, p1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->getNetworkResultError(Landroid/content/Context;Lcom/genie_connect/common/net/container/NetworkResult;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mDialogControls:Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/eventgenie/android/R$string;->please_wait:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/MessagesSendMessageTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/eventgenie/android/R$string;->dialog_text_sending_message:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;->dialogFragmentShow(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 67
    return-void
.end method
