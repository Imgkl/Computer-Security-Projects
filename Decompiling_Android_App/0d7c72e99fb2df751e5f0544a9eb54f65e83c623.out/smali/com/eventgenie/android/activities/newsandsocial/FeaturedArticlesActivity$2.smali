.class Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$2;
.super Landroid/os/Handler;
.source "FeaturedArticlesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->onResume()V
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
    .line 180
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$2;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 183
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 192
    :goto_0
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$2;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->showIndicator(Z)V

    .line 193
    return-void

    .line 185
    :pswitch_0
    new-instance v0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$2;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    invoke-direct {v0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;-><init>(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)V

    invoke-static {v0}, Lcom/eventgenie/android/utils/help/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$2;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$2;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v1}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->requery(Landroid/database/Cursor;)V

    goto :goto_0

    .line 183
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
