.class public Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsManager;
.source "IgfsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$DataInputBlocksWriter;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$ByteBufferBlocksWriter;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private affKeyGen:Ljava/util/concurrent/atomic/AtomicLong;

.field private byteBufWriter:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$ByteBufferBlocksWriter;

.field private curPendingPuts:J

.field private dataCache:Lorg/apache/ignite/internal/processors/cache/GridCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
            "[B>;"
        }
    .end annotation
.end field

.field private dataCacheStartLatch:Ljava/util/concurrent/CountDownLatch;

.field private dataInputWriter:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$DataInputBlocksWriter;

.field private delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;

.field private grpBlockSize:J

.field private grpSize:I

.field private igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

.field private igfsSvc:Ljava/util/concurrent/ExecutorService;

.field private volatile maxPendingPuts:J

.field private metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

.field private final pendingPutsCond:Ljava/util/concurrent/locks/Condition;

.field private final pendingPutsLock:Ljava/util/concurrent/locks/Lock;

.field private pendingWrites:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;",
            ">;"
        }
    .end annotation
.end field

.field private volatile putExecSvc:Ljava/util/concurrent/ExecutorService;

.field private volatile putExecSvcShutdown:Z

.field private reqIdCtr:Ljava/util/concurrent/atomic/AtomicLong;

.field private final rmtReadFuts:Lorg/jsr166/ConcurrentHashMap8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentHashMap8",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private topic:Ljava/lang/Object;

