.class Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FeaturedArticlesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x0

    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "action":Ljava/lang/String;
    const-string v3, "com.eventgenie.android.LIVE_SYNC_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v4}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->requery(Landroid/database/Cursor;)V

    .line 100
    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mGrid1:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->access$100(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Landroid/widget/GridView;

    move-result-object v3

    new-instance v4, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;

    iget-object v5, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    iget-object v6, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v6}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v6

    iget-object v7, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    invoke-virtual {v7}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v8

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$FeaturedArticlesAdapter;-><init>(Landroid/app/Activity;Luk/co/alt236/easycursor/EasyCursor;J)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    invoke-virtual {v3, v10}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->showIndicator(Z)V

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    const-string v3, "LSS_BROADCAST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    const-string v3, "LSS_RESULT_KEY"

    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 107
    .local v2, "result":Z
    const-string v3, "LSS_ENTITY_KEY"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "entityName":Ljava/lang/String;
    const-string v3, "messages"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    new-instance v3, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    invoke-direct {v3, v4}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;-><init>(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)V

    invoke-static {v3}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 115
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    invoke-virtual {v3, v10}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->showIndicator(Z)V

    goto :goto_0

    .line 112
    :cond_3
    const-string v3, "articles"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    iget-object v4, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$1;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v4}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->requery(Landroid/database/Cursor;)V

    goto :goto_1
.end method
