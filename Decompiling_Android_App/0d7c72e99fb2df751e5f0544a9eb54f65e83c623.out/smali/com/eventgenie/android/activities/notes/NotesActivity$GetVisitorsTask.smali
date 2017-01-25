.class Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;
.super Landroid/os/AsyncTask;
.source "NotesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/notes/NotesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetVisitorsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/notes/NotesActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/notes/NotesActivity;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;->this$0:Lcom/eventgenie/android/activities/notes/NotesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private persistVisitor(Ljava/lang/Long;Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "visitorId"    # Ljava/lang/Long;
    .param p2, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 256
    new-instance v1, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;

    invoke-direct {v1}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;-><init>()V

    sget-object v2, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-static {p2}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->fromRaw(Lorg/json/JSONObject;)Lcom/genie_connect/android/platform/json/GenieJsonObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/genie_connect/common/db/entityfactory/EGEntityFactory;->createSyncableInstance(Lcom/genie_connect/common/db/entityfactory/GenieEntity;Lcom/genie_connect/common/platform/json/IJsonObject;)Lcom/genie_connect/common/db/entityfactory/EGEntity;

    move-result-object v0

    .line 260
    .local v0, "entity":Lcom/genie_connect/common/db/entityfactory/EGEntity;
    iget-object v1, p0, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;->this$0:Lcom/eventgenie/android/activities/notes/NotesActivity;

    invoke-virtual {v1}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getDatabase()Lcom/genie_connect/android/db/access/GenieConnectDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/genie_connect/android/db/access/GenieConnectDatabase;->getDatabaseWrapper()Lcom/genie_connect/android/platform/DatabaseWrapper;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;->this$0:Lcom/eventgenie/android/activities/notes/NotesActivity;

    invoke-virtual {v3}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/genie_connect/common/db/entityfactory/EGEntity;->doSQLiteUpdates(Lcom/genie_connect/common/platform/db/IDatabase;Ljava/lang/String;J)V

    .line 262
    iget-object v1, p0, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;->this$0:Lcom/eventgenie/android/activities/notes/NotesActivity;

    invoke-static {v1}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->getInstance(Landroid/content/Context;)Lcom/genie_connect/android/db/caching/PersistentStringCache;

    move-result-object v1

    iget-object v2, p0, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;->this$0:Lcom/eventgenie/android/activities/notes/NotesActivity;

    invoke-virtual {v2}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getConfig()Lcom/genie_connect/android/db/config/AppConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/genie_connect/android/db/config/AppConfig;->getNamespace()J

    move-result-wide v2

    const-string/jumbo v4, "visitors"

    invoke-static {v2, v3, v4}, Lcom/genie_connect/android/db/caching/PSCGroups;->getGroupForEntity(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/genie_connect/android/db/caching/PersistentStringCache;->put(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 265
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 11
    .param p1, "visitorIds"    # [Ljava/lang/Long;

    .prologue
    const/4 v10, 0x1

    .line 225
    new-instance v4, Lcom/genie_connect/android/net/providers/NetworkDownloader;

    iget-object v7, p0, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;->this$0:Lcom/eventgenie/android/activities/notes/NotesActivity;

    invoke-direct {v4, v7}, Lcom/genie_connect/android/net/providers/NetworkDownloader;-><init>(Landroid/content/Context;)V

    .line 227
    .local v4, "net":Lcom/genie_connect/android/net/providers/NetworkDownloader;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Long;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v5, v0, v1

    .line 228
    .local v5, "visitorId":Ljava/lang/Long;
    sget-object v7, Lcom/genie_connect/common/db/entityfactory/GenieEntity;->VISITOR:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Lcom/genie_connect/android/net/providers/NetworkDownloader;->getEntity(Lcom/genie_connect/common/db/entityfactory/GenieEntity;J)Lcom/genie_connect/common/net/container/NetworkResultJsonContent;

    move-result-object v6

    .line 231
    .local v6, "visitorResult":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    invoke-virtual {v6}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->isSuccesful()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 233
    invoke-virtual {v6}, Lcom/genie_connect/common/net/container/NetworkResultJsonContent;->getJsonObject()Lcom/genie_connect/common/platform/json/IJsonObject;

    move-result-object v7

    check-cast v7, Lcom/genie_connect/android/platform/json/GenieJsonObject;

    invoke-virtual {v7}, Lcom/genie_connect/android/platform/json/GenieJsonObject;->getRawObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 234
    .local v2, "jsonObj":Lorg/json/JSONObject;
    invoke-direct {p0, v5, v2}, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;->persistVisitor(Ljava/lang/Long;Lorg/json/JSONObject;)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    :cond_0
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    .line 242
    .end local v5    # "visitorId":Ljava/lang/Long;
    .end local v6    # "visitorResult":Lcom/genie_connect/common/net/container/NetworkResultJsonContent;
    :goto_1
    return-object v7

    .line 240
    :cond_1
    iget-object v7, p0, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;->this$0:Lcom/eventgenie/android/activities/notes/NotesActivity;

    # setter for: Lcom/eventgenie/android/activities/notes/NotesActivity;->mVisitorsDownloaded:Z
    invoke-static {v7, v10}, Lcom/eventgenie/android/activities/notes/NotesActivity;->access$002(Lcom/eventgenie/android/activities/notes/NotesActivity;Z)Z

    .line 242
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 220
    check-cast p1, [Ljava/lang/Long;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;->doInBackground([Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 249
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;->this$0:Lcom/eventgenie/android/activities/notes/NotesActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/notes/NotesActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;->this$0:Lcom/eventgenie/android/activities/notes/NotesActivity;

    # invokes: Lcom/eventgenie/android/activities/notes/NotesActivity;->getLoaderId()I
    invoke-static {v1}, Lcom/eventgenie/android/activities/notes/NotesActivity;->access$100(Lcom/eventgenie/android/activities/notes/NotesActivity;)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;->this$0:Lcom/eventgenie/android/activities/notes/NotesActivity;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 253
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 220
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/activities/notes/NotesActivity$GetVisitorsTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
