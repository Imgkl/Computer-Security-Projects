.class Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;
.super Landroid/os/AsyncTask;
.source "YouTubeDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

.field final synthetic val$image:Landroid/widget/ImageView;

.field final synthetic val$meta:Landroid/widget/TextView;

.field final synthetic val$timestamp:Landroid/widget/TextView;

.field final synthetic val$title:Landroid/widget/TextView;

.field final synthetic val$wv:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    iput-object p2, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->val$title:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->val$timestamp:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->val$meta:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->val$image:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->val$wv:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    const-class v2, Lcom/eventgenie/android/utils/social/youtube/YouTube;

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->getProvider(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/social/youtube/YouTube;

    .line 105
    .local v0, "yt":Lcom/eventgenie/android/utils/social/youtube/YouTube;
    aget-object v1, p1, v3

    invoke-virtual {v0, v1, v3}, Lcom/eventgenie/android/utils/social/youtube/YouTube;->getVideo(Ljava/lang/String;Z)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->doInBackground([Ljava/lang/String;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;)V
    .locals 12
    .param p1, "result"    # Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 110
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 112
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    # setter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mVideo:Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    invoke-static {v6, p1}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->access$002(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    .line 114
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mVideo:Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    invoke-static {v7}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->getUrl()Ljava/lang/String;

    move-result-object v7

    # setter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mShareUrl:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->access$102(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mShareUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->access$100(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mShareUrl:Ljava/lang/String;
    invoke-static {v6}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->access$100(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 117
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    invoke-virtual {v6}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v6

    sget-object v7, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->SHARE:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v6, v7, v10}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 118
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    invoke-virtual {v6}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->getActionbar()Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    move-result-object v6

    sget-object v7, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;->VIEW:Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;

    invoke-virtual {v6, v7, v10}, Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->showAction(Lcom/eventgenie/android/ui/actionbar/GenieActionbar$ACTION;Z)V

    .line 121
    :cond_0
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->val$title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mVideo:Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    invoke-static {v7}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    move-result-object v7

    invoke-virtual {v7}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mVideo:Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    invoke-static {v6}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->getDate()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "s":Ljava/lang/String;
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->val$timestamp:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    invoke-virtual {v7}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/AppConfig;->getSetup()Lcom/genie_connect/android/db/config/SetupConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/SetupConfig;->getManageTimeFormat()I

    move-result v7

    iget-object v8, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    invoke-static {v7, v2, v8}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->doFormat(ILjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    sget v7, Lcom/eventgenie/android/R$string;->youtube_views_fmt:I

    invoke-virtual {v6, v7}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mVideo:Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    invoke-static {v8}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->getPlays()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "views":Ljava/lang/String;
    new-instance v3, Ljava/util/Date;

    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mVideo:Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    invoke-static {v6}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->getDurationSeconds()I

    move-result v6

    int-to-long v6, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 132
    .local v3, "time":Ljava/util/Date;
    # getter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->durationFormat:Ljava/text/DateFormat;
    invoke-static {}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->access$200()Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "dateString":Ljava/lang/String;
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    sget v7, Lcom/eventgenie/android/R$string;->youtube_duration_fmt:I

    invoke-virtual {v6, v7}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "duration":Ljava/lang/String;
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->val$meta:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mVideo:Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    invoke-static {v6}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->getThumbnailLarge()Ljava/lang/String;

    move-result-object v4

    .line 141
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 142
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v6, v4, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 145
    :cond_1
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mVideo:Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    invoke-static {v6}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->getDescription()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 146
    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->val$wv:Landroid/webkit/WebView;

    iget-object v8, p0, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->mVideo:Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;
    invoke-static {v8}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity;)Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    move-result-object v8

    invoke-virtual {v8}, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/eventgenie/android/ui/help/InfopageHelper;->loadHtmlIntoWebview(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 150
    :cond_2
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 99
    check-cast p1, Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/YouTubeDetailsActivity$1;->onPostExecute(Lcom/eventgenie/android/utils/social/youtube/YouTube$VideoEntry;)V

    return-void
.end method
