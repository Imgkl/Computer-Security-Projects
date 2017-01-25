.class Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;
.super Lcom/eventgenie/android/utils/help/MultiEventHelper$UpdateConfigTask;
.source "MultiEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->onPostExecute(Lcom/genie_connect/common/net/container/NetworkResultJsonContent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;

.field final synthetic val$versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 273
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;->this$1:Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;

    iput-object p2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;->val$versionName:Ljava/lang/String;

    iget-object v0, p1, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/eventgenie/android/utils/help/MultiEventHelper$UpdateConfigTask;-><init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;Lcom/eventgenie/android/utils/help/MultiEventHelper$1;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "^ UpdateConfigTask returns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/eventgenie/android/utils/Log;->info(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;->this$1:Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;

    iget-object v0, v0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$000(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/genie_connect/android/db/access/Udm;->clearLocalUserStore(Landroid/content/Context;)V

    .line 281
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;->this$1:Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;

    iget-object v0, v0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$000(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/genie_connect/android/services/ServiceManager;->doSyncLiveDataFull(Landroid/content/Context;Landroid/os/Handler;)V

    .line 282
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;->this$1:Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;

    iget-object v0, v0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static {v0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$100(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;->this$1:Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;

    iget-object v1, v1, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$000(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->getConfig(Landroid/content/Context;Z)Lcom/genie_connect/android/db/config/AppConfig;

    .line 283
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;->this$1:Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;

    iget-object v0, v0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;->val$versionName:Ljava/lang/String;

    # invokes: Lcom/eventgenie/android/utils/help/MultiEventHelper;->startAppInitService(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$500(Lcom/eventgenie/android/utils/help/MultiEventHelper;Ljava/lang/String;)V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;->this$1:Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;

    iget-object v0, v0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mDataStore:Lcom/genie_connect/android/db/datastore/Datastore;
    invoke-static {v0}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$100(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Lcom/genie_connect/android/db/datastore/Datastore;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;->this$1:Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;

    iget-object v1, v1, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    # getter for: Lcom/eventgenie/android/utils/help/MultiEventHelper;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$000(Lcom/eventgenie/android/utils/help/MultiEventHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/genie_connect/android/db/datastore/Datastore;->setActiveDataInstance(Landroid/content/Context;IZ)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 273
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/help/MultiEventHelper$ApplyEventTask$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
