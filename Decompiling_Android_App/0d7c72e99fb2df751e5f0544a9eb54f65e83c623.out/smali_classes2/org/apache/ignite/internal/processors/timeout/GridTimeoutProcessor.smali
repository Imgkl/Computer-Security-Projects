.class public Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridTimeoutProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mux:Ljava/lang/Object;

.field private final timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet",
            "<",
            "Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;",
            ">;"
        }
    .end annotation
.end field

.field private final timeoutWorker:Lorg/apache/ignite/thread/IgniteThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 4
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 39
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    new-instance v1, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->mux:Ljava/lang/Object;

    .line 59
    new-instance v0, Lorg/apache/ignite/thread/IgniteThread;

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "grid-timeout-worker"

    new-instance v3, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$TimeoutWorker;-><init>(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)V

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/thread/IgniteThread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->timeoutWorker:Lorg/apache/ignite/thread/IgniteThread;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    .prologue
    .line 34
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->mux:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V
    .locals 6
    .param p1, "timeoutObj"    # Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    .prologue
    .line 85
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;->endTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;->endTime()J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 91
    .local v0, "added":Z
    sget-boolean v1, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate timeout object found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 93
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->firstx()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 94
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->mux:Ljava/lang/Object;

    monitor-enter v2

    .line 95
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->mux:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 96
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Timeout processor memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>   timeoutObjsSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V
    .locals 1
    .param p1, "timeoutObj"    # Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->timeoutObjs:Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/GridConcurrentSkipListSet;->remove(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->timeoutWorker:Lorg/apache/ignite/thread/IgniteThread;

    invoke-virtual {v0}, Lorg/apache/ignite/thread/IgniteThread;->start()V

    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Timeout processor started."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->timeoutWorker:Lorg/apache/ignite/thread/IgniteThread;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->timeoutWorker:Lorg/apache/ignite/thread/IgniteThread;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;)V

    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Timeout processor stopped."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method
