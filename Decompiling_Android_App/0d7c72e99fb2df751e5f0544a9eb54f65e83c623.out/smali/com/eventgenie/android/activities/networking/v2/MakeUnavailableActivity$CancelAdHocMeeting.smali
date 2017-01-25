.class Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;
.super Landroid/os/AsyncTask;
.source "MakeUnavailableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelAdHocMeeting"
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
.field private final mId:J

.field final synthetic this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;


# direct methods
.method public constructor <init>(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;J)V
    .locals 0
    .param p2, "id"    # J

    .prologue
    .line 417
    iput-object p1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 418
    iput-wide p2, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->mId:J

    .line 419
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 6
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 423
    new-instance v1, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;

    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-direct {v1, v3}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;-><init>(Landroid/content/Context;)V

    .line 424
    .local v1, "netMeetings":Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;
    iget-object v3, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    .line 425
    .local v0, "db":Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    sget-object v3, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->AGENDAITEM:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->mId:J

    invoke-virtual {v0, v3, v4, v5}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->deleteEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)I

    .line 428
    iget-wide v4, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->mId:J

    const/4 v3, 0x1

    invoke-virtual {v1, v4, v5, v3}, Lcom/genie_connect/android/net/providers/NetworkNetworkingV2;->agendaItemRemove(JZ)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v2

    .line 429
    .local v2, "result":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 414
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->doInBackground([Ljava/lang/Void;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    .locals 3
    .param p1, "result"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    const/4 v1, 0x0

    .line 434
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-virtual {v0, v1, v1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->showIndicator(ZZ)V

    .line 436
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    sget v1, Lcom/eventgenie/android/R$string;->meeting_discarded:I

    sget-object v2, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;ILcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 441
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->finish()V

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    const/4 v1, 0x1

    # invokes: Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->setActionbarEnabled(Z)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->access$300(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;Z)V

    .line 450
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

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
    .line 414
    check-cast p1, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 454
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->showIndicator(ZZ)V

    .line 455
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity$CancelAdHocMeeting;->this$0:Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;

    # invokes: Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->setActionbarEnabled(Z)V
    invoke-static {v0, v2}, Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;->access$300(Lcom/eventgenie/android/activities/networking/v2/MakeUnavailableActivity;Z)V

    .line 456
    return-void
.end method
