.class Lcom/urbanairship/push/iam/InAppMessageManager$4;
.super Ljava/lang/Object;
.source "InAppMessageManager.java"

# interfaces
.implements Lcom/urbanairship/push/iam/InAppMessageFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/iam/InAppMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/InAppMessageManager;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/InAppMessageManager;)V
    .locals 0

    .prologue
    .line 573
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/urbanairship/push/iam/InAppMessageFragment;)V
    .locals 5
    .param p1, "fragment"    # Lcom/urbanairship/push/iam/InAppMessageFragment;

    .prologue
    const/4 v4, 0x0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InAppMessageManager - InAppMessageFragment finished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    .line 619
    .local v0, "message":Lcom/urbanairship/push/iam/InAppMessage;
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$500(Lcom/urbanairship/push/iam/InAppMessageManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 620
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-virtual {v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->getPendingMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/urbanairship/push/iam/InAppMessageManager;->setPendingMessage(Lcom/urbanairship/push/iam/InAppMessage;)V

    .line 623
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$400(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 626
    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-static {v1, v4}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$402(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessage;)Lcom/urbanairship/push/iam/InAppMessage;

    .line 628
    :cond_1
    return-void

    .line 623
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPause(Lcom/urbanairship/push/iam/InAppMessageFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/urbanairship/push/iam/InAppMessageFragment;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - InAppMessageFragment paused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$300(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessageFragment;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$302(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessageFragment;

    .line 601
    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - InAppMessageFragment\'s activity is finishing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$002(Lcom/urbanairship/push/iam/InAppMessageManager;Z)Z

    goto :goto_0
.end method

.method public onResume(Lcom/urbanairship/push/iam/InAppMessageFragment;)V
    .locals 3
    .param p1, "fragment"    # Lcom/urbanairship/push/iam/InAppMessageFragment;

    .prologue
    const/4 v2, 0x0

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - InAppMessageFragment resumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->verbose(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$300(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessageFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$300(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessageFragment;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - Dismissing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because it is no longer the current fragment."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1, v2}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    .line 590
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$400(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$400(Lcom/urbanairship/push/iam/InAppMessageManager;)Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/urbanairship/push/iam/InAppMessageFragment;->getMessage()Lcom/urbanairship/push/iam/InAppMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 585
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InAppMessageManager - Dismissing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " because its message is no longer current."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/urbanairship/Logger;->debug(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p1, v2}, Lcom/urbanairship/push/iam/InAppMessageFragment;->dismiss(Z)V

    goto :goto_0

    .line 588
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$4;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-static {v0, p1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$302(Lcom/urbanairship/push/iam/InAppMessageManager;Lcom/urbanairship/push/iam/InAppMessageFragment;)Lcom/urbanairship/push/iam/InAppMessageFragment;

    goto :goto_0
.end method
