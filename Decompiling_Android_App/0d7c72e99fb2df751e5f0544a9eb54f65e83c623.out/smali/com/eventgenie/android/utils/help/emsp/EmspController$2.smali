.class Lcom/eventgenie/android/utils/help/emsp/EmspController$2;
.super Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;
.source "EmspController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/help/emsp/EmspController;->register(Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/help/emsp/EmspController;

.field final synthetic val$callback:Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/help/emsp/EmspController;Landroid/content/Context;Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;Ljava/lang/String;Ljava/lang/String;Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;
    .param p4, "x2"    # Ljava/lang/String;
    .param p5, "x3"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController$2;->this$0:Lcom/eventgenie/android/utils/help/emsp/EmspController;

    iput-object p6, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController$2;->val$callback:Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/eventgenie/android/utils/help/emsp/EmspRegistrationTask;-><init>(Landroid/content/Context;Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 127
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController$2;->this$0:Lcom/eventgenie/android/utils/help/emsp/EmspController;

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController$2;->val$callback:Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

    # invokes: Lcom/eventgenie/android/utils/help/emsp/EmspController;->executeGetLocationTask(Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/emsp/EmspController;->access$000(Lcom/eventgenie/android/utils/help/emsp/EmspController;Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;)V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController$2;->val$callback:Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/eventgenie/android/utils/help/emsp/EmspController$2;->this$0:Lcom/eventgenie/android/utils/help/emsp/EmspController;

    # getter for: Lcom/eventgenie/android/utils/help/emsp/EmspController;->mInfoStore:Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;
    invoke-static {v2}, Lcom/eventgenie/android/utils/help/emsp/EmspController;->access$100(Lcom/eventgenie/android/utils/help/emsp/EmspController;)Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/eventgenie/android/utils/help/emsp/EmspInfoStore;->isLocationMissing()Z

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/eventgenie/android/utils/help/emsp/EmspController$EmspLocationCallback;->EmspLocationUpdate(ZZLcom/eventgenie/android/utils/help/emsp/EmspLocationCallbackPayload;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 123
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/utils/help/emsp/EmspController$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
