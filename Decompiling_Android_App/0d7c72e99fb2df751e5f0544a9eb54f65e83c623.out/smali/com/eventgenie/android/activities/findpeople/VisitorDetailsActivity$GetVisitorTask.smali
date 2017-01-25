.class Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;
.super Landroid/os/AsyncTask;
.source "VisitorDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetVisitorTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Lcom/genie_connect/common/net/container/NetworkResultJsonContent;",
        ">;"
    }
.end annotation


# instance fields
.field private persistVisitor:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;)V
    .locals 1

    .prologue
    .line 602
    iput-object p1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 604
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->persistVisitor:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ VISITOR: force persist? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 609
    aget-object v1, p1, v3

    iput-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->persistVisitor:Ljava/lang/Boolean;

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^ VISITOR: Is fav? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getIsFavourite()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 611
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    invoke-direct {v0, v1}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    .line 612
    .local v0, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->mVisitorId:J
    invoke-static {v2}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->access$000(Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 602
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->doInBackground([Ljava/lang/Boolean;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    .locals 4
    .param p1, "result"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    const/4 v2, 0x0

    .line 617
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    invoke-virtual {v1, v2, v2}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->showIndicator(ZZ)V

    .line 618
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 620
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v1

    check-cast v1, Lcom/genie_connect/android/platform/json/GenieJsonObject;

    invoke-virtual {v1}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->getRawObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 621
    .local v0, "jsonObj":Lorg/json/JSONObject;
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getIsFavourite()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getHasNote()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->persistVisitor:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 622
    :cond_0
    const-string v1, "^ VISITOR: persisting the visitor."

    invoke-static {v1}, Lcom/eventgenie/android/utils/Log;->debug(Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    # invokes: Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->persistVisitor(Lorg/json/JSONObject;)V
    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->access$100(Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;Lorg/json/JSONObject;)V

    .line 627
    :cond_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    # invokes: Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->updateUI(Lorg/json/JSONObject;)V
    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->access$200(Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;Lorg/json/JSONObject;)V

    .line 645
    .end local v0    # "jsonObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 629
    :cond_2
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getResponseCode()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_3

    .line 630
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    sget v3, Lcom/eventgenie/android/R$string;->visitor_permission_denied:I

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    .line 643
    :goto_1
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;->finish()V

    goto :goto_0

    .line 636
    :cond_3
    iget-object v1, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->this$0:Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity;

    invoke-static {v2, p1}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->getNetworkResultError(Landroid/content/Context;Lcom/genie_connect/common/net/container/NetworkResult;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v1, v2, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 602
    check-cast p1, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/findpeople/VisitorDetailsActivity$GetVisitorTask;->onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V

    return-void
.end method
