.class Lcom/urbanairship/push/iam/InAppMessageManager$3;
.super Ljava/lang/Object;
.source "InAppMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

.field final synthetic val$message:Lcom/urbanairship/push/iam/InAppMessage;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessage;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$3;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    iput-object p2, p0, Lcom/urbanairship/push/iam/InAppMessageManager$3;->val$message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 250
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager$3;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-static {v2}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$200(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/util/List;

    move-result-object v3

    monitor-enter v3

    .line 251
    :try_start_0
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager$3;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-static {v2}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$200(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/urbanairship/push/iam/InAppMessageManager$Listener;

    .line 252
    .local v1, "listener":Lcom/urbanairship/push/iam/InAppMessageManager$Listener;
    iget-object v2, p0, Lcom/urbanairship/push/iam/InAppMessageManager$3;->val$message:Lcom/urbanairship/push/iam/InAppMessage;

    invoke-interface {v1, v2}, Lcom/urbanairship/push/iam/InAppMessageManager$Listener;->onPendingMessageAvailable(Lcom/urbanairship/push/iam/InAppMessage;)V

    goto :goto_0

    .line 254
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/urbanairship/push/iam/InAppMessageManager$Listener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    return-void
.end method
