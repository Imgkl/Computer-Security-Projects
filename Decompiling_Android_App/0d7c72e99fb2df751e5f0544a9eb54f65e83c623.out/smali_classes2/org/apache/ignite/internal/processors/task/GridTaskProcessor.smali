.class public Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
.super Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.source "GridTaskProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;,
        Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;,
        Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskDiscoveryListener;,
        Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;,
        Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DISCO_TIMEOUT:J = 0x1388L

.field private static final EMPTY_ENUM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

.field private final execTasks:Lorg/jsr166/LongAdder8;

.field private final lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

.field private final marsh:Lorg/apache/ignite/marshaller/Marshaller;

.field private stopping:Z

.field private final tasks:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/task/GridTaskWorker",
            "<**>;>;"
        }
    .end annotation
.end field

.field private tasksMetaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<",
            "Lorg/apache/ignite/internal/GridTaskNameHashKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final thCtx:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private waiting:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-class v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    .line 57
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->EMPTY_ENUM_MAP:Ljava/util/Map;

    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 64
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    .line 76
    new-instance v0, Lorg/jsr166/LongAdder8;

    invoke-direct {v0}, Lorg/jsr166/LongAdder8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execTasks:Lorg/jsr166/LongAdder8;

    .line 79
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->thCtx:Ljava/lang/ThreadLocal;

    .line 83
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    .line 94
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    .line 96
    new-instance v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskDiscoveryListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskDiscoveryListener;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    .line 97
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
    .param p1, "x1"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->release(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/jsr166/LongAdder8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execTasks:Lorg/jsr166/LongAdder8;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Ljava/util/UUID;Lorg/apache/ignite/internal/GridTaskSessionRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/GridTaskSessionRequest;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->processTaskSessionRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/GridTaskSessionRequest;)V

    return-void
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->stopping:Z

    return v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->waiting:Z

    return v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/marshaller/Marshaller;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)Lorg/apache/ignite/internal/GridKernalContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    return-object v0
.end method

