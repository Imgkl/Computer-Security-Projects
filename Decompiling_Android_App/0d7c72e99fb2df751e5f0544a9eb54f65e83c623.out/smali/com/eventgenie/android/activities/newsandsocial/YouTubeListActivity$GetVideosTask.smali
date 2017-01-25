.class Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;
.super Landroid/os/AsyncTask;
.source "YouTubeListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetVideosTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;


# direct methods
.method private constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;
    .param p2, "x1"    # Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$1;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;-><init>(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;
    .locals 6
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    const-class v2, Lcom/eventgenie/android/utils/social/youtube/YouTube;

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/social/youtube/YouTube;

    .line 160
    .local v0, "yt":Lcom/eventgenie/android/utils/social/youtube/YouTube;
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mUserName:Ljava/lang/String;
    invoke-static {v1}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->access$100(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mTagFilter:Ljava/lang/String;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->access$200(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x32

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->getVideos(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 154
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;->doInBackground([Ljava/lang/Void;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;)V
    .locals 3
    .param p1, "result"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;

    .prologue
    const/4 v2, 0x0

    .line 165
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;->hasVideos()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    # invokes: Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->getListData(Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;)Ljava/util/List;
    invoke-static {v1, p1}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->access$400(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;)Ljava/util/List;

    move-result-object v1

    # setter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->mData:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->access$302(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;Ljava/util/List;)Ljava/util/List;

    .line 167
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    # invokes: Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->populateList()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->access$500(Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;)V

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    invoke-virtual {v0, v2, v2}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->showIndicator(ZZ)V

    .line 175
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    invoke-static {v0}, Lcom/eventgenie/android/utils/managers/UserNotificationManager;->showToastNoNetwork(Landroid/content/Context;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 154
    check-cast p1, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeListActivity$GetVideosTask;->onPostExecute(Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoList;)V

    return-void
.end method
