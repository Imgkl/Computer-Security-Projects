.class public Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;
.source "IgniteTxManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;,
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;,
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;,
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;,
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$NodeFailureTimeoutObject;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DFLT_MAX_COMPLETED_TX_CNT:I = 0x40000

.field private static final SLOW_TX_WARN_TIMEOUT:I

.field private static final TX_SALVAGE_TIMEOUT:I


# instance fields
.field private final committedQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation
.end field

.field private final completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private finishSyncDisabled:Z

.field private final idMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation
.end field

.field private final mappedVers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field

.field private final nearIdMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation
.end field

.field private final prepareQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation
.end field

.field private slowTxWarnTimeout:I

.field private final startVerCnts:Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentNavigableMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;",
            ">;"
        }
    .end annotation
.end field

.field private final syncs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/transactions/TransactionSynchronization;",
            ">;"
        }
    .end annotation
.end field

.field private final sysThreadMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation
.end field

.field private final threadCtx:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation
.end field

.field private final threadMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation
.end field

.field private txFinishSync:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

.field private txHandler:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    .line 64
    const-string v0, "IGNITE_SLOW_TX_WARN_TIMEOUT"

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->SLOW_TX_WARN_TIMEOUT:I

    .line 67
    const-string v0, "IGNITE_TX_SALVAGE_TIMEOUT"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->TX_SALVAGE_TIMEOUT:I

    return-void

    :cond_0
    move v0, v1

    .line 59
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedManagerAdapter;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadCtx:Ljava/lang/ThreadLocal;

    .line 73
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadMap:Ljava/util/concurrent/ConcurrentMap;

    .line 76
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->sysThreadMap:Ljava/util/concurrent/ConcurrentMap;

    .line 79
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    .line 82
    invoke-static {}, Lorg/apache/ignite/internal/util/GridConcurrentFactory;->newMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->nearIdMap:Ljava/util/concurrent/ConcurrentMap;

    .line 88
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->committedQ:Ljava/util/Queue;

    .line 91
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->prepareQ:Ljava/util/Queue;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->startVerCnts:Ljava/util/concurrent/ConcurrentNavigableMap;

    .line 98
    new-instance v0, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    const-string v1, "IGNITE_MAX_COMPLETED_TX_COUNT"

    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    .line 102
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->syncs:Ljava/util/Collection;

    .line 112
    sget v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->SLOW_TX_WARN_TIMEOUT:I

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->slowTxWarnTimeout:I

    .line 118
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    const/16 v1, 0x1400

    invoke-direct {v0, v1}, Lorg/jsr166/ConcurrentHashMap8;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->mappedVers:Ljava/util/concurrent/ConcurrentMap;

    .line 2174
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZLorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->salvageTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZLorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txFinishSync:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->TX_SALVAGE_TIMEOUT:I

    return v0
.end method