.method private handleException(Ljava/lang/Throwable;Lorg/apache/ignite/internal/ComputeTaskInternalFuture;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p2, "fut":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 717
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 719
    :cond_1
    invoke-virtual {p2, p1}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->onDone(Ljava/lang/Throwable;)Z

    .line 720
    return-void
.end method

.method private processTaskSessionRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/GridTaskSessionRequest;)V
    .locals 8
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/GridTaskSessionRequest;

    .prologue
    .line 919
    sget-boolean v5, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 920
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 922
    :cond_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 925
    :try_start_0
    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->stopping:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->waiting:Z

    if-nez v5, :cond_2

    .line 926
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received task session request while stopping grid (will ignore): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 955
    :goto_0
    return-void

    .line 931
    :cond_2
    :try_start_1
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridTaskSessionRequest;->getSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .line 933
    .local v4, "task":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    if-nez v4, :cond_4

    .line 934
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 935
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Received task session request for unknown task (was task already reduced?): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 953
    :cond_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 940
    :cond_4
    :try_start_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isMarshalLocalJobs()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v2, 0x1

    .line 942
    .local v2, "loc":Z
    :goto_1
    if-eqz v2, :cond_6

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridTaskSessionRequest;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 945
    .local v0, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :goto_2
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v3

    .line 947
    .local v3, "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    invoke-direct {p0, v0, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->sendSessionAttributes(Ljava/util/Map;Lorg/apache/ignite/internal/GridTaskSessionImpl;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 953
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 940
    .end local v0    # "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v2    # "loc":Z
    .end local v3    # "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 942
    .restart local v2    # "loc":Z
    :cond_6
    :try_start_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridTaskSessionRequest;->getAttributesBytes()[B

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getTask()Lorg/apache/ignite/compute/ComputeTask;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v5

    goto :goto_2

    .line 949
    .end local v2    # "loc":Z
    .end local v4    # "task":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    :catch_0
    move-exception v1

    .line 950
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_4
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to deserialize session request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 953
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto/16 :goto_0

    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v5
.end method

.method private release(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 1
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .prologue
    .line 702
    sget-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 704
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->release()V

    .line 706
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->obsolete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->onUndeployed(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    .line 708
    :cond_1
    return-void
.end method

.method private saveTaskMetadata(Ljava/lang/String;)V
    .locals 6
    .param p1, "taskName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 674
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->isDaemon()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 696
    :cond_0
    return-void

    .line 677
    :cond_1
    sget-boolean v3, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->enabled()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 679
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 682
    .local v2, "nameHash":I
    if-nez v2, :cond_3

    .line 683
    const/4 v2, 0x1

    .line 685
    :cond_3
    new-instance v1, Lorg/apache/ignite/internal/GridTaskNameHashKey;

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/GridTaskNameHashKey;-><init>(I)V

    .line 687
    .local v1, "key":Lorg/apache/ignite/internal/GridTaskNameHashKey;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasksMetaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 689
    .local v0, "existingName":Ljava/lang/String;
    if-nez v0, :cond_4

    .line 690
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasksMetaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v3, v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "existingName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 692
    .restart local v0    # "existingName":Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 693
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Task name hash collision for security-enabled node [taskName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", existing taskName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private sendSessionAttributes(Ljava/util/Map;Lorg/apache/ignite/internal/GridTaskSessionImpl;)V
    .locals 28
    .param p2, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Lorg/apache/ignite/internal/GridTaskSessionImpl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 753
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 754
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 756
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getJobSiblings()Ljava/util/Collection;

    move-result-object v23

    .line 758
    .local v23, "siblings":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/compute/ComputeJobSibling;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v11

    .line 760
    .local v11, "commMgr":Lorg/apache/ignite/internal/managers/communication/GridIoManager;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getEndTime()J

    move-result-wide v8

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v26

    sub-long v24, v8, v26

    .line 762
    .local v24, "timeout":J
    const-wide/16 v8, 0x0

    cmp-long v3, v24, v8

    if-gtz v3, :cond_3

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Session attributes won\'t be set due to task timeout: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 875
    :cond_2
    :goto_0
    return-void

    .line 768
    :cond_3
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 770
    .local v20, "rcvrs":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/UUID;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v18

    .line 772
    .local v18, "locNodeId":Ljava/util/UUID;
    monitor-enter p2

    .line 773
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 774
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting session attributes on closed session (will ignore): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 777
    :cond_4
    monitor-exit p2

    goto :goto_0

    .line 792
    :catchall_0
    move-exception v3

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 780
    :cond_5
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->setInternal(Ljava/util/Map;)V

    .line 784
    invoke-interface/range {v23 .. v23}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/compute/ComputeJobSibling;

    .line 785
    .local v21, "s":Lorg/apache/ignite/compute/ComputeJobSibling;
    move-object/from16 v0, v21

    check-cast v0, Lorg/apache/ignite/internal/GridJobSiblingImpl;

    move-object/from16 v22, v0

    .line 787
    .local v22, "sib":Lorg/apache/ignite/internal/GridJobSiblingImpl;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/GridJobSiblingImpl;->nodeId()Ljava/util/UUID;

    move-result-object v19

    .line 789
    .local v19, "nodeId":Ljava/util/UUID;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/GridJobSiblingImpl;->isJobDone()Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 790
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 792
    .end local v19    # "nodeId":Ljava/util/UUID;
    .end local v21    # "s":Lorg/apache/ignite/compute/ComputeJobSibling;
    .end local v22    # "sib":Lorg/apache/ignite/internal/GridJobSiblingImpl;
    :cond_7
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 794
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    const/16 v5, 0x18

    invoke-virtual {v3, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 795
    new-instance v2, Lorg/apache/ignite/events/TaskEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Changed attributes: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x18

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskClassName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lorg/apache/ignite/events/TaskEvent;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;ILorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;ZLjava/util/UUID;)V

    .line 805
    .local v2, "evt":Lorg/apache/ignite/events/Event;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->record(Lorg/apache/ignite/events/Event;)V

    .line 808
    .end local v2    # "evt":Lorg/apache/ignite/events/Event;
    :cond_8
    const/4 v14, 0x0

    .line 811
    .local v14, "ex":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getJobSiblings()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_9
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/compute/ComputeJobSibling;

    .restart local v21    # "s":Lorg/apache/ignite/compute/ComputeJobSibling;
    move-object/from16 v22, v21

    .line 812
    check-cast v22, Lorg/apache/ignite/internal/GridJobSiblingImpl;

    .line 814
    .restart local v22    # "sib":Lorg/apache/ignite/internal/GridJobSiblingImpl;
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/GridJobSiblingImpl;->nodeId()Ljava/util/UUID;

    move-result-object v19

    .line 817
    .restart local v19    # "nodeId":Ljava/util/UUID;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 818
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    .line 821
    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v4, :cond_9

    .line 822
    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isMarshalLocalJobs()Z

    move-result v3

    if-nez v3, :cond_c

    const/16 v17, 0x1

    .line 824
    .local v17, "loc":Z
    :goto_3
    new-instance v6, Lorg/apache/ignite/internal/GridTaskSessionRequest;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    const/4 v7, 0x0

    if-eqz v17, :cond_d

    const/4 v3, 0x0

    :goto_4
    move-object/from16 v0, p1

    invoke-direct {v6, v5, v7, v3, v0}, Lorg/apache/ignite/internal/GridTaskSessionRequest;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;[BLjava/util/Map;)V

    .line 833
    .local v6, "req":Lorg/apache/ignite/internal/GridTaskSessionRequest;
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Lorg/apache/ignite/internal/GridJobSiblingImpl;->jobTopic()Ljava/lang/Object;

    move-result-object v5

    sget-object v7, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    const/4 v10, 0x0

    move-object v3, v11

    move-wide/from16 v8, v24

    invoke-virtual/range {v3 .. v10}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->sendOrderedMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/plugin/extensions/communication/Message;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;JZ)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 841
    :catch_0
    move-exception v12

    .line 842
    .local v12, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    .line 844
    if-eqz v4, :cond_a

    .line 849
    const-wide/16 v8, 0x1388

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 855
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v4

    .line 858
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send session attribute request message to node (normal case if node left grid) [node="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", req="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x5d

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 861
    .local v13, "err":Ljava/lang/String;
    if-eqz v4, :cond_e

    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v3, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 866
    :cond_b
    :goto_6
    if-nez v14, :cond_9

    .line 867
    move-object v14, v12

    goto/16 :goto_2

    .line 822
    .end local v6    # "req":Lorg/apache/ignite/internal/GridTaskSessionRequest;
    .end local v12    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v13    # "err":Ljava/lang/String;
    .end local v17    # "loc":Z
    :cond_c
    const/16 v17, 0x0

    goto :goto_3

    .line 824
    .restart local v17    # "loc":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->marsh:Lorg/apache/ignite/marshaller/Marshaller;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v3

    goto :goto_4

    .line 851
    .restart local v6    # "req":Lorg/apache/ignite/internal/GridTaskSessionRequest;
    .restart local v12    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v16

    .line 852
    .local v16, "ignore":Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Got interrupted while sending session attributes."

    invoke-static {v3, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_5

    .line 863
    .end local v16    # "ignore":Ljava/lang/InterruptedException;
    .restart local v13    # "err":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 864
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3, v13}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 873
    .end local v4    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v6    # "req":Lorg/apache/ignite/internal/GridTaskSessionRequest;
    .end local v12    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v13    # "err":Ljava/lang/String;
    .end local v17    # "loc":Z
    .end local v19    # "nodeId":Ljava/util/UUID;
    .end local v21    # "s":Lorg/apache/ignite/compute/ComputeJobSibling;
    .end local v22    # "sib":Lorg/apache/ignite/internal/GridJobSiblingImpl;
    :cond_f
    if-eqz v14, :cond_2

    .line 874
    throw v14
.end method

.method private startTask(Ljava/lang/String;Ljava/lang/Class;Lorg/apache/ignite/compute/ComputeTask;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 42
    .param p1, "taskName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/apache/ignite/compute/ComputeTask;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p5    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "sys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "TT;Z)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 389
    .local p2, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "task":Lorg/apache/ignite/compute/ComputeTask;, "Lorg/apache/ignite/compute/ComputeTask<TT;TR;>;"
    .local p5, "arg":Ljava/lang/Object;, "TT;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p4, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 393
    :cond_0
    if-eqz p3, :cond_3

    .line 394
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v37

    .line 398
    .local v37, "taskClsName":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->TASK_EXECUTE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    const/4 v7, 0x0

    move-object/from16 v0, v37

    invoke-interface {v5, v0, v6, v7}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->authorize(Ljava/lang/String;Lorg/apache/ignite/plugin/security/GridSecurityPermission;Lorg/apache/ignite/internal/processors/security/SecurityContext;)V

    .line 401
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->thCtx:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Map;

    .line 403
    .local v29, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;>;"
    if-nez v29, :cond_5

    .line 404
    sget-object v29, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->EMPTY_ENUM_MAP:Ljava/util/Map;

    .line 409
    :goto_1
    sget-object v5, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_TIMEOUT:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Long;

    .line 411
    .local v39, "timeout":Ljava/lang/Long;
    if-eqz v39, :cond_1

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v16, 0x0

    cmp-long v5, v6, v16

    if-nez v5, :cond_6

    :cond_1
    const-wide v40, 0x7fffffffffffffffL

    .line 413
    .local v40, "timeout0":J
    :goto_2
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v12

    .line 415
    .local v12, "startTime":J
    add-long v14, v40, v12

    .line 418
    .local v14, "endTime":J
    const-wide/16 v6, 0x0

    cmp-long v5, v14, v6

    if-gez v5, :cond_2

    .line 419
    const-wide v14, 0x7fffffffffffffffL

    .line 421
    :cond_2
    const/16 v32, 0x0

    .line 422
    .local v32, "deployEx":Lorg/apache/ignite/IgniteCheckedException;
    const/4 v9, 0x0

    .line 425
    .local v9, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-eqz p1, :cond_c

    .line 426
    sget-boolean v5, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_7

    if-eqz p2, :cond_7

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 396
    .end local v9    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v12    # "startTime":J
    .end local v14    # "endTime":J
    .end local v29    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;>;"
    .end local v32    # "deployEx":Lorg/apache/ignite/IgniteCheckedException;
    .end local v37    # "taskClsName":Ljava/lang/String;
    .end local v39    # "timeout":Ljava/lang/Long;
    .end local v40    # "timeout0":J
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v37

    .restart local v37    # "taskClsName":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .end local v37    # "taskClsName":Ljava/lang/String;
    :cond_4
    move-object/from16 v37, p1

    goto :goto_3

    .line 407
    .restart local v29    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;>;"
    .restart local v37    # "taskClsName":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->thCtx:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    .line 411
    .restart local v39    # "timeout":Ljava/lang/Long;
    :cond_6
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    goto :goto_2

    .line 427
    .restart local v9    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v12    # "startTime":J
    .restart local v14    # "endTime":J
    .restart local v32    # "deployEx":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v40    # "timeout0":J
    :cond_7
    sget-boolean v5, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_8

    if-eqz p3, :cond_8

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 430
    :cond_8
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getDeployment(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v9

    .line 432
    if-nez v9, :cond_a

    .line 433
    new-instance v5, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown task name or failed to auto-deploy task (was task (re|un)deployed?): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :catch_0
    move-exception v33

    .line 448
    .local v33, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v32, v33

    .line 512
    .end local v33    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_9
    :goto_4
    sget-boolean v5, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_13

    if-nez p1, :cond_13

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 436
    :cond_a
    const/4 v5, 0x0

    :try_start_1
    new-array v5, v5, [Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    .line 438
    if-nez p2, :cond_b

    .line 439
    new-instance v5, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown task name or failed to auto-deploy task (was task (re|un)deployed?) [taskName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dep="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 442
    :cond_b
    const-class v5, Lorg/apache/ignite/compute/ComputeTask;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 443
    new-instance v5, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to auto-deploy task (deployed class is not a task) [taskName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", depCls="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    :cond_c
    if-eqz p2, :cond_f

    .line 453
    sget-boolean v5, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_d

    if-eqz p3, :cond_d

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 457
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v9

    .line 459
    if-nez v9, :cond_e

    .line 460
    new-instance v5, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to auto-deploy task (was task (re|un)deployed?): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 465
    :catch_1
    move-exception v33

    .line 466
    .restart local v33    # "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 468
    move-object/from16 v32, v33

    .line 469
    goto/16 :goto_4

    .line 463
    .end local v33    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_e
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-direct {v0, v9, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->taskName(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object p1

    goto/16 :goto_4

    .line 472
    :cond_f
    if-eqz p3, :cond_9

    .line 478
    :try_start_4
    move-object/from16 v0, p3

    instance-of v5, v0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    if-eqz v5, :cond_10

    .line 479
    move-object/from16 v0, p3

    check-cast v0, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;

    move-object/from16 v31, v0

    .line 481
    .local v31, "depAware":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    invoke-interface/range {v31 .. v31}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->deployClass()Ljava/lang/Class;

    move-result-object v4

    .line 482
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface/range {v31 .. v31}, Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v34

    .line 485
    .local v34, "ldr":Ljava/lang/ClassLoader;
    move-object/from16 p2, v4

    .line 497
    .end local v31    # "depAware":Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v4, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v9

    .line 499
    if-nez v9, :cond_12

    .line 500
    new-instance v5, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to auto-deploy task (was task (re|un)deployed?): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 505
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "ldr":Ljava/lang/ClassLoader;
    :catch_2
    move-exception v33

    .line 506
    .restart local v33    # "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 508
    move-object/from16 v32, v33

    goto/16 :goto_4

    .line 488
    .end local v33    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_10
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 490
    sget-boolean v5, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_11

    const-class v5, Lorg/apache/ignite/compute/ComputeTask;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_11

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 492
    :cond_11
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 493
    .restart local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v34

    .restart local v34    # "ldr":Ljava/lang/ClassLoader;
    goto :goto_5

    .line 503
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v29

    invoke-direct {v0, v9, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->taskName(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object p1

    goto/16 :goto_4

    .line 514
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v34    # "ldr":Ljava/lang/ClassLoader;
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 515
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task deployment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 517
    :cond_14
    if-eqz v9, :cond_18

    if-eqz p2, :cond_18

    const-class v5, Lorg/apache/ignite/compute/ComputeTaskSessionFullSupport;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->annotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_18

    const/16 v18, 0x1

    .line 520
    .local v18, "fullSup":Z
    :goto_6
    sget-object v5, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    move-object/from16 v0, v29

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/Collection;

    .line 522
    .local v35, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    if-eqz v35, :cond_19

    invoke-static/range {v35 .. v35}, Lorg/apache/ignite/internal/util/typedef/F;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v11

    .line 524
    .local v11, "top":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :goto_7
    sget-object v5, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBJ_ID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->getThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/UUID;

    .line 526
    .local v19, "subjId":Ljava/util/UUID;
    if-nez v19, :cond_15

    .line 527
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v19

    .line 530
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->session()Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNodeId()Ljava/util/UUID;

    move-result-object v7

    if-nez p2, :cond_1a

    const/4 v10, 0x0

    :goto_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v17

    move-object/from16 v6, p4

    move-object/from16 v8, p1

    invoke-virtual/range {v5 .. v19}, Lorg/apache/ignite/internal/processors/session/GridTaskSessionProcessor;->createTaskSession(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/String;Ljava/util/Collection;JJLjava/util/Collection;Ljava/util/Map;ZLjava/util/UUID;)Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v23

    .line 544
    .local v23, "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    new-instance v24, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;-><init>(Lorg/apache/ignite/compute/ComputeTaskSession;Lorg/apache/ignite/internal/GridKernalContext;)V

    .line 546
    .local v24, "fut":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    const/16 v36, 0x0

    .line 548
    .local v36, "securityEx":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->enabled()Z

    move-result v5

    if-eqz v5, :cond_16

    if-nez v32, :cond_16

    .line 550
    :try_start_6
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->saveTaskMetadata(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_3

    .line 557
    :cond_16
    :goto_9
    if-nez v32, :cond_1f

    if-nez v36, :cond_1f

    .line 558
    if-eqz v9, :cond_17

    invoke-virtual {v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->acquire()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 559
    :cond_17
    new-instance v5, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task not deployed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v5, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->handleException(Ljava/lang/Throwable;Lorg/apache/ignite/internal/ComputeTaskInternalFuture;)V

    .line 605
    :goto_a
    return-object v24

    .line 517
    .end local v11    # "top":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v18    # "fullSup":Z
    .end local v19    # "subjId":Ljava/util/UUID;
    .end local v23    # "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .end local v24    # "fut":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    .end local v35    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v36    # "securityEx":Lorg/apache/ignite/IgniteCheckedException;
    :cond_18
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 522
    .restart local v18    # "fullSup":Z
    .restart local v35    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    :cond_19
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 530
    .restart local v11    # "top":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .restart local v19    # "subjId":Ljava/util/UUID;
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    goto :goto_8

    .line 552
    .restart local v23    # "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .restart local v24    # "fut":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    .restart local v36    # "securityEx":Lorg/apache/ignite/IgniteCheckedException;
    :catch_3
    move-exception v33

    .line 553
    .restart local v33    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v36, v33

    goto :goto_9

    .line 561
    .end local v33    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1b
    new-instance v20, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    move-object/from16 v21, v0

    new-instance v28, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;

    const/4 v5, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskEventListener;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;)V

    move-object/from16 v22, p5

    move-object/from16 v25, p2

    move-object/from16 v26, p3

    move-object/from16 v27, v9

    move-object/from16 v30, v19

    invoke-direct/range {v20 .. v30}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Object;Lorg/apache/ignite/internal/GridTaskSessionImpl;Lorg/apache/ignite/internal/ComputeTaskInternalFuture;Ljava/lang/Class;Lorg/apache/ignite/compute/ComputeTask;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Lorg/apache/ignite/internal/processors/task/GridTaskEventListener;Ljava/util/Map;Ljava/util/UUID;)V

    .line 573
    .local v20, "taskWorker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-interface {v5, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .line 575
    .local v38, "taskWorker0":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v5, :cond_1c

    if-eqz v38, :cond_1c

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Session ID is not unique: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 577
    :cond_1c
    const-class v5, Lorg/apache/ignite/compute/ComputeTaskMapAsync;

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->annotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 580
    if-eqz p6, :cond_1d

    .line 581
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->getSystemExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_a

    .line 585
    :catch_4
    move-exception v33

    .line 586
    .local v33, "e":Ljava/util/concurrent/RejectedExecutionException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p4

    invoke-interface {v5, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->release(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    .line 590
    new-instance v5, Lorg/apache/ignite/compute/ComputeExecutionRejectedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to execute task due to thread pool execution rejection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-direct {v5, v6, v0}, Lorg/apache/ignite/compute/ComputeExecutionRejectedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v5, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->handleException(Ljava/lang/Throwable;Lorg/apache/ignite/internal/ComputeTaskInternalFuture;)V

    goto/16 :goto_a

    .line 583
    .end local v33    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_1d
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_8
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_a

    .line 595
    :cond_1e
    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->run()V

    goto/16 :goto_a

    .line 599
    .end local v20    # "taskWorker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    .end local v38    # "taskWorker0":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    :cond_1f
    if-eqz v32, :cond_20

    .line 600
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->handleException(Ljava/lang/Throwable;Lorg/apache/ignite/internal/ComputeTaskInternalFuture;)V

    goto/16 :goto_a

    .line 602
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->handleException(Ljava/lang/Throwable;Lorg/apache/ignite/internal/ComputeTaskInternalFuture;)V

    goto/16 :goto_a
.end method

.method private taskName(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 647
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 648
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 649
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p3, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 653
    :cond_2
    const-class v2, Lorg/apache/ignite/compute/ComputeTaskName;

    invoke-virtual {p1, p2, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->annotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/compute/ComputeTaskName;

    .line 655
    .local v0, "ann":Lorg/apache/ignite/compute/ComputeTaskName;
    if-eqz v0, :cond_3

    .line 656
    invoke-interface {v0}, Lorg/apache/ignite/compute/ComputeTaskName;->value()Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "taskName":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 659
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task name specified by @GridComputeTaskName annotation cannot be empty for class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 663
    .end local v1    # "taskName":Ljava/lang/String;
    :cond_3
    sget-object v2, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_TASK_NAME:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_TASK_NAME:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    .line 665
    .restart local v1    # "taskName":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v1

    .line 663
    .end local v1    # "taskName":Ljava/lang/String;
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Class;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;>;TT;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/compute/ComputeTask<TT;TR;>;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 288
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 291
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->stopping:Z

    if-eqz v0, :cond_1

    .line 292
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to execute task due to grid shutdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0

    .line 294
    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->startTask(Ljava/lang/String;Ljava/lang/Class;Lorg/apache/ignite/compute/ComputeTask;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 297
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    return-object v0
.end method

.method public execute(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 7
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 357
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 362
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->stopping:Z

    if-eqz v0, :cond_1

    .line 363
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to execute task due to grid shutdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0

    .line 365
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->startTask(Ljava/lang/String;Ljava/lang/Class;Lorg/apache/ignite/compute/ComputeTask;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 368
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    return-object v0
.end method

.method public execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;TT;)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "task":Lorg/apache/ignite/compute/ComputeTask;, "Lorg/apache/ignite/compute/ComputeTask<TT;TR;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/ignite/compute/ComputeTask;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "sys"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<TT;TR;>;TT;Z)",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "task":Lorg/apache/ignite/compute/ComputeTask;, "Lorg/apache/ignite/compute/ComputeTask<TT;TR;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 324
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->stopping:Z

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to execute task due to grid shutdown: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0

    .line 327
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->startTask(Ljava/lang/String;Ljava/lang/Class;Lorg/apache/ignite/compute/ComputeTask;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;Z)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 330
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    return-object v0
.end method

.method public getThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 238
    sget-boolean v1, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 240
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->thCtx:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 242
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;>;"
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getTotalExecutedTasks()I
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execTasks:Lorg/jsr166/LongAdder8;

    invoke-virtual {v0}, Lorg/jsr166/LongAdder8;->intValue()I

    move-result v0

    return v0
.end method

.method public getUsedDeploymentMap()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 266
    .local v0, "deps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .line 267
    .local v3, "w":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v2

    .line 269
    .local v2, "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getDeployment()Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    invoke-virtual {v2}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTaskName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getDeployment()Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 275
    .end local v2    # "ses":Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .end local v3    # "w":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;
    :cond_1
    return-object v0
.end method

.method public getUsedDeployments()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 4
    .param p1, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 963
    sget-boolean v1, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 965
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 968
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->stopping:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->waiting:Z

    if-nez v1, :cond_1

    .line 969
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to cancel task while stopping grid (will ignore): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 988
    :goto_0
    return-void

    .line 974
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .line 976
    .local v0, "task":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    if-nez v0, :cond_3

    .line 977
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 978
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to cancel unknown task (was task already reduced?): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 986
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 983
    :cond_3
    const/4 v1, 0x0

    :try_start_2
    new-instance v2, Lorg/apache/ignite/internal/compute/ComputeTaskCancelledCheckedException;

    const-string v3, "Task was cancelled."

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/compute/ComputeTaskCancelledCheckedException;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 986
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .end local v0    # "task":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v1
.end method

.method public onKernalStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->utilityCache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasksMetaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    .line 114
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKernalStop(Z)V
    .locals 11
    .param p1, "cancel"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 119
    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v9}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLock()V

    .line 122
    const/4 v9, 0x1

    :try_start_0
    iput-boolean v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->stopping:Z

    .line 124
    if-nez p1, :cond_0

    :goto_0
    iput-boolean v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->waiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    .line 130
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v5

    .line 132
    .local v5, "size":I
    if-lez v5, :cond_6

    .line 133
    if-eqz p1, :cond_1

    .line 134
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Will cancel unfinished tasks due to stopping of the grid [cnt="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 138
    :goto_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .line 139
    .local v6, "task":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    if-nez p1, :cond_2

    .line 141
    :try_start_1
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getTaskFuture()Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/internal/compute/ComputeTaskCancelledCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Lorg/apache/ignite/internal/compute/ComputeTaskCancelledCheckedException;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/compute/ComputeTaskCancelledCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_2

    .end local v0    # "e":Lorg/apache/ignite/internal/compute/ComputeTaskCancelledCheckedException;
    .end local v5    # "size":I
    .end local v6    # "task":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    :cond_0
    move v7, v8

    .line 124
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    throw v7

    .line 136
    .restart local v5    # "size":I
    :cond_1
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v9, "Will wait for all job responses from worker nodes before stopping grid."

    invoke-static {v7, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_1

    .line 146
    .restart local v6    # "task":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Task failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 151
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_2
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getTopology()Ljava/util/Collection;

    move-result-object v9

    new-array v10, v8, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v7, v9, v10}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nodes(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cluster/ClusterNode;

    .line 152
    .local v4, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-interface {v4}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 153
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v7

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getSession()Lorg/apache/ignite/internal/GridTaskSessionImpl;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->masterLeaveLocal(Lorg/apache/ignite/lang/IgniteUuid;)V

    goto :goto_3

    .line 156
    .end local v4    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_4
    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->cancel()V

    .line 158
    new-instance v1, Lorg/apache/ignite/internal/compute/ComputeTaskCancelledCheckedException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Task cancelled due to stopping of the grid: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lorg/apache/ignite/internal/compute/ComputeTaskCancelledCheckedException;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "ex":Ljava/lang/Throwable;
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v1, v8}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->finishTask(Ljava/lang/Object;Ljava/lang/Throwable;Z)V

    goto/16 :goto_2

    .line 165
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "task":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    :cond_5
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v7, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Iterable;Lorg/apache/ignite/IgniteLogger;)Z

    .line 169
    :cond_6
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v7

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    new-array v8, v8, [I

    invoke-virtual {v7, v9, v8}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 171
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB_SIBLINGS:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Lorg/apache/ignite/internal/GridTopic;)Z

    .line 172
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TASK_CANCEL:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->removeMessageListener(Lorg/apache/ignite/internal/GridTopic;)Z

    .line 176
    if-nez p1, :cond_7

    .line 177
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeLock()V

    .line 180
    const/4 v7, 0x0

    :try_start_2
    iput-boolean v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->waiting:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 183
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    .line 187
    :cond_7
    sget-boolean v7, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v7, :cond_8

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 183
    :catchall_1
    move-exception v7

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    throw v7

    .line 189
    :cond_8
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 190
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v8, "Finished executing task processor onKernalStop() callback."

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 191
    :cond_9
    return-void
.end method

.method public printMemoryStats()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1008
    const-string v0, ">>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>> Task processor memory stats [grid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

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

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>  tasksSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    return-void
.end method

.method public processJobExecuteResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/GridJobExecuteResponse;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/GridJobExecuteResponse;

    .prologue
    .line 882
    sget-boolean v1, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 883
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 885
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 888
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->stopping:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->waiting:Z

    if-nez v1, :cond_2

    .line 889
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received job execution response while stopping grid (will ignore): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 909
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 911
    :goto_0
    return-void

    .line 894
    :cond_2
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/GridJobExecuteResponse;->getSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .line 896
    .local v0, "task":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    if-nez v0, :cond_4

    .line 897
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 898
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received job execution response for unknown task (was task already reduced?): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 909
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .line 903
    :cond_4
    :try_start_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 904
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received grid job response message [msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 906
    :cond_5
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->onResponse(Lorg/apache/ignite/internal/GridJobExecuteResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 909
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    .end local v0    # "task":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->lock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v1
.end method

.method public resetMetrics()V
    .locals 4

    .prologue
    .line 1003
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execTasks:Lorg/jsr166/LongAdder8;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->execTasks:Lorg/jsr166/LongAdder8;

    invoke-virtual {v1}, Lorg/jsr166/LongAdder8;->sum()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lorg/jsr166/LongAdder8;->add(J)V

    .line 1004
    return-void
.end method

.method public resolveTaskName(I)Ljava/lang/String;
    .locals 2
    .param p1, "taskNameHash"    # I

    .prologue
    .line 341
    if-nez p1, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 346
    :goto_0
    return-object v0

    .line 344
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->security()Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/security/GridSecurityProcessor;->enabled()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 346
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasksMetaCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    new-instance v1, Lorg/apache/ignite/internal/GridTaskNameHashKey;

    invoke-direct {v1, p1}, Lorg/apache/ignite/internal/GridTaskNameHashKey;-><init>(I)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->peek(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public setAttributes(Lorg/apache/ignite/internal/GridTaskSessionImpl;Ljava/util/Map;)V
    .locals 6
    .param p1, "ses"    # Lorg/apache/ignite/internal/GridTaskSessionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/GridTaskSessionImpl;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 728
    .local p2, "attrs":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/GridTaskSessionImpl;->getEndTime()J

    move-result-wide v2

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 730
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 731
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Task execution timed out (remote session attributes won\'t be set): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 741
    :goto_0
    return-void

    .line 737
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 738
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting session attribute(s) from task or future: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 740
    :cond_1
    invoke-direct {p0, p2, p1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->sendSessionAttributes(Ljava/util/Map;Lorg/apache/ignite/internal/GridTaskSessionImpl;)V

    goto :goto_0
.end method

.method public setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;
    .param p2, "val"    # Ljava/lang/Object;

    .prologue
    .line 206
    sget-boolean v1, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 207
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 209
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->thCtx:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 213
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 214
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->thCtx:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/EnumMap;

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;>;"
    const-class v2, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;>;"
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 216
    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return-void
.end method

.method public setThreadContextIfNotNull(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;
    .param p2, "val"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 226
    if-eqz p2, :cond_0

    .line 227
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->setThreadContext(Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;Ljava/lang/Object;)V

    .line 228
    :cond_0
    return-void
.end method

.method public start()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->discoLsnr:Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;

    const/16 v2, 0xc

    new-array v3, v7, [I

    const/4 v4, 0x0

    const/16 v5, 0xb

    aput v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_JOB_SIBLINGS:Lorg/apache/ignite/internal/GridTopic;

    new-instance v2, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;

    invoke-direct {v2, p0, v6}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobSiblingsMessageListener;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 104
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TASK_CANCEL:Lorg/apache/ignite/internal/GridTopic;

    new-instance v2, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;

    invoke-direct {v2, p0, v6}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$TaskCancelMessageListener;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_TASK:Lorg/apache/ignite/internal/GridTopic;

    new-instance v2, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;

    invoke-direct {v2, p0, v7, v6}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$JobMessageListener;-><init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;ZLorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Started task processor."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 109
    :cond_0
    return-void
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v1, "Stopped task processor."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 197
    :cond_0
    return-void
.end method

.method public taskFuture(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/ComputeTaskInternalFuture;
    .locals 2
    .param p1, "sesId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ")",
            "Lorg/apache/ignite/internal/ComputeTaskInternalFuture",
            "<TR;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 613
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .line 615
    .local v0, "taskWorker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getTaskFuture()Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public taskFutures()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/compute/ComputeTaskFuture",
            "<TR;>;>;"
        }
    .end annotation

    .prologue
    .line 623
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v2

    .line 625
    .local v2, "res":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/compute/ComputeTaskFuture<TR;>;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->tasks:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .line 626
    .local v3, "taskWorker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getTaskFuture()Lorg/apache/ignite/internal/ComputeTaskInternalFuture;

    move-result-object v0

    .line 628
    .local v0, "fut":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->getTaskSession()Lorg/apache/ignite/compute/ComputeTaskSession;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/compute/ComputeTaskSession;->getId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/ComputeTaskInternalFuture;->publicFuture()Lorg/apache/ignite/compute/ComputeTaskFuture;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 631
    .end local v0    # "fut":Lorg/apache/ignite/internal/ComputeTaskInternalFuture;, "Lorg/apache/ignite/internal/ComputeTaskInternalFuture<TR;>;"
    .end local v3    # "taskWorker":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;
    :cond_0
    return-object v2
.end method
