.class public Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;
.super Landroid/os/AsyncTask;
.source "MeetingsV2AcceptCancelMeetingTask.java"


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


# static fields
.field public static final ACTION_ACCEPT_MEETING:I = 0x0

.field public static final ACTION_CANCEL_MEETING:I = 0x1


# instance fields
.field private final mActivity:Landroid/support/v4/app/FragmentActivity;

.field private final mComments:Ljava/lang/String;

.field private final mCurrentAction:I

.field private final mDialogControls:Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;

.field private final mMeetingId:J

.field private final mShowUI:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "action"    # I
    .param p3, "meetingId"    # J
    .param p5, "comments"    # Ljava/lang/String;
    .param p6, "dialogTag"    # Ljava/lang/String;

    .prologue
    .line 62
    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;-><init>(Landroid/support/v4/app/FragmentActivity;IJLjava/lang/String;Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;IJLjava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "action"    # I
    .param p3, "meetingId"    # J
    .param p5, "comments"    # Ljava/lang/String;
    .param p6, "dialogTag"    # Ljava/lang/String;
    .param p7, "showUI"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    .line 68
    iput p2, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mCurrentAction:I

    .line 69
    iput-wide p3, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mMeetingId:J

    .line 70
    if-nez p5, :cond_0

    const-string p5, ""

    .end local p5    # "comments":Ljava/lang/String;
    :cond_0
    iput-object p5, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mComments:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mDialogControls:Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;

    .line 72
    iput-boolean p7, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mShowUI:Z

    .line 73
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 14
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkPersister;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v0, v1}, Lcom/genie_connect/android/net/providers/NetworkPersister;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "netPersist":Lcom/genie_connect/android/net/providers/NetworkPersister;
    new-instance v8, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v8, v1}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;-><init>(Landroid/content/Context;)V

    .line 98
    .local v8, "netMeetings":Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;
    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1}, Lcom/genie_connect/android/db/datastore/DataStoreSingleton;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/datastore/Datastore;->getDB()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v6

    .line 99
    .local v6, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    const/4 v10, 0x0

    .line 101
    .local v10, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    iget v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mCurrentAction:I

    if-nez v1, :cond_2

    .line 102
    iget-wide v4, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mMeetingId:J

    invoke-virtual {v8, v4, v5}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->meetingAccept(J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v10

    .line 115
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    new-instance v7, Lcom/genie_connect/common/db/model/Meeting;

    invoke-direct {v7}, Lcom/genie_connect/common/db/model/Meeting;-><init>()V

    .line 118
    .local v7, "m":Lcom/genie_connect/common/db/model/Meeting;
    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabaseWrapper()Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-result-object v1

    const-string v3, "id=?"

    new-array v4, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v12, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mMeetingId:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v4, v5

    invoke-virtual {v7, v1, v3, v4}, Lcom/genie_connect/common/db/model/Meeting;->doSQLiteDelete(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MEETING:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v6}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadEntities(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/common/net/container/NetworkResult;

    .line 124
    .end local v7    # "m":Lcom/genie_connect/common/db/model/Meeting;
    :cond_1
    return-object v10

    .line 104
    :cond_2
    iget v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mCurrentAction:I

    if-ne v1, v11, :cond_0

    .line 105
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->getObjectGraph()Ldagger/ObjectGraph;

    move-result-object v1

    const-class v3, Lcom/genie_connect/android/repository/MeetingRepository;

    invoke-virtual {v1, v3}, Ldagger/ObjectGraph;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/genie_connect/android/repository/MeetingRepository;

    .line 107
    .local v9, "repo":Lcom/genie_connect/android/repository/MeetingRepository;
    iget-wide v4, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mMeetingId:J

    invoke-virtual {v9, v4, v5}, Lcom/genie_connect/android/repository/MeetingRepository;->shouldDeclineMeeting(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    iget-wide v4, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mMeetingId:J

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mComments:Ljava/lang/String;

    invoke-virtual {v8, v4, v5, v1}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->meetingDecline(JLjava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v10

    goto :goto_0

    .line 110
    :cond_3
    iget-wide v4, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mMeetingId:J

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mComments:Ljava/lang/String;

    invoke-virtual {v8, v4, v5, v1}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->meetingCancel(JLjava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v10

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    .locals 3
    .param p1, "result"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mShowUI:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mDialogControls:Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;

    invoke-virtual {v0}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;->dialogFragmentDismiss()V

    .line 134
    if-eqz p1, :cond_3

    .line 135
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mCurrentAction:I

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/eventgenie/android/R$string;->meeting_accept:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 141
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mCurrentAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/eventgenie/android/R$string;->meeting_cancel_success:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 147
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, p1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->getNetworkResultError(Landroid/content/Context;Lcom/genie_connect/common/net/container/NetworkResult;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 49
    check-cast p1, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 78
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mShowUI:Z

    if-eqz v0, :cond_0

    .line 79
    iget v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mCurrentAction:I

    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mDialogControls:Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/eventgenie/android/R$string;->please_wait:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/eventgenie/android/R$string;->dialog_text_accepting_the_meeting:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;->dialogFragmentShow(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mCurrentAction:I

    if-ne v0, v4, :cond_0

    .line 86
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mDialogControls:Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;

    iget-object v1, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v2, Lcom/eventgenie/android/R$string;->please_wait:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/utils/asynctasks/MeetingsV2AcceptCancelMeetingTask;->mActivity:Landroid/support/v4/app/FragmentActivity;

    sget v3, Lcom/eventgenie/android/R$string;->dialog_text_cancelling_the_meeting:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/eventgenie/android/fragments/dialogs/ProgressDialogFrarmentControls;->dialogFragmentShow(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
