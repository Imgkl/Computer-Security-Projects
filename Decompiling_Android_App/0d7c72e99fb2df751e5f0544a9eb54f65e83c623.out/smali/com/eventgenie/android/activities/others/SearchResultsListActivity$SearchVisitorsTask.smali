.class Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;
.super Landroid/os/AsyncTask;
.source "SearchResultsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/SearchResultsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchVisitorsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/genie_connect/common/net/container/NetworkResultJsonContent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/others/SearchResultsListActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/others/SearchResultsListActivity;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;->this$0:Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 460
    aget-object v0, p1, v3

    .line 461
    .local v0, "keywords":Ljava/lang/String;
    new-instance v1, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v2, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;->this$0:Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    invoke-direct {v1, v2}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    .line 462
    .local v1, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    invoke-virtual {v1, v0, v3}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getVisitors(Ljava/lang/String;I)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 456
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;->doInBackground([Ljava/lang/String;)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
    .locals 6
    .param p1, "result"    # Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .prologue
    const/4 v1, 0x0

    .line 467
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;->this$0:Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    invoke-virtual {v0, v1, v1}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->showIndicator(ZZ)V

    .line 468
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;->this$0:Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mTvEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->access$200(Lcom/eventgenie/android/activities/others/SearchResultsListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;->this$0:Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonArray()Lcom/genie_connect/common/platform/json/IJsonArray;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/platform/json/GenieJsonArray;

    invoke-virtual {v0}, Lcom/genie_connect/android/platform/json/GenieJsonArray;->getRawArray()Lorg/json/JSONArray;

    move-result-object v0

    # setter for: Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkData:Lorg/json/JSONArray;
    invoke-static {v1, v0}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->access$002(Lcom/eventgenie/android/activities/others/SearchResultsListActivity;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 471
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;->this$0:Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;->this$0:Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    # getter for: Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->mNetworkData:Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->access$000(Lcom/eventgenie/android/activities/others/SearchResultsListActivity;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getNextRangeStart()I

    move-result v2

    invoke-virtual {p1}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getRangeMax()J

    move-result-wide v4

    # invokes: Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->onSearchVisitorResponse(Lorg/json/JSONArray;IJ)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity;->access$100(Lcom/eventgenie/android/activities/others/SearchResultsListActivity;Lorg/json/JSONArray;IJ)V

    .line 478
    :goto_0
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;->this$0:Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;->this$0:Lcom/eventgenie/android/activities/others/SearchResultsListActivity;

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
    .line 456
    check-cast p1, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/others/SearchResultsListActivity$SearchVisitorsTask;->onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V

    return-void
.end method