.method private clearThreadMap(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 9
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 1412
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->dht()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1413
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->system()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1414
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->threadId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1433
    :cond_0
    :goto_0
    return-void

    .line 1416
    :cond_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->activeCacheIds()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1418
    .local v0, "cacheId":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 1419
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->sysThreadMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->threadId()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v5, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;-><init>(JILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;)V

    invoke-interface {v3, v4, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1421
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->sysThreadMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1422
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 1424
    .local v2, "txx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-ne p1, v2, :cond_3

    .line 1425
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private collectPendingVersions(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Set;)V
    .locals 9
    .param p2, "baseVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1113
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .local p3, "vers":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1114
    .local v5, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1118
    .local v0, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_0
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsolete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1119
    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->localCandidates([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1120
    .local v1, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->owner()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {v6, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->compareTo(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)I

    move-result v6

    if-gez v6, :cond_1

    .line 1121
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1122
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding candidate version to pending set: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1124
    :cond_2
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1129
    .end local v1    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 1130
    .local v4, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1131
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "There are no pending locks for entry (entry was deleted in transaction): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1134
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v4    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v5    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_3
    return-void
.end method

.method private collectPendingVersions(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;)V
    .locals 4
    .param p1, "dhtTxLoc"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    .prologue
    .line 1087
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->needsCompletedVersions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1088
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1089
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking for pending locks with version less then tx version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1091
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1093
    .local v0, "vers":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->readEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->collectPendingVersions(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Set;)V

    .line 1094
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->writeEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->collectPendingVersions(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Set;)V

    .line 1096
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1097
    invoke-virtual {p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;->pendingVersions(Ljava/util/Collection;)V

    .line 1099
    .end local v0    # "vers":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_1
    return-void
.end method

.method private copyOf(Ljava/util/Map;Z)Ljava/util/Collection;
    .locals 4
    .param p2, "expVal"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 961
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Boolean;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 963
    .local v2, "l":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 964
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, p2, :cond_0

    .line 965
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 968
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Boolean;>;"
    :cond_1
    return-object v2
.end method

.method private decrementStartVersionCount(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 4
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 906
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->startVerCnts:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentNavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;

    .line 908
    .local v0, "cnt":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find start version count for transaction [startVerCnts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->startVerCnts:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 911
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;->get()I

    move-result v1

    if-gtz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 913
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_2

    .line 914
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->startVerCnts:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 915
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 916
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed start version for transaction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 917
    :cond_2
    return-void
.end method

.method private isSafeToForget(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z
    .locals 4
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    const/4 v2, 0x1

    .line 890
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->startVerCnts:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentNavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 892
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;>;"
    if-nez v0, :cond_0

    .line 897
    :goto_0
    return v2

    .line 895
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;->get()I

    move-result v1

    if-gez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 897
    :cond_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->endVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->compareTo(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)I

    move-result v1

    if-gtz v1, :cond_2

    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private lockMultiple(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Iterable;)Z
    .locals 22
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1556
    .local p2, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    sget-boolean v15, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v15, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->optimistic()Z

    move-result v15

    if-nez v15, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v15

    if-eqz v15, :cond_0

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    .line 1558
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v16

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startTime()J

    move-result-wide v18

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->timeout()J

    move-result-wide v20

    add-long v18, v18, v20

    sub-long v10, v16, v18

    .line 1563
    .local v10, "remainingTime":J
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->timeout()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-nez v15, :cond_3

    const-wide/16 v12, 0x0

    .line 1565
    .local v12, "timeout":J
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1567
    .local v9, "txEntry1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->markPrepared()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v15

    if-nez v15, :cond_1

    .line 1570
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    .line 1574
    .local v2, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    :goto_2
    :try_start_0
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    .line 1576
    .local v4, "entry1":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-boolean v15, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v15, :cond_4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v15

    if-eqz v15, :cond_4

    new-instance v15, Ljava/lang/AssertionError;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Expected non-detached entry for near transaction [locNodeId="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", entry="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v15
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1595
    .end local v4    # "entry1":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v8

    .line 1596
    .local v8, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v15}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1597
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Got removed entry in TM lockMultiple(..) method (will retry): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1601
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v15

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v15

    invoke-virtual {v9, v15}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1603
    :catch_1
    move-exception v3

    .line 1604
    .local v3, "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    sget-boolean v15, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v15, :cond_8

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->dht()Z

    move-result v15

    if-nez v15, :cond_8

    new-instance v15, Ljava/lang/AssertionError;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Received invalid partition for non DHT transaction [tx="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", invalidPart="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;->partition()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x5d

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v15

    .end local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v3    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .end local v8    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v9    # "txEntry1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v12    # "timeout":J
    :cond_3
    move-wide v12, v10

    .line 1563
    goto/16 :goto_0

    .line 1579
    .restart local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v4    # "entry1":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v9    # "txEntry1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v12    # "timeout":J
    :cond_4
    :try_start_2
    move-object/from16 v0, p1

    invoke-interface {v4, v0, v12, v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->tmLock(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;J)Z

    move-result v15

    if-nez v15, :cond_7

    .line 1581
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1582
    .local v14, "txEntry2":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-ne v14, v9, :cond_6

    .line 1588
    .end local v14    # "txEntry2":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_5
    const/4 v15, 0x0

    .line 1621
    .end local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v4    # "entry1":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "txEntry1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :goto_4
    return v15

    .line 1585
    .restart local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v4    # "entry1":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "txEntry1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v14    # "txEntry2":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_6
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txUnlock(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 1613
    .end local v4    # "entry1":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v14    # "txEntry2":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :catch_2
    move-exception v7

    .line 1614
    .local v7, "ignore":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->setRollbackOnly()Z

    .line 1616
    new-instance v15, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Entry lock has been cancelled for transaction: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1591
    .end local v7    # "ignore":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
    .restart local v4    # "entry1":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_7
    :try_start_3
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->unswap()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 1608
    .end local v4    # "entry1":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v3    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .restart local v8    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_8
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;->partition()I

    move-result v15

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v15}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->addInvalidPartition(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V

    goto/16 :goto_1

    .line 1621
    .end local v2    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v3    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .end local v8    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v9    # "txEntry1":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_9
    const/4 v15, 0x1

    goto :goto_4
.end method

.method private minVersion(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 8
    .param p2, "min"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;"
        }
    .end annotation

    .prologue
    .line 1149
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1150
    .local v4, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1155
    .local v0, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->isRead()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid obsolete version for transaction [entry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 1157
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->remoteMvccSnapshot([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1158
    .local v1, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-eqz p2, :cond_3

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {v5, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isLess(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1159
    :cond_3
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object p2

    goto :goto_0

    .line 1162
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v1    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_4
    return-object p2
.end method

.method private notifyEvitions(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 4
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 1449
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->internal()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->groupLock()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1454
    :cond_0
    return-void

    .line 1452
    :cond_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->allEntries()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1453
    .local v1, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Z)V

    goto :goto_0
.end method

.method private processCompletedEntries(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 3
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 1070
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->needsCompletedVersions()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1071
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->readEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-direct {p0, v1, v2, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->minVersion(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    .line 1073
    .local v0, "min":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->minVersion(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    .line 1075
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1077
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->committedVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->rolledbackVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->completedVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1079
    .end local v0    # "min":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_1
    return-void
.end method

.method private removeObsolete(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 10
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 923
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->allEntries()Ljava/util/Collection;

    move-result-object v3

    .line 925
    .local v3, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 926
    .local v4, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 928
    .local v1, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 930
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    if-nez v1, :cond_1

    .line 931
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 933
    :cond_1
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v7

    if-nez v7, :cond_0

    .line 937
    :try_start_0
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsolete()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsoleteIfEmpty(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 938
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 940
    :cond_3
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->near()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 941
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v6

    .line 943
    .local v6, "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    :goto_2
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    move-result-object v2

    .line 945
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;->markObsoleteIfEmpty(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 946
    invoke-virtual {v6, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 949
    .end local v2    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;
    .end local v6    # "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    :catch_0
    move-exception v2

    .line 950
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to remove obsolete entry from cache: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 923
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v1    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v3    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeEntries()Ljava/util/Collection;

    move-result-object v3

    goto/16 :goto_0

    .line 941
    .restart local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .restart local v1    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v3    # "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    .restart local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_2

    .line 953
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v1    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_6
    return-void
.end method

.method private salvageTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZLorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z
    .locals 10
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "warn"    # Z
    .param p3, "status"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 182
    sget-boolean v7, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 184
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v4

    .line 186
    .local v4, "state":Lorg/apache/ignite/transactions/TransactionState;
    sget-object v7, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v4, v7, :cond_1

    sget-object v7, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v4, v7, :cond_1

    sget-object v7, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v4, v7, :cond_9

    .line 188
    :cond_1
    :try_start_0
    invoke-interface {p1, p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->markFinalizing(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 189
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 190
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Will not try to commit invalidate transaction (could not mark finalized): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_2
    move v5, v6

    .line 248
    :cond_3
    :goto_0
    return v5

    .line 195
    :cond_4
    const/4 v7, 0x1

    invoke-interface {p1, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->systemInvalidate(Z)V

    .line 197
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->prepare()V

    .line 199
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v7, v8, :cond_6

    .line 200
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 201
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring transaction in PREPARING state as it is currently handled by another thread: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_5
    move v5, v6

    .line 204
    goto :goto_0

    .line 207
    :cond_6
    instance-of v6, p1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;

    if-eqz v6, :cond_7

    .line 208
    move-object v0, p1

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;

    move-object v3, v0

    .line 210
    .local v3, "rmtTx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v3, v6, v7, v8, v9}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;->doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 214
    .end local v3    # "rmtTx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;
    :cond_7
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commit()V

    .line 216
    if-eqz p2, :cond_3

    .line 219
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalidated transaction because originating node either crashed or left grid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txString(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 223
    :catch_0
    move-exception v2

    .line 224
    .local v2, "ignore":Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 225
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Optimistic failure while invalidating transaction (will rollback): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 229
    :cond_8
    :try_start_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->rollback()V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 231
    :catch_1
    move-exception v1

    .line 232
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to rollback transaction: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 235
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v2    # "ignore":Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;
    :catch_2
    move-exception v1

    .line 236
    .restart local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to invalidate transaction: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 239
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_9
    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->MARKED_ROLLBACK:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v4, v6, :cond_3

    .line 241
    :try_start_2
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->rollback()V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 243
    :catch_3
    move-exception v1

    .line 244
    .restart local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to rollback transaction: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private transactionMap(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ")",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1442
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->near()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->nearIdMap:Ljava/util/concurrent/ConcurrentMap;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    goto :goto_0
.end method

.method private tx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;J)Ljava/lang/Object;
    .locals 4
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p2, "threadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "J)TT;"
        }
    .end annotation

    .prologue
    .line 702
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v1

    if-nez v1, :cond_1

    .line 703
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 707
    :goto_0
    return-object v1

    .line 705
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p2, p3, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;-><init>(JILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;)V

    .line 707
    .local v0, "key":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->sysThreadMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private txContext()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadCtx:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    return-object v0
.end method

.method private unlockGroupLocks(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 9
    .param p1, "txx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 1631
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v3

    .line 1633
    .local v3, "grpLockKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez v3, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1635
    :cond_0
    if-nez v3, :cond_2

    .line 1667
    :cond_1
    :goto_0
    return-void

    .line 1638
    :cond_2
    invoke-interface {p1, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v5

    .line 1640
    .local v5, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    if-nez v5, :cond_4

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->near()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1642
    :cond_4
    if-eqz v5, :cond_1

    .line 1643
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 1648
    .local v1, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    :goto_1
    :try_start_0
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    .line 1650
    .local v2, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v6, :cond_6

    if-nez v2, :cond_6

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1656
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v4

    .line 1657
    .local v4, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1658
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed entry in TM unlockGroupLocks(..) method (will retry): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1660
    :cond_5
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 1663
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_1

    .line 1652
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
    .end local v4    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_6
    :try_start_1
    invoke-interface {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txUnlock(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private unlockMultiple(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Iterable;)V
    .locals 8
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1674
    .local p2, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1675
    .local v4, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 1679
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    :goto_1
    :try_start_0
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 1681
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v5, :cond_2

    if-nez v1, :cond_2

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1690
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v3

    .line 1691
    .local v3, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1692
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got removed entry in TM unlockMultiple(..) method (will retry): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1695
    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    goto :goto_1

    .line 1683
    .end local v3    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .restart local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1686
    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txUnlock(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1699
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v4    # "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_3
    return-void
.end method


# virtual methods
.method public addAlternateVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 3
    .param p1, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 613
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered alternate transaction version [ver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 616
    :cond_0
    return-void
.end method

.method public addCommittedTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z
    .locals 2
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 1009
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->addCommittedTx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    return v0
.end method

.method public addCommittedTx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 6
    .param p1, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "nearXidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 1026
    if-eqz p2, :cond_0

    .line 1027
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;

    const/4 v3, 0x0

    invoke-direct {v1, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;-><init>(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;)V

    .end local p1    # "xidVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .local v1, "xidVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object p1, v1

    .line 1029
    .end local v1    # "xidVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local p1    # "xidVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1031
    .local v0, "committed":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1032
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1033
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added transaction to committed version set: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1041
    :cond_2
    :goto_0
    return v2

    .line 1038
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1039
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction is already present in rolled back version set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1041
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addRolledbackTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z
    .locals 1
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 1017
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->addRolledbackTx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v0

    return v0
.end method

.method public addRolledbackTx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 5
    .param p1, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    const/4 v1, 0x0

    .line 1050
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1052
    .local v0, "committed":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1053
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1054
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added transaction to rolled back version set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1056
    :cond_1
    const/4 v1, 0x1

    .line 1062
    :cond_2
    :goto_0
    return v1

    .line 1059
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1060
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transaction is already present in committed version set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs addSynchronizations([Lorg/apache/ignite/transactions/TransactionSynchronization;)V
    .locals 1
    .param p1, "sync"    # [Lorg/apache/ignite/transactions/TransactionSynchronization;

    .prologue
    .line 1705
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1709
    :goto_0
    return-void

    .line 1708
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->syncs:Ljava/util/Collection;

    invoke-static {v0, p1}, Lorg/apache/ignite/internal/util/typedef/F;->copy(Ljava/util/Collection;[Ljava/lang/Object;)Ljava/util/Collection;

    goto :goto_0
.end method

.method public awaitFinishAckAsync(Ljava/util/UUID;J)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p1, "rmtNodeId"    # Ljava/util/UUID;
    .param p2, "threadId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "J)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1531
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->finishSyncDisabled:Z

    if-eqz v0, :cond_0

    .line 1532
    const/4 v0, 0x0

    .line 1536
    :goto_0
    return-object v0

    .line 1534
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txFinishSync:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1536
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txFinishSync:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->awaitAckAsync(Ljava/util/UUID;J)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public beforeFinishRemote(Ljava/util/UUID;J)V
    .locals 2
    .param p1, "rmtNodeId"    # Ljava/util/UUID;
    .param p2, "threadId"    # J

    .prologue
    .line 1500
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->finishSyncDisabled:Z

    if-eqz v0, :cond_0

    .line 1506
    :goto_0
    return-void

    .line 1503
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txFinishSync:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1505
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txFinishSync:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->onFinishSend(Ljava/util/UUID;J)V

    goto :goto_0
.end method

.method public commitQueueSize()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->committedQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public commitTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 14
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 1171
    sget-boolean v8, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v8, :cond_0

    if-nez p1, :cond_0

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    .line 1172
    :cond_0
    sget-boolean v8, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v8, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v8

    sget-object v9, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v8, v9, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid transaction state for commit from tm [state="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", expected=COMMITTING, tx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 1175
    :cond_1
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1176
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Committing from TM [locNodeId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", tx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1178
    :cond_2
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->timeout()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 1179
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->removeTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 1181
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1182
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unregistered transaction with timeout processor: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1190
    :cond_3
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 1193
    .local v2, "committed":Ljava/lang/Boolean;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeSet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isSystemInvalidate()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1194
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->uncommitTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1196
    new-instance v8, Lorg/apache/ignite/IgniteException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Missing commit version (consider increasing IGNITE_MAX_COMPLETED_TX_COUNT system property) [ver="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", firstVer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->firstKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", lastVer="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->lastKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", tx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1201
    :cond_5
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->transactionMap(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v6

    .line 1203
    .local v6, "txIdMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-interface {v6, v8, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1205
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->processCompletedEntries(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1207
    instance-of v8, p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    if-eqz v8, :cond_6

    move-object v3, p1

    .line 1208
    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;

    .line 1210
    .local v3, "dhtTxLoc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->collectPendingVersions(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;)V

    .line 1214
    .end local v3    # "dhtTxLoc":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocal;
    :cond_6
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/ignite/internal/GridKernalContext;->dataStructures()Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->onTxCommitted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1217
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->groupLock()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1218
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->unlockGroupLocks(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1223
    :goto_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->pessimistic()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->readCommitted()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->groupLock()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1224
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->readEntries()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->unlockMultiple(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Iterable;)V

    .line 1227
    :cond_7
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->notifyEvitions(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1230
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->removeObsolete(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1233
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v8

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-interface {p1, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->endVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1236
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txConfig()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1237
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->decrementStartVersionCount(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1241
    :cond_8
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txConfig()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->enforceSerializable()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->isSafeToForget(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1242
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->committedQ:Ljava/util/Queue;

    invoke-interface {v8, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1245
    :cond_9
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->clearThreadMap(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1248
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->alternateVersions()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    .line 1249
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->alternateVersions()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 1250
    .local v7, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v7}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1220
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_a
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeEntries()Ljava/util/Collection;

    move-result-object v8

    invoke-direct {p0, p1, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->unlockMultiple(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Iterable;)V

    goto/16 :goto_0

    .line 1254
    :cond_b
    instance-of v8, p1, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;

    if-eqz v8, :cond_c

    move-object v8, p1

    .line 1255
    check-cast v8, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;

    invoke-interface {v8}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;->mappedVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    .line 1257
    .local v5, "mapped":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v5, :cond_c

    .line 1258
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->mappedVers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v8, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    .end local v5    # "mapped":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_c
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 1265
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->dht()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1266
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txMetrics()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->onTxCommit()V

    .line 1268
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->activeCacheIds()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_d
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1269
    .local v1, "cacheId":I
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v8, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 1271
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1273
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v8

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-virtual {v8, v10, v11}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onTxCommit(J)V

    goto :goto_2

    .line 1277
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v1    # "cacheId":I
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_e
    iget v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->slowTxWarnTimeout:I

    if-lez v8, :cond_f

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v8

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startTime()J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget v10, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->slowTxWarnTimeout:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_f

    .line 1279
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Slow transaction detected [tx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", slowTxWarnTimeout="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->slowTxWarnTimeout:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 1282
    :cond_f
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1283
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Committed from TM [locNodeId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", tx="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x5d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1287
    :cond_10
    :goto_3
    return-void

    .line 1285
    :cond_11
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1286
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Did not commit from TM (was already committed): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public committedVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;
    .locals 3
    .param p1, "min"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 978
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    invoke-virtual {v1, p1, v2}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    .line 981
    .local v0, "tail":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Boolean;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->copyOf(Ljava/util/Map;Z)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method public completedVersionsSize()I
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->size()I

    move-result v0

    return v0
.end method

.method public finishOptimisticTxOnRecovery(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Z)V
    .locals 5
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "commit"    # Z

    .prologue
    .line 1903
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1904
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finishing prepared transaction [tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", commit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1906
    :cond_0
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->RECOVERY_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->markFinalizing(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1907
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1908
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Will not try to commit prepared transaction (could not mark finalized): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1924
    :cond_1
    :goto_0
    return-void

    .line 1913
    :cond_2
    instance-of v1, p1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 1914
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;

    .line 1916
    .local v0, "rmtTx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;->doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1920
    .end local v0    # "rmtTx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;
    :cond_3
    if-eqz p2, :cond_4

    .line 1921
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;)V

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0

    .line 1923
    :cond_4
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    goto :goto_0
.end method

.method public finishPessimisticTxOnRecovery(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;)V
    .locals 12
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p2, "commitInfo"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;

    .prologue
    .line 1933
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->RECOVERY_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-interface {p1, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->markFinalizing(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1934
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v8}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1935
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Will not try to finish pessimistic transaction (could not mark as finalizing): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1988
    :cond_0
    :goto_0
    return-void

    .line 1940
    :cond_1
    instance-of v8, p1, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedTxRemoteAdapter;

    if-eqz v8, :cond_2

    move-object v6, p1

    .line 1941
    check-cast v6, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;

    .line 1943
    .local v6, "rmtTx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v6, v8, v9, v10, v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;->doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1950
    .end local v6    # "rmtTx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxRemoteEx;
    :cond_2
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->prepare()V

    .line 1952
    if-eqz p2, :cond_8

    .line 1953
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheCommittedTxInfo;->recoveryWrites()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1954
    .local v2, "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeMap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1956
    .local v7, "write":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v7, :cond_6

    .line 1957
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1959
    .local v0, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cleanCopy(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v5

    .line 1961
    .local v5, "recovered":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->detached()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1962
    :cond_4
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v9

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1964
    :cond_5
    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 1966
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeMap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v9

    invoke-interface {v8, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1983
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "recovered":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v7    # "write":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :catch_0
    move-exception v1

    .line 1984
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to prepare pessimistic transaction (will invalidate): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1986
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->salvageTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    goto/16 :goto_0

    .line 1972
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v7    # "write":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_6
    :try_start_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->readMap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 1974
    .local v4, "read":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-eqz v4, :cond_3

    .line 1975
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeMap()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v9

    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1978
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v4    # "read":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v7    # "write":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_7
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->commitAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v8

    new-instance v9, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;

    const/4 v10, 0x0

    invoke-direct {v9, p0, p1, v10}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommitListener;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;)V

    invoke-interface {v8, v9}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto/16 :goto_0

    .line 1981
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public finishSyncDisabled(Z)V
    .locals 0
    .param p1, "finishSyncDisabled"    # Z

    .prologue
    .line 1545
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->finishSyncDisabled:Z

    .line 1546
    return-void
.end method

.method public finishTxs(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 7
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$2;

    invoke-direct {v5, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$2;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)V

    invoke-direct {v1, v5}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>(Lorg/apache/ignite/lang/IgniteReducer;)V

    .line 524
    .local v1, "res":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txs()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 528
    .local v3, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    if-ne v5, v6, :cond_1

    .line 529
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v5

    if-lez v5, :cond_0

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v5

    invoke-virtual {v5, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v5

    if-gez v5, :cond_0

    .line 533
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->finishFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_0

    .line 535
    :cond_1
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/transactions/TransactionConcurrency;->OPTIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    if-ne v5, v6, :cond_0

    .line 538
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v2

    .line 539
    .local v2, "state":Lorg/apache/ignite/transactions/TransactionState;
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    .line 541
    .local v4, "txTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    sget-object v5, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v5, :cond_2

    sget-object v5, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v5, :cond_2

    sget-object v5, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v2, v5, :cond_0

    :cond_2
    sget-object v5, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->ZERO:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v4, v5}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v5

    if-gez v5, :cond_0

    .line 543
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->finishFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_0

    .line 548
    .end local v2    # "state":Lorg/apache/ignite/transactions/TransactionState;
    .end local v3    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v4    # "txTopVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_3
    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    .line 550
    return-object v1
.end method

.method public idMapSize()I
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public inUserTx()Z
    .locals 1

    .prologue
    .line 714
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->userTx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCompleted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z
    .locals 2
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 344
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public localTx()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 623
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 625
    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :goto_0
    return-object v0

    .restart local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public localTxForRecovery(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 4
    .param p1, "nearXidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "markFinalizing"    # Z
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1876
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 1878
    .local v1, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-nez v1, :cond_2

    .line 1880
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 1881
    .local v2, "txEx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1882
    if-eqz p2, :cond_1

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->RECOVERY_WAIT:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->markFinalizing(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1883
    :cond_1
    move-object v1, v2

    goto :goto_0

    .line 1890
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "txEx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1893
    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :goto_1
    return-object v1

    .restart local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public localTxx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 652
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    .line 654
    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :goto_0
    return-object v0

    .restart local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mappedVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 4
    .param p1, "from"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 599
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->mappedVers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 601
    .local v0, "to":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found mapped version [from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 604
    :cond_0
    return-object v0
.end method

.method public nearTx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 1
    .param p1, "txId"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 732
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->nearIdMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    return-object v0
.end method

.method public nearVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 2
    .param p1, "dhtVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 586
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 588
    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v0, :cond_0

    .line 589
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    .line 591
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newTx(ZZLorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Z)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .locals 20
    .param p1, "implicit"    # Z
    .param p2, "implicitSingle"    # Z
    .param p3, "sysCacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p5, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p6, "timeout"    # J
    .param p8, "invalidate"    # Z
    .param p9, "storeEnabled"    # Z
    .param p10, "txSize"    # I
    .param p11, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12, "partLock"    # Z

    .prologue
    .line 370
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 372
    :cond_0
    const/16 v17, 0x0

    .line 374
    .local v17, "subjId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskNameHash()I

    move-result v18

    .line 376
    .local v18, "taskNameHash":I
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    if-eqz p3, :cond_1

    const/4 v6, 0x1

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v7

    :goto_1
    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-wide/from16 v10, p6

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    move/from16 v16, p12

    invoke-direct/range {v2 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;ZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;ZLjava/util/UUID;I)V

    .line 393
    .local v2, "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onCreated(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    return-object v3

    .line 376
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxLocal;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    sget-object v7, Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;->SYSTEM_POOL:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    goto :goto_1
.end method

.method public onCreated(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 16
    .param p1, "cacheCtx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            "TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 401
    .local p2, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->transactionMap(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    .line 404
    .local v9, "txIdMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->isCompleted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 407
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 408
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attempt to create a completed transaction (will ignore): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 410
    :cond_0
    const/16 p2, 0x0

    .line 494
    .end local p2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;, "TT;"
    :cond_1
    :goto_0
    return-object p2

    .line 415
    .restart local p2    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;, "TT;"
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-interface {v9, v10, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .local v8, "t":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-nez v8, :cond_b

    .line 419
    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->dht()Z

    move-result v10

    if-nez v10, :cond_4

    .line 420
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v10

    if-nez v10, :cond_a

    .line 421
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->threadId()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v10, v11, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :cond_4
    :goto_1
    move-object/from16 v0, p2

    instance-of v10, v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;

    if-eqz v10, :cond_6

    move-object/from16 v4, p2

    .line 428
    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;

    .line 430
    .local v4, "mapped":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;
    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;->mappedVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    .line 432
    .local v2, "from":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v2, :cond_5

    .line 433
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->mappedVers:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 436
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Added transaction version mapping [from="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", to="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", tx="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 448
    .end local v2    # "from":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v4    # "mapped":Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txConfig()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 449
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v5, v10, v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;-><init>(ILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;)V

    .line 451
    .local v5, "next":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;
    const/4 v3, 0x1

    .line 453
    .local v3, "loop":Z
    :cond_7
    :goto_2
    if-eqz v3, :cond_8

    .line 454
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->startVerCnts:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v11

    invoke-interface {v10, v11, v5}, Ljava/util/concurrent/ConcurrentNavigableMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;

    .line 456
    .local v7, "prev":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;
    if-nez v7, :cond_d

    .line 484
    .end local v3    # "loop":Z
    .end local v5    # "next":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;
    .end local v7    # "prev":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;
    :cond_8
    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->timeout()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_9

    .line 485
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 488
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Registered transaction with timeout processor: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 491
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 492
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Transaction created: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->sysThreadMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v11, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->threadId()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v14

    const/4 v15, 0x0

    invoke-direct {v11, v12, v13, v14, v15}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$TxThreadKey;-><init>(JILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;)V

    move-object/from16 v0, p2

    invoke-interface {v10, v11, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 441
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 442
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attempt to create an existing transaction (will ignore) [newTx="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", existingTx="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 445
    :cond_c
    const/16 p2, 0x0

    goto/16 :goto_0

    .line 463
    .restart local v3    # "loop":Z
    .restart local v5    # "next":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;
    .restart local v7    # "prev":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;
    :cond_d
    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;->get()I

    move-result v6

    .line 465
    .local v6, "p":I
    sget-boolean v10, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v10, :cond_e

    if-gez v6, :cond_e

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10, v6}, Ljava/lang/AssertionError;-><init>(I)V

    throw v10

    .line 467
    :cond_e
    if-nez v6, :cond_f

    .line 468
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->startVerCnts:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v11

    invoke-interface {v10, v11, v7}, Ljava/util/concurrent/ConcurrentNavigableMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 469
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v10}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 470
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removed count from onCreated callback: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 475
    :cond_f
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v7, v6, v10}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;->compareAndSet(II)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 476
    const/4 v3, 0x0

    .line 478
    goto/16 :goto_2
.end method

.method public onFinishedRemote(Ljava/util/UUID;J)V
    .locals 2
    .param p1, "rmtNodeId"    # Ljava/util/UUID;
    .param p2, "threadId"    # J

    .prologue
    .line 1515
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->finishSyncDisabled:Z

    if-eqz v0, :cond_0

    .line 1521
    :goto_0
    return-void

    .line 1518
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txFinishSync:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1520
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txFinishSync:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;->onAckReceived(Ljava/util/UUID;J)V

    goto :goto_0
.end method

.method protected onKernalStart0()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 123
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;)V

    const/16 v4, 0xc

    new-array v5, v8, [I

    const/4 v6, 0x0

    const/16 v7, 0xb

    aput v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->addLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;I[I)V

    .line 139
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 140
    .local v1, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->dht()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->masterNodeIds()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->aliveAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 141
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 142
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remaining transaction from left node: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 144
    :cond_2
    sget-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->USER_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-direct {p0, v1, v8, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->salvageTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZLorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z

    goto :goto_0

    .line 147
    .end local v1    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_3
    return-void
.end method

.method public onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
    .locals 5
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "owner"    # Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .prologue
    const/16 v4, 0x5d

    .line 1466
    if-eqz p2, :cond_3

    .line 1467
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;

    .line 1469
    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;
    if-nez v0, :cond_0

    .line 1470
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->nearTx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    .end local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;

    .line 1472
    .restart local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;
    :cond_0
    if-eqz v0, :cond_4

    .line 1473
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->local()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1474
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1475
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found transaction for owner changed event [owner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", entry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1478
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z

    .line 1480
    const/4 v1, 0x1

    .line 1489
    .end local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;
    :goto_0
    return v1

    .line 1482
    .restart local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;
    :cond_2
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1483
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring local transaction for owner change event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1489
    .end local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1485
    .restart local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1486
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction not found for owner changed event [owner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", entry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onStarted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z
    .locals 3
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 561
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isRollbackOnly()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid transaction state [locId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 564
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->isCompleted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to start a completed transaction (will ignore): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 568
    :cond_1
    const/4 v0, 0x0

    .line 576
    :goto_0
    return v0

    .line 571
    :cond_2
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onTxStateChange(Lorg/apache/ignite/transactions/TransactionState;Lorg/apache/ignite/transactions/TransactionState;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 573
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 574
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 576
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTxStateChange(Lorg/apache/ignite/transactions/TransactionState;Lorg/apache/ignite/transactions/TransactionState;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 3
    .param p1, "prevState"    # Lorg/apache/ignite/transactions/TransactionState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "newState"    # Lorg/apache/ignite/transactions/TransactionState;
    .param p3, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 1735
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->syncs:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/transactions/TransactionSynchronization;

    .line 1736
    .local v1, "s":Lorg/apache/ignite/transactions/TransactionSynchronization;
    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->proxy()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxy;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lorg/apache/ignite/transactions/TransactionSynchronization;->onStateChanged(Lorg/apache/ignite/transactions/TransactionState;Lorg/apache/ignite/transactions/TransactionState;Lorg/apache/ignite/transactions/Transaction;)V

    goto :goto_0

    .line 1737
    .end local v1    # "s":Lorg/apache/ignite/transactions/TransactionSynchronization;
    :cond_0
    return-void
.end method

.method public prepareQueueSize()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->prepareQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public prepareTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 18
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v13

    sget-object v14, Lorg/apache/ignite/transactions/TransactionState;->MARKED_ROLLBACK:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v13, v14, :cond_1

    .line 751
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->timedOut()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 752
    new-instance v13, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Transaction timed out: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 754
    :cond_0
    new-instance v13, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Transaction is marked for rollback: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 757
    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->remainingTime()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_2

    .line 758
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->setRollbackOnly()Z

    .line 760
    new-instance v13, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Transaction timed out: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/ignite/internal/transactions/IgniteTxTimeoutCheckedException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 763
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txConfig()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v11

    .line 766
    .local v11, "txSerializableEnabled":Z
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->pessimistic()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 767
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->enforceSerializable()Z

    move-result v13

    if-eqz v13, :cond_10

    if-eqz v11, :cond_10

    .line 768
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->committedQ:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 769
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 771
    .local v2, "committedTx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    sget-boolean v13, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v13, :cond_4

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_4

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 774
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->isSafeToForget(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 775
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 783
    .end local v2    # "committedTx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_5
    if-eqz v11, :cond_e

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->optimistic()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->enforceSerializable()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 784
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->readSet()Ljava/util/Set;

    move-result-object v8

    .line 785
    .local v8, "readSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeSet()Ljava/util/Set;

    move-result-object v12

    .line 787
    .local v12, "writeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    .line 789
    .local v9, "startTn":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v13

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    .line 792
    .local v3, "finishTn":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->markPreparing()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 793
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->prepareQ:Ljava/util/Queue;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 798
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->committedQ:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 799
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 801
    .restart local v2    # "committedTx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    sget-boolean v13, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v13, :cond_8

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_8

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 804
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->isSafeToForget(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 805
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 810
    :cond_9
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->endVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v10

    .line 814
    .local v10, "tn":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-virtual {v10, v9}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->compareTo(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)I

    move-result v13

    if-lez v13, :cond_7

    invoke-virtual {v10, v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->compareTo(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)I

    move-result v13

    if-gtz v13, :cond_7

    .line 817
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->serializable()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 818
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeSet()Ljava/util/Set;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/util/Collection;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    invoke-static {v13, v14}, Lorg/apache/ignite/internal/util/lang/GridFunc;->intersects(Ljava/lang/Iterable;[Ljava/util/Collection;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 819
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->setRollbackOnly()Z

    .line 821
    new-instance v13, Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to prepare transaction (committed vs. read-set conflict): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 829
    .end local v2    # "committedTx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v10    # "tn":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->prepareQ:Ljava/util/Queue;

    invoke-interface {v13}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_b
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 830
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 832
    .local v6, "prepareTx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    move-object/from16 v0, p1

    if-eq v6, v0, :cond_b

    .line 837
    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->done()Z

    move-result v13

    if-eqz v13, :cond_c

    .line 838
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 840
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 841
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removed finished transaction from active queue: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 847
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v13

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nodeId()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v13

    if-nez v13, :cond_d

    .line 848
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 850
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->rollbackTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v13}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 853
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Removed and rolled back transaction because sender node left grid: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->txString(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 859
    :cond_d
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->serializable()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->isRollbackOnly()Z

    move-result v13

    if-nez v13, :cond_b

    .line 860
    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeSet()Ljava/util/Set;

    move-result-object v7

    .line 862
    .local v7, "prepareWriteSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/util/Collection;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v12, v13, v14

    invoke-static {v7, v13}, Lorg/apache/ignite/internal/util/lang/GridFunc;->intersects(Ljava/lang/Iterable;[Ljava/util/Collection;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 864
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 866
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->setRollbackOnly()Z

    .line 868
    new-instance v13, Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to prepare transaction (read-set/write-set conflict): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 876
    .end local v3    # "finishTn":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    .end local v6    # "prepareTx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .end local v7    # "prepareWriteSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .end local v8    # "readSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    .end local v9    # "startTn":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v12    # "writeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    :cond_e
    sget-boolean v13, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v13, :cond_f

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->optimistic()Z

    move-result v13

    if-nez v13, :cond_f

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v13

    if-eqz v13, :cond_f

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 878
    :cond_f
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->optimisticLockEntries()Ljava/util/Collection;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->lockMultiple(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Iterable;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 879
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->setRollbackOnly()Z

    .line 881
    new-instance v13, Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to prepare transaction (lock conflict): "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/ignite/internal/transactions/IgniteTxOptimisticCheckedException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 883
    :cond_10
    return-void
.end method

.method public printMemoryStats()V
    .locals 18

    .prologue
    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->committedQ:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 259
    .local v11, "firstTx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->committedQ:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v10

    .line 261
    .local v10, "committedSize":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->startVerCnts:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentNavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v15

    .line 263
    .local v15, "startVerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$AtomicInt;>;"
    const/4 v2, 0x0

    .line 264
    .local v2, "minStartVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const-wide/16 v12, 0x0

    .line 266
    .local v12, "dur":J
    const/16 v3, 0xbb8

    if-le v10, v3, :cond_2

    .line 267
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .end local v2    # "minStartVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const v3, 0x7fffffff

    const-wide v4, 0x7fffffffffffffffL

    const-wide v6, 0x7fffffffffffffffL

    const v8, 0x7fffffff

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;-><init>(IJJII)V

    .line 269
    .restart local v2    # "minStartVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    const/16 v16, 0x0

    .line 271
    .local v16, "stuck":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txs()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 272
    .local v17, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isLess(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    .line 274
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startTime()J

    move-result-wide v6

    sub-long v12, v4, v6

    .line 276
    move-object/from16 v16, v17

    goto :goto_0

    .line 279
    .end local v17    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stuck transaction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "stuck":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_2
    const-string v3, ">>> "

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> Transaction manager memory stats [grid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>   threadMapSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>   idMap [size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", minStartVer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dur="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>   committedQueue [size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", firstStartVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v11, :cond_3

    const-string v3, "null"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", firstEndVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v11, :cond_4

    const-string v3, "null"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>   prepareQueueSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->prepareQ:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>   startVerCntsSize [size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->startVerCnts:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", firstVer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>   completedVersSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/X;->println(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    return-void

    .line 286
    :cond_3
    invoke-interface {v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    goto/16 :goto_1

    :cond_4
    invoke-interface {v11}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->endVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    goto/16 :goto_2
.end method

.method public removeCommittedTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 3
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 1001
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 1002
    return-void
.end method

.method public varargs removeSynchronizations([Lorg/apache/ignite/transactions/TransactionSynchronization;)V
    .locals 3
    .param p1, "sync"    # [Lorg/apache/ignite/transactions/TransactionSynchronization;

    .prologue
    .line 1715
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1719
    :goto_0
    return-void

    .line 1718
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->syncs:Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->lose(Ljava/util/Collection;ZLjava/util/Collection;)Ljava/util/Collection;

    goto :goto_0
.end method

.method public resetContext()V
    .locals 2

    .prologue
    .line 1772
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadCtx:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1773
    return-void
.end method

.method public rollbackTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 10
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 1295
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1297
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1298
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rolling back from TM [locNodeId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", tx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1301
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->addRolledbackTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    .line 1303
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->transactionMap(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    .line 1305
    .local v3, "txIdMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-interface {v3, v5, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1307
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeEntries()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->unlockMultiple(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Iterable;)V

    .line 1310
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->pessimistic()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->readCommitted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1311
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->readEntries()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->unlockMultiple(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Iterable;)V

    .line 1314
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->notifyEvitions(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1317
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->removeObsolete(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1320
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txConfig()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1321
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->decrementStartVersionCount(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1324
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->clearThreadMap(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1327
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->alternateVersions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1328
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->alternateVersions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 1329
    .local v4, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1332
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_4
    instance-of v5, p1, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;

    if-eqz v5, :cond_5

    .line 1333
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->mappedVers:Ljava/util/concurrent/ConcurrentMap;

    move-object v5, p1

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;->mappedVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    :cond_5
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 1339
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->dht()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1340
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txMetrics()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionMetricsAdapter;->onTxRollback()V

    .line 1342
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->activeCacheIds()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1343
    .local v1, "cacheId":I
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 1345
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1347
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v5

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->startTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onTxRollback(J)V

    goto :goto_1

    .line 1351
    .end local v0    # "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .end local v1    # "cacheId":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1352
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rolled back from TM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1356
    :cond_8
    :goto_2
    return-void

    .line 1354
    :cond_9
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1355
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Did not rollback from TM (was already rolled back): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public rolledbackVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;
    .locals 3
    .param p1, "min"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 991
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    .line 994
    .local v0, "tail":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Boolean;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->copyOf(Ljava/util/Map;Z)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0
.end method

.method public salvageTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z
    .locals 2
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 170
    const/4 v0, 0x0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->USER_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->salvageTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZLorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z

    move-result v0

    return v0
.end method

.method public slowTxWarnTimeout()I
    .locals 1

    .prologue
    .line 1786
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->slowTxWarnTimeout:I

    return v0
.end method

.method public slowTxWarnTimeout(I)V
    .locals 0
    .param p1, "slowTxWarnTimeout"    # I

    .prologue
    .line 1793
    iput p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->slowTxWarnTimeout:I

    .line 1794
    return-void
.end method

.method protected start0()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txFinishSync:Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTxFinishSync;

    .line 153
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txHandler:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    .line 154
    return-void
.end method

.method public startVersionCountsSize()I
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->startVerCnts:Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentNavigableMap;->size()I

    move-result v0

    return v0
.end method

.method public synchronizations()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/transactions/TransactionSynchronization;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1725
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->syncs:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public threadLocalTx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Ljava/lang/Object;
    .locals 4
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 633
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 635
    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->local()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->dht()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->colocated()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->implicit()Z

    move-result v1

    if-nez v1, :cond_1

    .end local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :goto_0
    return-object v0

    .restart local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public threadMapSize()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method

.method public tx()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 643
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txContext()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    .line 645
    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v0, :cond_0

    .end local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :goto_0
    return-object v0

    .restart local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public tx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 1
    .param p1, "txId"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    return-object v0
.end method

.method public txContext(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 1
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 1743
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->threadCtx:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1744
    return-void
.end method

.method public txContextVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1763
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txContext()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    .line 1765
    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    goto :goto_0
.end method

.method public txHandler()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txHandler:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxHandler;

    return-object v0
.end method

.method public txs()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1779
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->nearIdMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->concat(ZLjava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public txsPreparedOrCommitted(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;I)Z
    .locals 11
    .param p1, "nearVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "txNum"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1804
    const/4 v3, 0x0

    .line 1806
    .local v3, "processedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txs()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 1807
    .local v5, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1808
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v4

    .line 1810
    .local v4, "state":Lorg/apache/ignite/transactions/TransactionState;
    sget-object v7, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v4, v7, :cond_1

    sget-object v7, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v4, v7, :cond_1

    sget-object v7, Lorg/apache/ignite/transactions/TransactionState;->COMMITTED:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v4, v7, :cond_2

    .line 1811
    :cond_1
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_8

    move v7, v8

    .line 1865
    .end local v4    # "state":Lorg/apache/ignite/transactions/TransactionState;
    .end local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :goto_1
    return v7

    .line 1815
    .restart local v4    # "state":Lorg/apache/ignite/transactions/TransactionState;
    .restart local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_2
    sget-object v7, Lorg/apache/ignite/transactions/TransactionState;->MARKED_ROLLBACK:Lorg/apache/ignite/transactions/TransactionState;

    invoke-interface {v5, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v7

    sget-object v10, Lorg/apache/ignite/transactions/TransactionState;->UNKNOWN:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v7, v10, :cond_5

    .line 1816
    :cond_3
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 1818
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1819
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction was not prepared (rolled back): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_4
    move v7, v9

    .line 1821
    goto :goto_1

    .line 1824
    :cond_5
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v7

    sget-object v10, Lorg/apache/ignite/transactions/TransactionState;->COMMITTED:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v7, v10, :cond_6

    .line 1825
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_8

    move v7, v8

    .line 1826
    goto :goto_1

    .line 1829
    :cond_6
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1830
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Transaction is not prepared: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_7
    move v7, v9

    .line 1832
    goto :goto_1

    .line 1837
    :cond_8
    if-nez v3, :cond_9

    .line 1838
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "processedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, p2, v7}, Ljava/util/HashSet;-><init>(IF)V

    .line 1840
    .restart local v3    # "processedVers":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_9
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1846
    .end local v4    # "state":Lorg/apache/ignite/transactions/TransactionState;
    .end local v5    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_a
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->completedVers:Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/util/GridBoundedConcurrentOrderedMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1847
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1850
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 1852
    .local v6, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v3, :cond_c

    invoke-interface {v3, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1855
    :cond_c
    instance-of v7, v6, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;

    if-eqz v7, :cond_b

    move-object v0, v6

    .line 1856
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;

    .line 1858
    .local v0, "commitVer":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;
    # getter for: Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;->nearVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;->access$600(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1859
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_b

    move v7, v8

    .line 1860
    goto/16 :goto_1

    .end local v0    # "commitVer":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager$CommittedVersion;
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Boolean;>;"
    .end local v6    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_d
    move v7, v9

    .line 1865
    goto/16 :goto_1
.end method

.method public txx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 1

    .prologue
    .line 662
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    return-object v0
.end method

.method public txx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 1
    .param p1, "txId"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 740
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    return-object v0
.end method

.method public uncommitTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V
    .locals 6
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .prologue
    .line 1364
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1366
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1367
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uncommiting from TM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1369
    :cond_1
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->transactionMap(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    .line 1371
    .local v1, "txIdMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1373
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->writeEntries()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->unlockMultiple(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Iterable;)V

    .line 1376
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->pessimistic()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->readCommitted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1377
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->readEntries()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->unlockMultiple(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/lang/Iterable;)V

    .line 1380
    :cond_2
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->notifyEvitions(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1383
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->txConfig()Lorg/apache/ignite/configuration/TransactionConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/TransactionConfiguration;->isTxSerializableEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1384
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->decrementStartVersionCount(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1387
    :cond_3
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->clearThreadMap(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1390
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->alternateVersions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1391
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->alternateVersions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 1392
    .local v2, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->idMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1395
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_4
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;

    if-eqz v3, :cond_5

    .line 1396
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->mappedVers:Ljava/util/concurrent/ConcurrentMap;

    move-object v3, p1

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheMappedVersion;->mappedVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    :cond_5
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->resetContext()V

    .line 1401
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1402
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uncommitted from TM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1406
    :cond_6
    :goto_1
    return-void

    .line 1404
    :cond_7
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1405
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did not uncommit from TM (was already committed or rolled back): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public userTx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 669
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txContext()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    .line 671
    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->user()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v2, v3, :cond_1

    move-object v1, v0

    .line 676
    :cond_0
    :goto_0
    return-object v1

    .line 674
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;J)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 676
    .restart local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->user()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v2, v3, :cond_0

    move-object v1, v0

    goto :goto_0
.end method

.method public userTx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .locals 4
    .param p1, "cctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 683
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    .line 685
    .local v0, "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->user()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v1, v2, :cond_0

    .end local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :goto_0
    return-object v0

    .restart local v0    # "tx":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public userTxx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;",
            ">()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 693
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->userTx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;

    return-object v0
.end method
