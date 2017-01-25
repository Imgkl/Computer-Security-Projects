.class Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;
.super Landroid/os/AsyncTask;
.source "MessageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/networking/MessageListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetMessagesTask"
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
.field final synthetic this$0:Lcom/eventgenie/android/activities/networking/MessageListActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/networking/MessageListActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;->this$0:Lcom/eventgenie/android/activities/networking/MessageListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "arg0"    # [Ljava/lang/Boolean;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;->this$0:Lcom/eventgenie/android/activities/networking/MessageListActivity;

    # getter for: Lcom/eventgenie/android/activities/networking/MessageListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v1}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->access$000(Lcom/eventgenie/android/activities/networking/MessageListActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 181
    .local v5, "egdb":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 184
    :try_start_0
    new-instance v0, Lcom/genie_connect/android/net/providers/NetworkPersister;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;->this$0:Lcom/eventgenie/android/activities/networking/MessageListActivity;

    invoke-direct {v0, v1}, Lcom/genie_connect/android/net/providers/NetworkPersister;-><init>(Landroid/content/Context;)V

    .line 185
    .local v0, "net":Lcom/genie_connect/android/net/providers/NetworkPersister;
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iget-object v2, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;->this$0:Lcom/eventgenie/android/activities/networking/MessageListActivity;

    # getter for: Lcom/eventgenie/android/activities/networking/MessageListActivity;->mLatestMessageTime:Ljava/lang/String;
    invoke-static {v2}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->access$100(Lcom/eventgenie/android/activities/networking/MessageListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadLiveDeletes(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    .line 186
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MESSAGE:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;->this$0:Lcom/eventgenie/android/activities/networking/MessageListActivity;

    # getter for: Lcom/eventgenie/android/activities/networking/MessageListActivity;->mLatestMessageTime:Ljava/lang/String;
    invoke-static {v4}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->access$100(Lcom/eventgenie/android/activities/networking/MessageListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadEntities(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/common/net/container/NetworkResult;

    .line 188
    invoke-static {}, Lcom/genie_connect/android/security/VisitorLoginManager;->instance()Lcom/genie_connect/android/security/VisitorLoginManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/security/VisitorLoginManager;->isVisitorAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    sget-object v1, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->MEETING:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/genie_connect/android/net/providers/NetworkPersister;->downloadEntities(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lcom/genie_connect/common/net/container/NetworkResult;

    .line 194
    :cond_0
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    invoke-static {v5}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 198
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    .line 196
    .end local v0    # "net":Lcom/genie_connect/android/net/providers/NetworkPersister;
    :catchall_0
    move-exception v1

    invoke-static {v5}, Lcom/genie_connect/android/db/DbHelper;->endTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;->this$0:Lcom/eventgenie/android/activities/networking/MessageListActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->hideIndicator()V

    .line 204
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;->this$0:Lcom/eventgenie/android/activities/networking/MessageListActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;->this$0:Lcom/eventgenie/android/activities/networking/MessageListActivity;

    # getter for: Lcom/eventgenie/android/activities/networking/MessageListActivity;->mMessageCursor:Luk/co/alt236/easycursor/EasyCursor;
    invoke-static {v1}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->access$200(Lcom/eventgenie/android/activities/networking/MessageListActivity;)Luk/co/alt236/easycursor/EasyCursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->requery(Landroid/database/Cursor;)V

    .line 205
    iget-object v0, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;->this$0:Lcom/eventgenie/android/activities/networking/MessageListActivity;

    iget-object v1, p0, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;->this$0:Lcom/eventgenie/android/activities/networking/MessageListActivity;

    # getter for: Lcom/eventgenie/android/activities/networking/MessageListActivity;->mDb:Lcom/genie_connect/android/db/access/GenieConnectDatabase;
    invoke-static {v1}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->access$000(Lcom/eventgenie/android/activities/networking/MessageListActivity;)Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getUdm()Lcom/genie_connect/android/db/access/Udm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/Udm;->getMessageLastSyncedTimestamp()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/eventgenie/android/activities/networking/MessageListActivity;->mLatestMessageTime:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/networking/MessageListActivity;->access$102(Lcom/eventgenie/android/activities/networking/MessageListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 175
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/networking/MessageListActivity$GetMessagesTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
