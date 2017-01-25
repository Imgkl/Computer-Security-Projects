.class Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;
.super Landroid/os/AsyncTask;
.source "ArticleListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetArticlesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "arg0"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 175
    const-string v0, "starting GetArticlesTask..."

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mNetPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->access$100(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)Lcom/genie_connect/android/net/providers/NetworkPersister;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v3}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadLiveDeletes(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    .line 178
    iget-object v0, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mNetPersister:Lcom/genie_connect/android/net/providers/NetworkPersister;
    invoke-static {v0}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->access$100(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)Lcom/genie_connect/android/net/providers/NetworkPersister;

    move-result-object v0

    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->ARTICLE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mLatestArticleTime:Ljava/lang/String;
    invoke-static {v3}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->access$200(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v3}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->access$000(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadEntities(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/common/net/container/NetworkResult;

    .line 180
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 171
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;

    .line 186
    .local v0, "parentActivity":Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/newsandsocial/NewsBlogActivity;->showIndicator(Z)V

    .line 191
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->access$300(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->requery(Landroid/database/Cursor;)V

    .line 193
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v1}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->access$300(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v1}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->access$300(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    invoke-interface {v1}, Luk/co/alt236/easycursor/EasyCursor;->moveToFirst()Z

    .line 195
    iget-object v1, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->this$0:Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;

    # getter for: Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mArticleCursor:Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v2}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->access$300(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v2

    const-string v3, "modifiedDate"

    invoke-interface {v2, v3}, Luk/co/alt236/easycursor/EasyCursor;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/genie_connect/common/utils/date/TimeFormatter;->convertFromSqliteToJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->mLatestArticleTime:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;->access$202(Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 171
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/newsandsocial/ArticleListActivity$GetArticlesTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
