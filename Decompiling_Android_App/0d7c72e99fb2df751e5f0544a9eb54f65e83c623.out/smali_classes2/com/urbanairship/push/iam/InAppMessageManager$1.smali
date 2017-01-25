.class Lcom/urbanairship/push/iam/InAppMessageManager$1;
.super Ljava/lang/Object;
.source "InAppMessageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 121
    iput-object p1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-static {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$000(Lcom/urbanairship/push/iam/InAppMessageManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->isDisplayAsapEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/InAppMessageManager;->isAutoDisplayEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    iget-object v1, p0, Lcom/urbanairship/push/iam/InAppMessageManager$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    invoke-static {v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$100(Lcom/urbanairship/push/iam/InAppMessageManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->showPendingMessage(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/urbanairship/push/iam/InAppMessageManager$1;->this$0:Lcom/urbanairship/push/iam/InAppMessageManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/urbanairship/push/iam/InAppMessageManager;->access$002(Lcom/urbanairship/push/iam/InAppMessageManager;Z)Z

    goto :goto_0
.end method
