.class Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;
.super Landroid/os/AsyncTask;
.source "RSSFeedListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncGetFeedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Lcom/eventgenie/android/utils/social/rss/RssChannel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Lcom/eventgenie/android/utils/social/rss/RssChannel;
    .locals 4
    .param p1, "arg0"    # [Ljava/lang/Boolean;

    .prologue
    .line 332
    invoke-static {}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->get()Lcom/eventgenie/android/utils/social/rss/RssFeedParser;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mFeedUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/eventgenie/android/utils/social/rss/RssFeedParser;->getFeed(Ljava/lang/String;Landroid/content/Context;Z)Lcom/eventgenie/android/utils/social/rss/RssChannel;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 328
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->doInBackground([Ljava/lang/Boolean;)Lcom/eventgenie/android/utils/social/rss/RssChannel;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/eventgenie/android/utils/social/rss/RssChannel;)V
    .locals 3
    .param p1, "result"    # Lcom/eventgenie/android/utils/social/rss/RssChannel;

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->tvEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->access$100(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->msg_no_network:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 344
    :goto_0
    if-eqz p1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    invoke-virtual {v1, p1}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getListData(Lcom/eventgenie/android/utils/social/rss/RssChannel;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->mRssFeedItemList:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->access$202(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;Ljava/util/List;)Ljava/util/List;

    .line 347
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    # invokes: Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->populateUi()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->access$300(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)V

    .line 355
    :goto_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->hideActionBar:Z
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->access$400(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 356
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->parentActivity:Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->access$500(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->showIndicator(Z)V

    .line 360
    :goto_2
    return-void

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->tvEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->access$100(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget v1, Lcom/eventgenie/android/R$string;->no_data:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    invoke-static {v0}, Lcom/genie_connect/android/net/providers/NetworkUtils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    .line 352
    :cond_2
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->tvEmpty:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->access$100(Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v0

    sget-object v1, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->INDICATOR_RIGHT:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v0, v1, v2}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 328
    check-cast p1, Lcom/eventgenie/android/utils/social/rss/RssChannel;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/RSSFeedListActivity$AsyncGetFeedTask;->onPostExecute(Lcom/eventgenie/android/utils/social/rss/RssChannel;)V

    return-void
.end method
