.class Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;
.super Landroid/os/AsyncTask;
.source "FeaturedArticlesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .locals 1
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    .line 337
    const-string v0, "Querying messages..."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->access$200(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/genie_connect/android/db/access/Udm;->messagesGetForDashboard()Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 334
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .locals 6
    .param p1, "result"    # Landroid/database/Cursor;

    .prologue
    .line 342
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 343
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mTvMsgSubject:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->access$300(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "subject"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const-string v2, "body"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "mBody":Ljava/lang/String;
    const-string v2, "bodyHtml"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "mBodyHtml":Ljava/lang/String;
    invoke-static {v1}, Lcom/genie_connect/android/utils/string/StringUtils;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 352
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mTvMsgBody:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->access$400(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 354
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mTvMsgBody:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->access$400(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, "<br>"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;

    invoke-direct {v5}, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mTvMsgBody:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->access$400(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    invoke-static {v3}, Lcom/eventgenie/android/utils/help/GCLinkMovementMethod;->getInstance(Landroid/content/Context;)Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 362
    :goto_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    const-string v3, "id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mLatestMessageId:J

    .line 364
    .end local v0    # "mBody":Ljava/lang/String;
    .end local v1    # "mBodyHtml":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    invoke-virtual {v2, p1}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->close(Landroid/database/Cursor;)V

    .line 365
    return-void

    .line 359
    .restart local v0    # "mBody":Ljava/lang/String;
    .restart local v1    # "mBodyHtml":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->mTvMsgBody:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;->access$400(Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 334
    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/FeaturedArticlesActivity$UpdateMessageTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
