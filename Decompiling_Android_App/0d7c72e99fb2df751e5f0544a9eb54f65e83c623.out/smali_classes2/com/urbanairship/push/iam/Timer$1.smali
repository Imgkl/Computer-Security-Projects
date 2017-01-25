.class Lcom/urbanairship/push/iam/Timer$1;
.super Ljava/lang/Object;
.source "Timer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/iam/Timer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/urbanairship/push/iam/Timer;


# direct methods
.method constructor <init>(Lcom/urbanairship/push/iam/Timer;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/urbanairship/push/iam/Timer$1;->this$0:Lcom/urbanairship/push/iam/Timer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/urbanairship/push/iam/Timer$1;->this$0:Lcom/urbanairship/push/iam/Timer;

    # getter for: Lcom/urbanairship/push/iam/Timer;->isStarted:Z
    invoke-static {v0}, Lcom/urbanairship/push/iam/Timer;->access$000(Lcom/urbanairship/push/iam/Timer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/urbanairship/push/iam/Timer$1;->this$0:Lcom/urbanairship/push/iam/Timer;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/Timer;->stop()V

    .line 47
    iget-object v0, p0, Lcom/urbanairship/push/iam/Timer$1;->this$0:Lcom/urbanairship/push/iam/Timer;

    invoke-virtual {v0}, Lcom/urbanairship/push/iam/Timer;->onFinish()V

    .line 49
    :cond_0
    return-void
.end method
