.class Lcom/eventgenie/android/utils/help/emsp/EmspController$1;
.super Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;
.source "EmspController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/help/emsp/EmspController;->executeGetLocationTask(Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/help/emsp/EmspController;

.field final synthetic val$callback:Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/help/emsp/EmspController;Landroid/content/Context;Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;Ljava/lang/String;Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;
    .param p4, "x2"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController$1;->this$0:Lcom/eventgenie/android/utils/help/emsp/EmspController;

    iput-object p5, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController$1;->val$callback:Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

    invoke-direct {p0, p2, p3, p4}, Lcom/eventgenie/android/utils/help/emsp/EmspFetchLocationTask;-><init>(Landroid/content/Context;Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController$1;->val$callback:Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController$1;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    invoke-virtual {v3}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->getIndoorPositionCallbackPayload()Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;

    move-result-object v0

    .line 52
    .local v0, "payload":Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 53
    .local v1, "successful":Z
    :goto_0
    iget-object v3, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController$1;->val$callback:Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

    invoke-interface {v3, v1, v2, v0}, Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;->EmspLocationUpdate(ZZLcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V

    .line 55
    .end local v0    # "payload":Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;
    .end local v1    # "successful":Z
    :cond_0
    return-void

    .restart local v0    # "payload":Lcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;
    :cond_1
    move v1, v2

    .line 52
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/help/emsp/EmspController$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
