.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;
.super Ljava/lang/Object;
.source "GridJobProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/job/GridJobEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobEventListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final sesLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1533
    const-class v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    .locals 3

    .prologue
    .line 1533
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1535
    new-instance v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobSessionListener;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobSessionListener;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->sesLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;

    .prologue
    .line 1533
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    return-void
.end method


# virtual methods
.method public onBeforeJobResponseSent(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V
    .locals 3
    .param p1, "worker"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 1556
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$3700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1557
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$3800(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received onBeforeJobResponseSent() callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1559
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1561
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getSession()Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridJobSessionImpl;->isFullSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1563
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$3900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobTopic()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Ljava/lang/Object;)Z

    .line 1565
    :cond_2
    return-void
.end method

.method public onJobFinished(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V
    .locals 8
    .param p1, "worker"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 1569
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$4000(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1570
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$4100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received onJobFinished() callback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1572
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getSession()Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-result-object v2

    .line 1575
    .local v2, "ses":Lorg/apache/ignite/internal/GridJobSessionImpl;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridJobSessionImpl;->isFullSupport()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$4200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->session()Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridJobSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->removeSession(Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1576
    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridJobSessionImpl;->onClosed()V

    .line 1579
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$4300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->checkpoint()Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lorg/apache/ignite/internal/managers/checkpoint/GridCheckpointManager;->onSessionEnd(Lorg/apache/ignite/internal/GridTaskSessionInternal;Z)V

    .line 1583
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->endTime()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 1584
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$4400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 1586
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getDeployment()Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$4500(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    .line 1588
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentLinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 1590
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->isInternal()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1593
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$4600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/jsr166/LongAdder8;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jsr166/LongAdder8;->increment()V

    .line 1597
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getExecuteTime()J

    move-result-wide v0

    .line 1599
    .local v0, "execTime":J
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$4700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/jsr166/LongAdder8;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1601
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$4800(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridAtomicLong;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/apache/ignite/internal/util/GridAtomicLong;->setIfGreater(J)Z

    .line 1603
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1604
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 1605
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$3400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    .line 1625
    :cond_3
    :goto_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1626
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2100(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1628
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1630
    .end local v0    # "execTime":J
    :cond_5
    :goto_1
    return-void

    .line 1608
    .restart local v0    # "execTime":J
    :cond_6
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 1611
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1612
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$4900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1613
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$5000(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v3

    const-string v4, "Skipping collision handling on job finish (node is stopping)."

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1621
    :cond_7
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_1

    .line 1618
    :cond_8
    :try_start_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$3000(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1621
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v3
.end method

.method public onJobStarted(Lorg/apache/ignite/internal/processors/job/GridJobWorker;)V
    .locals 4
    .param p1, "worker"    # Lorg/apache/ignite/internal/processors/job/GridJobWorker;

    .prologue
    .line 1539
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$3200(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$3300(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received onJobStarted() callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1542
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 1543
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$3400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    .line 1546
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->endTime()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 1547
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$3500(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->timeout()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 1549
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getSession()Lorg/apache/ignite/internal/GridJobSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridJobSessionImpl;->isFullSupport()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1551
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$3600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/job/GridJobWorker;->getJobTopic()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$JobEventListener;->sesLsnr:Lorg/apache/ignite/internal/managers/communication/GridMessageListener;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 1552
    :cond_3
    return-void
.end method
