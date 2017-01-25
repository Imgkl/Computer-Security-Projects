.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;
.super Ljava/lang/Object;
.source "GridJobProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/job/GridJobHoldListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobHoldListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    .locals 0

    .prologue
    .line 1636
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;

    .prologue
    .line 1636
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    return-void
.end method


# virtual methods
.method public onHold(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V
    .locals 3
    .param p1, "worker"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 1639
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$5100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1640
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$5200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received onHold() callback [worker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1642
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1643
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1645
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1646
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1648
    :cond_1
    return-void
.end method

.method public onUnhold(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V
    .locals 3
    .param p1, "worker"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 1652
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$5300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$5400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received onUnhold() callback [worker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", held="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1656
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobHoldListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1657
    return-void
.end method
