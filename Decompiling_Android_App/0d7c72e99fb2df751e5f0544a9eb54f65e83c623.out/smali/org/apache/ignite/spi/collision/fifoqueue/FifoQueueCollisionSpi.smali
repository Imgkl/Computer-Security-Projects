.class public Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "FifoQueueCollisionSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/collision/CollisionSpi;
.implements Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpiMBean;


# annotations
.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_PARALLEL_JOBS_NUM:I

.field public static final DFLT_WAIT_JOBS_NUM:I = 0x7fffffff


# instance fields
.field private volatile heldCnt:I

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private volatile parallelJobsNum:I

.field private volatile runningCnt:I

.field private volatile waitJobsNum:I

.field private volatile waitingCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->$assertionsDisabled:Z

    .line 79
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->DFLT_PARALLEL_JOBS_NUM:I

    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 88
    sget v0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->DFLT_PARALLEL_JOBS_NUM:I

    iput v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->parallelJobsNum:I

    .line 91
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->waitJobsNum:I

    return-void
.end method


# virtual methods
.method public getCurrentActiveJobsNumber()I
    .locals 2

    .prologue
    .line 139
    iget v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->runningCnt:I

    iget v1, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->heldCnt:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentHeldJobsNumber()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->heldCnt:I

    return v0
.end method

.method public getCurrentRunningJobsNumber()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->runningCnt:I

    return v0
.end method

.method public getCurrentWaitJobsNumber()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->waitingCnt:I

    return v0
.end method

.method public getParallelJobsNumber()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->parallelJobsNum:I

    return v0
.end method

.method public getWaitingJobsNumber()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->waitJobsNum:I

    return v0
.end method

.method public onCollision(Lorg/apache/ignite/spi/collision/CollisionContext;)V
    .locals 9
    .param p1, "ctx"    # Lorg/apache/ignite/spi/collision/CollisionContext;

    .prologue
    .line 187
    sget-boolean v8, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 189
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/spi/collision/CollisionContext;->activeJobs()Ljava/util/Collection;

    move-result-object v0

    .line 190
    .local v0, "activeJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    invoke-interface {p1}, Lorg/apache/ignite/spi/collision/CollisionContext;->waitingJobs()Ljava/util/Collection;

    move-result-object v5

    .line 193
    .local v5, "waitJobs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 194
    .local v1, "activeSize":I
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    .line 196
    .local v7, "waitSize":I
    iput v7, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->waitingCnt:I

    .line 197
    iput v1, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->runningCnt:I

    .line 198
    invoke-interface {p1}, Lorg/apache/ignite/spi/collision/CollisionContext;->heldJobs()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    iput v8, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->heldCnt:I

    .line 200
    iget v3, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->parallelJobsNum:I

    .line 202
    .local v3, "parallelJobsNum0":I
    const/4 v2, 0x0

    .line 204
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/spi/collision/CollisionJobContext;>;"
    if-ge v1, v3, :cond_4

    .line 205
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 207
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 208
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/collision/CollisionJobContext;

    .line 210
    .local v4, "waitCtx":Lorg/apache/ignite/spi/collision/CollisionJobContext;
    invoke-interface {v4}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->activate()Z

    .line 212
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_3

    .line 245
    .end local v4    # "waitCtx":Lorg/apache/ignite/spi/collision/CollisionJobContext;
    :cond_2
    :goto_0
    return-void

    .line 217
    .restart local v4    # "waitCtx":Lorg/apache/ignite/spi/collision/CollisionJobContext;
    :cond_3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v8

    if-lt v8, v3, :cond_1

    .line 223
    .end local v4    # "waitCtx":Lorg/apache/ignite/spi/collision/CollisionJobContext;
    :cond_4
    iget v6, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->waitJobsNum:I

    .line 226
    .local v6, "waitJobsNum0":I
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v8

    if-le v8, v6, :cond_2

    .line 227
    if-nez v2, :cond_5

    .line 228
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 230
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 231
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/spi/collision/CollisionJobContext;

    .line 233
    .restart local v4    # "waitCtx":Lorg/apache/ignite/spi/collision/CollisionJobContext;
    invoke-interface {v4}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->cancel()Z

    .line 235
    add-int/lit8 v7, v7, -0x1

    if-eqz v7, :cond_2

    .line 240
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v8

    if-gt v8, v6, :cond_5

    goto :goto_0
.end method

.method public setExternalCollisionListener(Lorg/apache/ignite/spi/collision/CollisionExternalListener;)V
    .locals 0
    .param p1, "lsnr"    # Lorg/apache/ignite/spi/collision/CollisionExternalListener;

    .prologue
    .line 183
    return-void
.end method

.method public setParallelJobsNumber(I)V
    .locals 2
    .param p1, "parallelJobsNum"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 114
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "parallelJobsNum > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 116
    iput p1, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->parallelJobsNum:I

    .line 117
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWaitingJobsNumber(I)V
    .locals 2
    .param p1, "waitJobsNum"    # I
    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 127
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "waitingJobsNum >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 129
    iput p1, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->waitJobsNum:I

    .line 130
    return-void

    .line 127
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 4
    .param p1, "gridName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    iget v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->parallelJobsNum:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "parallelJobsNum > 0"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->assertParameter(ZLjava/lang/String;)V

    .line 155
    iget v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->waitJobsNum:I

    if-ltz v0, :cond_3

    :goto_1
    const-string/jumbo v0, "waitingJobsNum >= 0"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->assertParameter(ZLjava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->startStopwatch()V

    .line 161
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "parallelJobsNum"

    iget v2, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->parallelJobsNum:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 164
    :cond_0
    const-class v0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpiMBean;

    invoke-virtual {p0, p1, p0, v0}, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 167
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 169
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 154
    goto :goto_0

    :cond_3
    move v1, v2

    .line 155
    goto :goto_1
.end method

.method public spiStop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->unregisterMBean()V

    .line 176
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    const-class v0, Lorg/apache/ignite/spi/collision/fifoqueue/FifoQueueCollisionSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