.field private trashPurgeTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsManager;-><init>()V

    .line 86
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$ByteBufferBlocksWriter;

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$ByteBufferBlocksWriter;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->byteBufWriter:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$ByteBufferBlocksWriter;

    .line 89
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$DataInputBlocksWriter;

    invoke-direct {v0, p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$DataInputBlocksWriter;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataInputWriter:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$DataInputBlocksWriter;

    .line 92
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingWrites:Ljava/util/concurrent/ConcurrentMap;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->affKeyGen:Ljava/util/concurrent/atomic/AtomicLong;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->reqIdCtr:Ljava/util/concurrent/atomic/AtomicLong;

    .line 113
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->rmtReadFuts:Lorg/jsr166/ConcurrentHashMap8;

    .line 129
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;

    .line 132
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsCond:Ljava/util/concurrent/locks/Condition;

    .line 1775
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->topic:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->storeBlocksAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->processBlocksMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)J
    .locals 2
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->maxPendingPuts:J

    return-wide v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$2222(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;J)J
    .locals 3
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .param p1, "x1"    # J

    .prologue
    .line 63
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->curPendingPuts:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->curPendingPuts:J

    return-wide v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsCond:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;JLorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->createBlockKey(JLorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "x2"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "x3"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->processBatch(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;I[B)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .param p3, "x3"    # I
    .param p4, "x4"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->processPartialBlockWrite(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;I[B)V

    return-void
.end method

.method static synthetic access$2800(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/apache/ignite/IgniteDataStreamer;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .prologue
    .line 63
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataStreamer()Lorg/apache/ignite/IgniteDataStreamer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->processAckMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingWrites:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCacheStartLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/jsr166/ConcurrentHashMap8;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->rmtReadFuts:Lorg/jsr166/ConcurrentHashMap8;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .param p2, "x2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->putSafe(Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B)V

    return-void
.end method

.method private affinity0(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;JJJLjava/util/Deque;)V
    .locals 24
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "start"    # J
    .param p4, "len"    # J
    .param p6, "maxLen"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            "JJJ",
            "Ljava/util/Deque",
            "<",
            "Lorg/apache/ignite/igfs/IgfsBlockLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 864
    .local p8, "res":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/igfs/IgfsBlockLocation;>;"
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpBlockSize:J

    div-long v16, p2, v4

    .line 865
    .local v16, "firstGrpIdx":J
    add-long v4, p2, p4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpBlockSize:J

    add-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpBlockSize:J

    div-long v22, v4, v6

    .line 867
    .local v22, "limitGrpIdx":J
    sub-long v4, v22, v16

    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 868
    new-instance v3, Lorg/apache/ignite/igfs/IgfsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get affinity (range is too wide) [info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/igfs/IgfsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 871
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 872
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mapping file region [fileInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 874
    :cond_1
    move-wide/from16 v18, v16

    .local v18, "grpIdx":J
    :goto_0
    cmp-long v3, v18, v22

    if-gez v3, :cond_6

    .line 880
    cmp-long v3, v18, v16

    if-nez v3, :cond_3

    .line 881
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpBlockSize:J

    rem-long v14, p2, v4

    .line 882
    .local v14, "blockStart":J
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpBlockSize:J

    sub-long/2addr v4, v14

    move-wide/from16 v0, p4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 896
    .local v12, "blockLen":J
    :goto_1
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpSize:I

    int-to-long v6, v6

    mul-long v6, v6, v18

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    .line 899
    .local v2, "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCache;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/ignite/cache/affinity/Affinity;->mapKeyToPrimaryAndBackups(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v10

    .line 901
    .local v10, "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 902
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mapped key to nodes [key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nodes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10}, Lorg/apache/ignite/internal/util/typedef/F;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", blockStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", blockLen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 905
    :cond_2
    invoke-interface/range {p8 .. p8}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/igfs/IgfsBlockLocation;

    .line 908
    .local v20, "last":Lorg/apache/ignite/igfs/IgfsBlockLocation;
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->nodeIds()Ljava/util/Collection;

    move-result-object v3

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->node2id()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v10, v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->equal(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 910
    invoke-interface/range {p8 .. p8}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 913
    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->start()J

    move-result-wide v4

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->length()J

    move-result-wide v6

    add-long/2addr v6, v12

    move-object/from16 v3, p0

    move-wide/from16 v8, p6

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->splitBlocks(JJJLjava/util/Collection;Ljava/util/Collection;)V

    .line 874
    :goto_2
    const-wide/16 v4, 0x1

    add-long v18, v18, v4

    goto/16 :goto_0

    .line 885
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .end local v10    # "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v12    # "blockLen":J
    .end local v14    # "blockStart":J
    .end local v20    # "last":Lorg/apache/ignite/igfs/IgfsBlockLocation;
    :cond_3
    const-wide/16 v4, 0x1

    sub-long v4, v22, v4

    cmp-long v3, v18, v4

    if-nez v3, :cond_4

    .line 886
    const-wide/16 v14, 0x0

    .line 887
    .restart local v14    # "blockStart":J
    add-long v4, p2, p4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpBlockSize:J

    rem-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long v12, v4, v6

    .restart local v12    # "blockLen":J
    goto/16 :goto_1

    .line 891
    .end local v12    # "blockLen":J
    .end local v14    # "blockStart":J
    :cond_4
    const-wide/16 v14, 0x0

    .line 892
    .restart local v14    # "blockStart":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpBlockSize:J

    .restart local v12    # "blockLen":J
    goto/16 :goto_1

    .line 916
    .restart local v2    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .restart local v10    # "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v20    # "last":Lorg/apache/ignite/igfs/IgfsBlockLocation;
    :cond_5
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpBlockSize:J

    mul-long v4, v4, v18

    add-long/2addr v4, v14

    move-object/from16 v3, p0

    move-wide v6, v12

    move-wide/from16 v8, p6

    move-object/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->splitBlocks(JJJLjava/util/Collection;Ljava/util/Collection;)V

    goto :goto_2

    .line 919
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .end local v10    # "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v12    # "blockLen":J
    .end local v14    # "blockStart":J
    .end local v20    # "last":Lorg/apache/ignite/igfs/IgfsBlockLocation;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 920
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calculated file affinity [info="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", start="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 922
    :cond_7
    return-void
.end method

.method private callIgfsLocalSafe(Ljava/util/concurrent/Callable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1166
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsSvc:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1178
    :goto_0
    return-void

    .line 1168
    :catch_0
    move-exception v1

    .line 1172
    .local v1, "ignored":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1174
    :catch_1
    move-exception v0

    .line 1175
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to execute IGFS callable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createBlockKey(JLorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .locals 15
    .param p1, "block"    # J
    .param p3, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p4, "locRange"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .prologue
    .line 1349
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1350
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v5

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    .line 1377
    :goto_0
    return-object v2

    .line 1353
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->done()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1354
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v5

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    goto :goto_0

    .line 1356
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long v12, p1, v2

    .line 1359
    .local v12, "blockStart":J
    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->less(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1360
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v13, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->affinityKey(JZ)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    .line 1362
    .local v4, "affKey":Lorg/apache/ignite/lang/IgniteUuid;
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v5

    move-wide/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    goto :goto_0

    .line 1366
    .end local v4    # "affKey":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceUsed()J

    move-result-wide v2

    long-to-float v2, v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceMax()J

    move-result-wide v6

    long-to-float v3, v6

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getFragmentizerLocalWritesRatio()F

    move-result v5

    mul-float/2addr v3, v5

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 1369
    invoke-virtual/range {p4 .. p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->markDone()V

    .line 1371
    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v9

    move-wide/from16 v10, p1

    invoke-direct/range {v6 .. v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    move-object v2, v6

    goto :goto_0

    .line 1374
    :cond_4
    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->belongs(J)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1375
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v12, v13, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->expand(JI)V

    .line 1377
    :cond_5
    new-instance v6, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v9

    move-wide/from16 v10, p1

    invoke-direct/range {v6 .. v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    move-object v2, v6

    goto/16 :goto_0
.end method

.method private dataStreamer()Lorg/apache/ignite/IgniteDataStreamer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/IgniteDataStreamer",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 306
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->dataStream()Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamProcessor;->dataStreamer(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerImpl;

    move-result-object v1

    .line 309
    .local v1, "ldr":Lorg/apache/ignite/IgniteDataStreamer;, "Lorg/apache/ignite/IgniteDataStreamer<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v0

    .line 311
    .local v0, "cfg":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPerNodeBatchSize()I

    move-result v2

    if-lez v2, :cond_0

    .line 312
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPerNodeBatchSize()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteDataStreamer;->perNodeBufferSize(I)V

    .line 314
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPerNodeParallelBatchCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 315
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPerNodeParallelBatchCount()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteDataStreamer;->perNodeParallelOperations(I)V

    .line 317
    :cond_1
    invoke-static {}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerCacheUpdaters;->batchedSorted()Lorg/apache/ignite/stream/StreamReceiver;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteDataStreamer;->receiver(Lorg/apache/ignite/stream/StreamReceiver;)V

    .line 319
    return-object v1
.end method

.method private equal(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "one":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .local p2, "two":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    const/4 v5, 0x0

    .line 969
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    if-eq v4, v6, :cond_0

    move v4, v5

    .line 982
    :goto_0
    return v4

    .line 972
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 973
    .local v1, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 975
    .local v2, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/UUID;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    .line 977
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 978
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/UUID;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    .line 979
    goto :goto_0

    .line 977
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 982
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private processAckMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ackMsg"    # Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;

    .prologue
    .line 1310
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->finishUnmarshal(Lorg/apache/ignite/marshaller/Marshaller;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->fileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    .line 1320
    .local v1, "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingWrites:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

    .line 1322
    .local v2, "fut":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    if-eqz v2, :cond_2

    .line 1323
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->error()Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1324
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->error()Lorg/apache/ignite/IgniteCheckedException;

    move-result-object v3

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onError(Ljava/util/UUID;Lorg/apache/ignite/IgniteCheckedException;)V
    invoke-static {v2, p1, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->access$500(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;Ljava/util/UUID;Lorg/apache/ignite/IgniteCheckedException;)V

    .line 1333
    .end local v1    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v2    # "fut":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    :cond_0
    :goto_0
    return-void

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmarshal message (will ignore): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1326
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v1    # "fileId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v2    # "fut":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsAckMessage;->id()J

    move-result-wide v4

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onWriteAck(Ljava/util/UUID;J)V
    invoke-static {v2, p1, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->access$1600(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;Ljava/util/UUID;J)V

    goto :goto_0

    .line 1329
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1330
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received write acknowledgement for non-existent write future (most likely future was failed) [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fileId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processBatch(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Map;)V
    .locals 8
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1008
    .local p3, "blocks":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->reqIdCtr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v6

    .line 1010
    .local v6, "batchId":J
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingWrites:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

    .line 1012
    .local v4, "completionFut":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    if-nez v4, :cond_1

    .line 1013
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing completion future for file write request (most likely exception occurred which will be thrown upon stream close) [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fileId="

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

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1022
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->get()Ljava/lang/Object;

    .line 1024
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onWriteRequest(Ljava/util/UUID;J)V
    invoke-static {v4, v1, v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->access$1400(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;Ljava/util/UUID;J)V

    .line 1026
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v5

    .line 1028
    .local v5, "nodeId":Ljava/util/UUID;
    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1029
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

    invoke-direct {v0, p1, v6, v7, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;-><init>(Lorg/apache/ignite/lang/IgniteUuid;JLjava/util/Map;)V

    .line 1031
    .local v0, "msg":Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$5;

    invoke-direct {v1, p0, v5, v0, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$5;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;)V

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->callIgfsLocalSafe(Ljava/util/concurrent/Callable;)V

    goto :goto_0

    .line 1044
    .end local v0    # "msg":Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;
    :cond_3
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;

    move-object v2, p0

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$6;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/util/Map;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;Ljava/util/UUID;J)V

    invoke-direct {p0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->callIgfsLocalSafe(Ljava/util/concurrent/Callable;)V

    goto :goto_0
.end method

.method private processBlocksMessage(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;)V
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "blocksMsg"    # Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;

    .prologue
    .line 1280
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;->blocks()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->storeBlocksAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$8;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/igfs/IgfsBlocksMessage;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 1302
    return-void
.end method

.method private processPartialBlockWrite(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;I[B)V
    .locals 16
    .param p1, "fileId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "colocatedKey"    # Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .param p3, "startOff"    # I
    .param p4, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1080
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceUsed()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceMax()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 1082
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->awaitDeletesAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->trashPurgeTimeout:J

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get(J)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1089
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceUsed()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceMax()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 1090
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingWrites:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

    .line 1092
    .local v8, "completionFut":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    if-nez v8, :cond_1

    .line 1093
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1094
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing completion future for file write request (most likely exception occurred which will be thrown upon stream close) [fileId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1156
    .end local v8    # "completionFut":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    :cond_0
    :goto_1
    return-void

    .line 1100
    .restart local v8    # "completionFut":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    :cond_1
    new-instance v9, Lorg/apache/ignite/igfs/IgfsOutOfSpaceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write data block (IGFS maximum data size exceeded) [used="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceUsed()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", allowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceMax()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Lorg/apache/ignite/igfs/IgfsOutOfSpaceException;-><init>(Ljava/lang/String;)V

    .line 1104
    .local v9, "e":Lorg/apache/ignite/igfs/IgfsOutOfSpaceException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write data (not enough space on node): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v8, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->onDone(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 1112
    .end local v8    # "completionFut":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    .end local v9    # "e":Lorg/apache/ignite/igfs/IgfsOutOfSpaceException;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1113
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    new-instance v4, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;

    const/4 v5, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v4, v0, v1, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;-><init>(I[BLorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    goto :goto_1

    .line 1119
    :cond_3
    if-nez p3, :cond_4

    .line 1120
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-interface {v3, v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    goto/16 :goto_1

    .line 1126
    :cond_4
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->getFileId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->evictExclude()Z

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;->getBlockId()J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    .line 1129
    .local v2, "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v4, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v5, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v12

    .local v12, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v4, 0x0

    .line 1131
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAll(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v13

    .line 1133
    .local v13, "vals":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    const/4 v10, 0x0

    .line 1135
    .local v10, "hasVal":Z
    new-instance v11, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;

    const/4 v3, 0x0

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v11, v0, v1, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;-><init>(I[BLorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;)V

    .line 1137
    .local v11, "transformClos":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;
    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1138
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v11, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    .line 1140
    const/4 v10, 0x1

    .line 1143
    :cond_5
    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 1144
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v2, v11, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;

    .line 1146
    const/4 v10, 0x1

    .line 1149
    :cond_6
    if-nez v10, :cond_8

    .line 1150
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to write partial block (no previous data was found in cache) [key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", relaxedKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", startOff="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dataLen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1129
    .end local v10    # "hasVal":Z
    .end local v11    # "transformClos":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;
    .end local v13    # "vals":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :catch_0
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1155
    :catchall_0
    move-exception v4

    move-object v15, v4

    move-object v4, v3

    move-object v3, v15

    :goto_2
    if-eqz v12, :cond_7

    if-eqz v4, :cond_a

    :try_start_3
    invoke-interface {v12}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_7
    :goto_3
    throw v3

    .line 1154
    .restart local v10    # "hasVal":Z
    .restart local v11    # "transformClos":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;
    .restart local v13    # "vals":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :cond_8
    :try_start_4
    invoke-interface {v12}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1155
    if-eqz v12, :cond_0

    if-eqz v4, :cond_9

    :try_start_5
    invoke-interface {v12}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v14

    .local v14, "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_9
    invoke-interface {v12}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto/16 :goto_1

    .end local v10    # "hasVal":Z
    .end local v11    # "transformClos":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$UpdateProcessor;
    .end local v13    # "vals":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :catch_2
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v4, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_a
    invoke-interface {v12}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_3

    :catchall_1
    move-exception v3

    goto :goto_2

    .line 1084
    .end local v2    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .end local v12    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_3
    move-exception v3

    goto/16 :goto_0
.end method

.method private putSafe(Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B)V
    .locals 6
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1188
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1189
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1191
    :cond_1
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->maxPendingPuts:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 1192
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1195
    :goto_0
    :try_start_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->curPendingPuts:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->maxPendingPuts:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1196
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsCond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v4, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "ignore":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to put IGFS data block into cache due to interruption: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    .end local v0    # "ignore":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    .line 1198
    :cond_2
    :try_start_2
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->curPendingPuts:J

    array-length v4, p2

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->curPendingPuts:J
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1204
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingPutsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1208
    :cond_3
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$7;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B)V

    .line 1234
    .local v1, "task":Ljava/lang/Runnable;
    :try_start_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->putExecSvc:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1239
    :goto_1
    return-void

    .line 1236
    :catch_1
    move-exception v0

    .line 1237
    .local v0, "ignore":Ljava/util/concurrent/RejectedExecutionException;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method private splitBlocks(JJJLjava/util/Collection;Ljava/util/Collection;)V
    .locals 19
    .param p1, "start"    # J
    .param p3, "len"    # J
    .param p5, "maxLen"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsBlockLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 935
    .local p7, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p8, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsBlockLocation;>;"
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_0

    .line 936
    add-long v16, p1, p3

    .line 938
    .local v16, "end":J
    move-wide/from16 v4, p1

    .line 940
    .local v4, "start0":J
    :goto_0
    cmp-long v2, v4, v16

    if-gez v2, :cond_1

    .line 941
    sub-long v2, v16, v4

    move-wide/from16 v0, p5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 943
    .local v6, "len0":J
    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;

    move-object/from16 v8, p7

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;-><init>(JJLjava/util/Collection;)V

    move-object/from16 v0, p8

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 945
    add-long/2addr v4, v6

    .line 946
    goto :goto_0

    .line 949
    .end local v4    # "start0":J
    .end local v6    # "len0":J
    .end local v16    # "end":J
    :cond_0
    new-instance v9, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-object/from16 v14, p7

    invoke-direct/range {v9 .. v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockLocationImpl;-><init>(JJLjava/util/Collection;)V

    move-object/from16 v0, p8

    invoke-interface {v0, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_1
    return-void
.end method

.method private storeBlocksAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;",
            "[B>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1247
    .local p1, "blocks":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1249
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceUsed()J

    move-result-wide v2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceMax()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 1252
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->awaitDeletesAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->trashPurgeTimeout:J

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get(J)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteFutureTimeoutCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceUsed()J

    move-result-wide v2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceMax()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1

    .line 1260
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v2, Lorg/apache/ignite/igfs/IgfsOutOfSpaceException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write data block (IGFS maximum data size exceeded) [used="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceUsed()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", allowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceMax()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/igfs/IgfsOutOfSpaceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1272
    :goto_1
    return-object v1

    .line 1266
    :catch_0
    move-exception v0

    .line 1267
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    const-string v3, "Failed to store data block due to unexpected exception."

    invoke-direct {v2, v3, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1272
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    goto :goto_1

    .line 1254
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private validTxState(Z)Z
    .locals 4
    .param p1, "inTx"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 992
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->tx()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-ne p1, v2, :cond_1

    .line 994
    .local v0, "txState":Z
    :goto_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    const-string v1, "Method cannot be called outside transaction: "

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->tx()Lorg/apache/ignite/transactions/Transaction;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .end local v0    # "txState":Z
    :cond_0
    move v2, v1

    .line 992
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 994
    .restart local v0    # "txState":Z
    :cond_2
    const-string v1, "Method cannot be called in transaction: "

    goto :goto_2

    .line 997
    :cond_3
    return v0
.end method


# virtual methods
.method public affinity(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;JJ)Ljava/util/Collection;
    .locals 8
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "start"    # J
    .param p4, "len"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            "JJ)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsBlockLocation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 741
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->affinity(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;JJJ)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public affinity(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;JJJ)Ljava/util/Collection;
    .locals 28
    .param p1, "info"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "start"    # J
    .param p4, "len"    # J
    .param p6, "maxLen"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            "JJJ)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/igfs/IgfsBlockLocation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 756
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->validTxState(Z)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 757
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get affinity (not a file): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 758
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start position should not be negative: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 759
    :cond_2
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-gez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Part length should not be negative: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 761
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calculating affinity for file [info="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", start="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", len="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x5d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 765
    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_6

    .line 766
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 851
    :cond_5
    :goto_0
    return-object v10

    .line 768
    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-lez v2, :cond_8

    .line 769
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v2

    int-to-long v2, v2

    rem-long v2, p6, v2

    sub-long p6, p6, v2

    .line 772
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, p6, v2

    if-gez v2, :cond_7

    .line 773
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 p6, v0

    .line 779
    :cond_7
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 780
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 782
    .local v11, "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsBlockLocation;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v8

    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v5

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    invoke-interface {v8, v2}, Lorg/apache/ignite/cache/affinity/Affinity;->mapKeyToPrimaryAndBackups(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v10

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    invoke-direct/range {v3 .. v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->splitBlocks(JJJLjava/util/Collection;Ljava/util/Collection;)V

    move-object v10, v11

    .line 785
    goto :goto_0

    .line 776
    .end local v11    # "res":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsBlockLocation;>;"
    :cond_8
    const-wide/16 p6, 0x0

    goto :goto_1

    .line 789
    :cond_9
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 791
    .local v10, "res":Ljava/util/Deque;, "Ljava/util/Deque<Lorg/apache/ignite/igfs/IgfsBlockLocation;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    .line 792
    invoke-direct/range {v2 .. v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->affinity0(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;JJJLjava/util/Deque;)V

    goto :goto_0

    .line 797
    :cond_a
    move-wide/from16 v4, p2

    .line 798
    .local v4, "pos":J
    add-long v22, p2, p4

    .line 800
    .local v22, "end":J
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 801
    .local v25, "range":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking range [range="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", pos="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x5d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 805
    :cond_c
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->less(J)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 806
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v2

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v26

    .line 808
    .local v26, "partEnd":J
    sub-long v6, v26, v4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v8, p6

    invoke-direct/range {v2 .. v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->affinity0(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;JJJLjava/util/Deque;)V

    .line 810
    move-wide/from16 v4, v26

    .line 813
    .end local v26    # "partEnd":J
    :cond_d
    invoke-interface {v10}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/ignite/igfs/IgfsBlockLocation;

    .line 815
    .local v24, "last":Lorg/apache/ignite/igfs/IgfsBlockLocation;
    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->belongs(J)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 816
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOffset()J

    move-result-wide v2

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    move-wide/from16 v0, v22

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v26

    .line 818
    .restart local v26    # "partEnd":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v2

    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/cache/affinity/Affinity;->mapKeyToPrimaryAndBackups(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v20

    .line 821
    .local v20, "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Calculated affinity for range [start="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", end="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v26

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", nodes="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/util/typedef/F;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", range="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", affNodes="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/util/typedef/F;->nodeIds(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x5d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 826
    :cond_e
    if-eqz v24, :cond_12

    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->nodeIds()Ljava/util/Collection;

    move-result-object v2

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->node2id()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v3

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v0, v20

    invoke-static {v0, v3, v6}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->equal(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 828
    invoke-interface {v10}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    .line 830
    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->start()J

    move-result-wide v14

    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->length()J

    move-result-wide v2

    add-long v2, v2, v26

    sub-long v16, v2, v4

    move-object/from16 v13, p0

    move-wide/from16 v18, p6

    move-object/from16 v21, v10

    invoke-direct/range {v13 .. v21}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->splitBlocks(JJJLjava/util/Collection;Ljava/util/Collection;)V

    .line 836
    :goto_2
    move-wide/from16 v4, v26

    .line 840
    .end local v20    # "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v26    # "partEnd":J
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finished range check [range="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", pos="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", res="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x5d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 843
    :cond_10
    cmp-long v2, v4, v22

    if-nez v2, :cond_b

    .line 848
    .end local v24    # "last":Lorg/apache/ignite/igfs/IgfsBlockLocation;
    .end local v25    # "range":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    :cond_11
    cmp-long v2, v4, v22

    if-eqz v2, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v6, v22

    move-wide/from16 v8, p6

    .line 849
    invoke-direct/range {v2 .. v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->affinity0(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;JJJLjava/util/Deque;)V

    goto/16 :goto_0

    .line 834
    .restart local v20    # "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v24    # "last":Lorg/apache/ignite/igfs/IgfsBlockLocation;
    .restart local v25    # "range":Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .restart local v26    # "partEnd":J
    :cond_12
    sub-long v16, v26, v4

    move-object/from16 v13, p0

    move-wide v14, v4

    move-wide/from16 v18, p6

    move-object/from16 v21, v10

    invoke-direct/range {v13 .. v21}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->splitBlocks(JJJLjava/util/Collection;Ljava/util/Collection;)V

    goto :goto_2
.end method

.method public affinityNode(Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1
    .param p1, "affinityKey"    # Ljava/lang/Object;

    .prologue
    .line 297
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/ignite/cache/affinity/Affinity;->mapKeyToNode(Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method awaitInit()V
    .locals 2

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCacheStartLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Lorg/apache/ignite/IgniteInterruptedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteInterruptedException;-><init>(Ljava/lang/InterruptedException;)V

    throw v1
.end method

.method public blockKey(JLorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .locals 11
    .param p1, "blockIdx"    # J
    .param p3, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .prologue
    .line 614
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 615
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    .line 623
    :goto_0
    return-object v0

    .line 617
    :cond_0
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 618
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v0

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v4, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v5, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->affinityKey(JZ)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    .line 620
    .local v2, "affKey":Lorg/apache/ignite/lang/IgniteUuid;
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    goto :goto_0

    .line 623
    .end local v2    # "affKey":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_1
    new-instance v4, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v7

    move-wide v8, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    move-object v0, v4

    goto :goto_0
.end method

.method public cleanBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Z)V
    .locals 17
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "range"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .param p3, "cleanNonColocated"    # Z

    .prologue
    .line 635
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v4

    int-to-long v4, v4

    div-long v12, v2, v4

    .line 637
    .local v12, "startIdx":J
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOffset()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v4

    int-to-long v4, v4

    div-long v10, v2, v4

    .line 639
    .local v10, "endIdx":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning blocks [fileInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", range="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cleanNonColocated="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 644
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataStreamer()Lorg/apache/ignite/IgniteDataStreamer;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .local v9, "ldr":Lorg/apache/ignite/IgniteDataStreamer;, "Lorg/apache/ignite/IgniteDataStreamer<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    const/4 v15, 0x0

    .line 645
    move-wide v6, v12

    .local v6, "idx":J
    :goto_0
    cmp-long v2, v6, v10

    if-gtz v2, :cond_2

    .line 646
    :try_start_1
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v5

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    invoke-interface {v9, v2}, Lorg/apache/ignite/IgniteDataStreamer;->removeData(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;

    .line 649
    if-eqz p3, :cond_1

    .line 650
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v5

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    invoke-interface {v9, v2}, Lorg/apache/ignite/IgniteDataStreamer;->removeData(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 645
    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v6, v2

    goto :goto_0

    .line 652
    :cond_2
    if-eqz v9, :cond_3

    if-eqz v15, :cond_4

    :try_start_2
    invoke-interface {v9}, Lorg/apache/ignite/IgniteDataStreamer;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 657
    .end local v6    # "idx":J
    .end local v9    # "ldr":Lorg/apache/ignite/IgniteDataStreamer;, "Lorg/apache/ignite/IgniteDataStreamer<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :cond_3
    :goto_1
    return-void

    .line 652
    .restart local v6    # "idx":J
    .restart local v9    # "ldr":Lorg/apache/ignite/IgniteDataStreamer;, "Lorg/apache/ignite/IgniteDataStreamer<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :catch_0
    move-exception v14

    .local v14, "x2":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v15, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 654
    .end local v6    # "idx":J
    .end local v9    # "ldr":Lorg/apache/ignite/IgniteDataStreamer;, "Lorg/apache/ignite/IgniteDataStreamer<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    .end local v14    # "x2":Ljava/lang/Throwable;
    :catch_1
    move-exception v8

    .line 655
    .local v8, "e":Lorg/apache/ignite/IgniteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to clean up file range [fileInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", range="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v8}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 652
    .end local v8    # "e":Lorg/apache/ignite/IgniteException;
    .restart local v6    # "idx":J
    .restart local v9    # "ldr":Lorg/apache/ignite/IgniteDataStreamer;, "Lorg/apache/ignite/IgniteDataStreamer<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :cond_4
    :try_start_4
    invoke-interface {v9}, Lorg/apache/ignite/IgniteDataStreamer;->close()V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 644
    :catch_2
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 652
    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    :goto_2
    if-eqz v9, :cond_5

    if-eqz v3, :cond_6

    :try_start_6
    invoke-interface {v9}, Lorg/apache/ignite/IgniteDataStreamer;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/ignite/IgniteException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    :goto_3
    :try_start_7
    throw v2

    :catch_3
    move-exception v14

    .restart local v14    # "x2":Ljava/lang/Throwable;
    invoke-virtual {v3, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v14    # "x2":Ljava/lang/Throwable;
    :cond_6
    invoke-interface {v9}, Lorg/apache/ignite/IgniteDataStreamer;->close()V
    :try_end_7
    .catch Lorg/apache/ignite/IgniteException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object v3, v15

    goto :goto_2
.end method

.method public dataBlock(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;JLorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 9
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "blockIdx"    # J
    .param p5, "secReader"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "J",
            "Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 389
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 390
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v1, p3, v4

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 393
    :cond_1
    invoke-virtual {p0, p3, p4, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->blockKey(JLorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    move-result-object v3

    .line 395
    .local v3, "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/cache/affinity/Affinity;->isPrimaryOrBackup(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 397
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading non-local data block [path="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", fileInfo="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", blockIdx="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 401
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAsync(Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 403
    .local v0, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<[B>;"
    if-eqz p5, :cond_3

    .line 404
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;JLorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 483
    :goto_0
    return-object v0

    .line 481
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->addReadBlocks(II)V

    goto :goto_0
.end method

.method public delete(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 598
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot delete content of not-data file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 602
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 605
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->deleteAsync(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    invoke-static {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->access$1300(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public groupBlockSize()J
    .locals 2

    .prologue
    .line 958
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpBlockSize:J

    return-wide v0
.end method

.method public listLocalDataBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Ljava/util/List;
    .locals 12
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 331
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 333
    :cond_0
    const/4 v8, 0x0

    .line 335
    .local v8, "prevGrpIdx":I
    const/4 v9, 0x0

    .line 337
    .local v9, "prevPrimaryFlag":Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 339
    .local v11, "res":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v4, 0x0

    .local v4, "i":J
    :goto_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blocksCount()J

    move-result-wide v2

    cmp-long v1, v4, v2

    if-gez v1, :cond_6

    .line 341
    iget v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpSize:I

    int-to-long v2, v1

    rem-long v2, v4, v2

    long-to-int v7, v2

    .line 343
    .local v7, "grpIdx":I
    if-ge v8, v7, :cond_2

    .line 345
    if-eqz v9, :cond_1

    .line 346
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_1
    :goto_1
    move v8, v7

    .line 339
    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    goto :goto_0

    .line 350
    :cond_2
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    .line 353
    .local v0, "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/ignite/cache/affinity/Affinity;->mapKeyToPrimaryAndBackups(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v6

    .line 355
    .local v6, "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v1, :cond_4

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 357
    :cond_4
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/cluster/ClusterNode;

    .line 359
    .local v10, "primaryNode":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v10}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 360
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    const/4 v9, 0x1

    goto :goto_1

    .line 365
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 371
    .end local v0    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .end local v6    # "affNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v7    # "grpIdx":I
    .end local v10    # "primaryNode":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_6
    return-object v11
.end method

.method public maxSpaceSize()J
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceMax()J

    move-result-wide v0

    return-wide v0
.end method

.method public nextAffinityKey(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 4
    .param p1, "prevAffKey"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 274
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    const/4 p1, 0x0

    .line 286
    .end local p1    # "prevAffKey":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_0
    :goto_0
    return-object p1

    .line 277
    .restart local p1    # "prevAffKey":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    .line 279
    .local v1, "nodeId":Ljava/util/UUID;
    if-eqz p1, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/ignite/cache/affinity/Affinity;->mapKeyToNode(Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v2

    if-nez v2, :cond_0

    .line 283
    :cond_2
    new-instance v0, Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->affKeyGen:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/lang/IgniteUuid;-><init>(Ljava/util/UUID;J)V

    .line 285
    .local v0, "key":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/apache/ignite/cache/affinity/Affinity;->mapKeyToNode(Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object p1, v0

    .line 286
    goto :goto_0
.end method

.method protected onKernalStart0()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    .line 206
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCache:Lorg/apache/ignite/internal/processors/cache/GridCache;

    .line 208
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsEx;->localMetrics()Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    .line 210
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 212
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v0

    .line 215
    .local v0, "mapper":Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    instance-of v1, v0, Lorg/apache/ignite/igfs/IgfsGroupDataBlocksKeyMapper;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/ignite/igfs/IgfsGroupDataBlocksKeyMapper;

    .end local v0    # "mapper":Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsGroupDataBlocksKeyMapper;->groupSize()I

    move-result v1

    :goto_0
    iput v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpSize:I

    .line 218
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getBlockSize()I

    move-result v1

    iget v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpSize:I

    mul-int/2addr v1, v2

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpBlockSize:J

    .line 220
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->grpBlockSize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 215
    .restart local v0    # "mapper":Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "mapper":Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->startFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$3;

    invoke-direct {v2, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$3;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 229
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 230
    return-void
.end method

.method protected onKernalStop0(Z)V
    .locals 4
    .param p1, "cancel"    # Z

    .prologue
    .line 234
    if-eqz p1, :cond_1

    .line 235
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->cancel()V

    .line 241
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Lorg/apache/ignite/internal/util/worker/GridWorker;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/IgniteInterruptedCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_1
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->putExecSvcShutdown:Z

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->putExecSvc:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->shutdownNow(Ljava/lang/Class;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/IgniteLogger;)V

    .line 249
    :cond_0
    return-void

    .line 237
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->stop()V
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;->access$700(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;)V

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "Got interrupter while waiting for delete worker to stop (will continue stopping)."

    invoke-interface {v1, v2, v0}, Lorg/apache/ignite/IgniteLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public spaceSize()J
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->igfsDataSpaceUsed()J

    move-result-wide v0

    return-wide v0
.end method

.method public spreadBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)V
    .locals 29
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "range"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .prologue
    .line 665
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->startOffset()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v3

    int-to-long v10, v3

    div-long v22, v4, v10

    .line 667
    .local v22, "startIdx":J
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->endOffset()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v3

    int-to-long v10, v3

    div-long v18, v4, v10

    .line 670
    .local v18, "endIdx":J
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataStreamer()Lorg/apache/ignite/IgniteDataStreamer;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v20

    .local v20, "ldr":Lorg/apache/ignite/IgniteDataStreamer;, "Lorg/apache/ignite/IgniteDataStreamer<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    const/16 v27, 0x0

    .line 671
    const-wide/16 v16, 0x0

    .line 673
    .local v16, "bytesProcessed":J
    move-wide/from16 v6, v22

    .local v6, "idx":J
    :goto_0
    cmp-long v3, v6, v18

    if-gtz v3, :cond_b

    .line 674
    :try_start_1
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;->affinityKey()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v5

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    .line 677
    .local v2, "colocatedKey":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    new-instance v8, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->evictExclude()Z

    move-result v11

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZJ)V

    .line 680
    .local v8, "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    invoke-interface {v3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 682
    .local v14, "block":[B
    if-eqz v14, :cond_a

    .line 685
    array-length v3, v14

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v4

    if-eq v3, v4, :cond_9

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    sget-object v4, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v5, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->txStartEx(Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v21

    .local v21, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    const/4 v4, 0x0

    .line 687
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    const/4 v9, 0x0

    aput-object v2, v5, v9

    const/4 v9, 0x1

    aput-object v8, v5, v9

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->getAll(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v25

    .line 689
    .local v25, "vals":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [B

    .line 691
    .local v24, "val":[B
    if-eqz v24, :cond_3

    .line 692
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-object/from16 v0, v24

    invoke-interface {v3, v8, v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z

    .line 694
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 703
    :cond_0
    :goto_1
    if-eqz v21, :cond_1

    if-eqz v4, :cond_7

    :try_start_3
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 708
    .end local v21    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v24    # "val":[B
    .end local v25    # "vals":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :cond_1
    :goto_2
    :try_start_4
    array-length v3, v14

    int-to-long v4, v3

    add-long v16, v16, v4

    .line 710
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getFragmentizerThrottlingBlockLength()J

    move-result-wide v4

    cmp-long v3, v16, v4

    if-ltz v3, :cond_2

    .line 711
    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/IgniteDataStreamer;->flush()V

    .line 713
    const-wide/16 v16, 0x0

    .line 715
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getFragmentizerThrottlingDelay()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 673
    :cond_2
    :goto_3
    const-wide/16 v4, 0x1

    add-long/2addr v6, v4

    goto/16 :goto_0

    .line 698
    .restart local v21    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v24    # "val":[B
    .restart local v25    # "vals":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 699
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to find colocated file block for spread (will ignore) [fileInfo="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", range="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", startIdx="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", endIdx="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", idx="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v9, 0x5d

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/16 :goto_1

    .line 686
    .end local v24    # "val":[B
    .end local v25    # "vals":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :catch_0
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 703
    :catchall_0
    move-exception v4

    move-object/from16 v28, v4

    move-object v4, v3

    move-object/from16 v3, v28

    :goto_4
    if-eqz v21, :cond_4

    if-eqz v4, :cond_8

    :try_start_7
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_4
    :goto_5
    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 670
    .end local v2    # "colocatedKey":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .end local v8    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .end local v14    # "block":[B
    .end local v21    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catch_1
    move-exception v3

    :try_start_9
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 723
    :catchall_1
    move-exception v4

    move-object/from16 v28, v4

    move-object v4, v3

    move-object/from16 v3, v28

    :goto_6
    if-eqz v20, :cond_5

    if-eqz v4, :cond_d

    :try_start_a
    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/IgniteDataStreamer;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_a .. :try_end_a} :catch_2

    :cond_5
    :goto_7
    :try_start_b
    throw v3
    :try_end_b
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_b .. :try_end_b} :catch_2

    .line 725
    .end local v6    # "idx":J
    .end local v16    # "bytesProcessed":J
    .end local v20    # "ldr":Lorg/apache/ignite/IgniteDataStreamer;, "Lorg/apache/ignite/IgniteDataStreamer<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :catch_2
    move-exception v15

    .line 726
    .local v15, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clean up file range [fileInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", range="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v15}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 728
    .end local v15    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_6
    :goto_8
    return-void

    .line 703
    .restart local v2    # "colocatedKey":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .restart local v6    # "idx":J
    .restart local v8    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .restart local v14    # "block":[B
    .restart local v16    # "bytesProcessed":J
    .restart local v20    # "ldr":Lorg/apache/ignite/IgniteDataStreamer;, "Lorg/apache/ignite/IgniteDataStreamer<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    .restart local v21    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v24    # "val":[B
    .restart local v25    # "vals":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :catch_3
    move-exception v26

    .local v26, "x2":Ljava/lang/Throwable;
    :try_start_c
    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 723
    .end local v2    # "colocatedKey":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .end local v8    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .end local v14    # "block":[B
    .end local v21    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v24    # "val":[B
    .end local v25    # "vals":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    .end local v26    # "x2":Ljava/lang/Throwable;
    :catchall_2
    move-exception v3

    move-object/from16 v4, v27

    goto :goto_6

    .line 703
    .restart local v2    # "colocatedKey":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .restart local v8    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .restart local v14    # "block":[B
    .restart local v21    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .restart local v24    # "val":[B
    .restart local v25    # "vals":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :cond_7
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto/16 :goto_2

    .end local v24    # "val":[B
    .end local v25    # "vals":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    :catch_4
    move-exception v26

    .restart local v26    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v26    # "x2":Ljava/lang/Throwable;
    :cond_8
    invoke-interface/range {v21 .. v21}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->close()V

    goto :goto_5

    .line 706
    .end local v21    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_9
    move-object/from16 v0, v20

    invoke-interface {v0, v8, v14}, Lorg/apache/ignite/IgniteDataStreamer;->addData(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteFuture;

    goto/16 :goto_2

    .line 718
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 719
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find colocated file block for spread (will ignore) [fileInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", range="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", startIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", endIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", idx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_3

    .line 723
    .end local v2    # "colocatedKey":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .end local v8    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .end local v14    # "block":[B
    :cond_b
    if-eqz v20, :cond_6

    if-eqz v27, :cond_c

    :try_start_d
    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/IgniteDataStreamer;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_d .. :try_end_d} :catch_2

    goto/16 :goto_8

    :catch_5
    move-exception v26

    .restart local v26    # "x2":Ljava/lang/Throwable;
    :try_start_e
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .end local v26    # "x2":Ljava/lang/Throwable;
    :cond_c
    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/IgniteDataStreamer;->close()V

    goto/16 :goto_8

    :catch_6
    move-exception v26

    .restart local v26    # "x2":Ljava/lang/Throwable;
    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .end local v26    # "x2":Ljava/lang/Throwable;
    :cond_d
    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/IgniteDataStreamer;->close()V
    :try_end_e
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_7

    .line 703
    .restart local v2    # "colocatedKey":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .restart local v8    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .restart local v14    # "block":[B
    .restart local v21    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :catchall_3
    move-exception v3

    goto/16 :goto_4
.end method

.method protected start0()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 148
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfs:Lorg/apache/ignite/internal/processors/igfs/IgfsEx;

    .line 150
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCacheStartLatch:Ljava/util/concurrent/CountDownLatch;

    .line 152
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "igfsName":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_IGFS:Lorg/apache/ignite/internal/GridTopic;

    :goto_0
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->topic:Ljava/lang/Object;

    .line 156
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->io()Lorg/apache/ignite/internal/managers/communication/GridIoManager;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->topic:Ljava/lang/Object;

    new-instance v4, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)V

    invoke-virtual {v1, v3, v4}, Lorg/apache/ignite/internal/managers/communication/GridIoManager;->addMessageListener(Ljava/lang/Object;Lorg/apache/ignite/internal/managers/communication/GridMessageListener;)V

    .line 165
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->event()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v1

    new-instance v3, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$2;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$2;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)V

    const/16 v4, 0xb

    new-array v5, v8, [I

    const/4 v6, 0x0

    const/16 v7, 0xc

    aput v7, v5, v6

    invoke-virtual {v1, v3, v4, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 180
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->getIgfsExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsSvc:Ljava/util/concurrent/ExecutorService;

    .line 182
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getTrashPurgeTimeout()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->trashPurgeTimeout:J

    .line 184
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDualModePutExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->putExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 186
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->putExecSvc:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_1

    .line 187
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDualModePutExecutorServiceShutdown()Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->putExecSvcShutdown:Z

    .line 197
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDualModeMaxPendingPutsSize()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->maxPendingPuts:J

    .line 199
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->gridName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "igfs-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-delete-worker"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {v1, p0, v3, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->delWorker:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$AsyncDeleteWorker;

    .line 201
    return-void

    .line 154
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/GridTopic;->TOPIC_IGFS:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/GridTopic;->topic(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 189
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 192
    .local v2, "coresCnt":I
    new-instance v1, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;

    const-wide/16 v4, 0x0

    new-instance v6, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/thread/IgniteThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->putExecSvc:Ljava/util/concurrent/ExecutorService;

    .line 194
    iput-boolean v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->putExecSvcShutdown:Z

    goto :goto_1
.end method

.method public storeDataBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J[BILjava/io/DataInput;IZLorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)[B
    .locals 12
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "reservedLen"    # J
    .param p4, "remainder"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "remainderLen"    # I
    .param p6, "in"    # Ljava/io/DataInput;
    .param p7, "len"    # I
    .param p8, "flush"    # Z
    .param p9, "affinityRange"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .param p10, "batch"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataInputWriter:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$DataInputBlocksWriter;

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$DataInputBlocksWriter;->storeDataBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J[BILjava/lang/Object;IZLorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)[B

    move-result-object v0

    return-object v0
.end method

.method public storeDataBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J[BILjava/nio/ByteBuffer;ZLorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)[B
    .locals 12
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "reservedLen"    # J
    .param p4, "remainder"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "remainderLen"    # I
    .param p6, "data"    # Ljava/nio/ByteBuffer;
    .param p7, "flush"    # Z
    .param p8, "affinityRange"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .param p9, "batch"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 551
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->byteBufWriter:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$ByteBufferBlocksWriter;

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$ByteBufferBlocksWriter;->storeDataBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J[BILjava/lang/Object;IZLorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)[B

    move-result-object v0

    return-object v0
.end method

.method public writeClose(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V
    .locals 4
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .prologue
    .line 512
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingWrites:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

    .line 514
    .local v0, "fut":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    if-eqz v0, :cond_1

    .line 515
    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->markWaitingLastAck()V
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;->access$1200(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find write completion future for file in pending write map (most likely it was failed): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeStart(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 493
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;)V

    .line 495
    .local v0, "fut":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->pendingWrites:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;

    .line 497
    .local v1, "oldFut":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$WriteCompletionFuture;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opened write that is being concurrently written: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 499
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 500
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registered write completion future for file output stream [fileInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fut="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 503
    :cond_1
    return-object v0
.end method
