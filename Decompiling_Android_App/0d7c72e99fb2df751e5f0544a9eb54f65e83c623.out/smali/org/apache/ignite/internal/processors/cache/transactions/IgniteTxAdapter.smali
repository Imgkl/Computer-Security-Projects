.class public abstract Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;
.super Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;
.source "IgniteTxAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$2;,
        Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static log:Lorg/apache/ignite/IgniteLogger;

.field private static final logRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/IgniteLogger;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field protected cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<**>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private commitVer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation
.end field

.field protected concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final cond:Ljava/util/concurrent/locks/Condition;

.field protected endVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private finFut:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private finalizing:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;",
            ">;"
        }
    .end annotation
.end field

.field protected grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

.field protected implicit:Z
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected implicitSingle:Z
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected internal:Z

.field private invalidParts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile invalidate:Z

.field protected final isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected isolation:Lorg/apache/ignite/transactions/TransactionIsolation;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected loc:Z
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field protected nodeId:Ljava/util/UUID;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected onePhaseCommit:Z

.field private plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

.field private preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private proxy:Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field protected startTime:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected startVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private volatile state:Lorg/apache/ignite/transactions/TransactionState;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected storeEnabled:Z

.field protected subjId:Ljava/util/UUID;

.field protected syncCommit:Z

.field protected syncRollback:Z

.field private sys:Z

.field private sysInvalidate:Z

.field protected taskName:Ljava/lang/String;

.field protected taskNameHash:I

.field protected threadId:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private volatile timedOut:Z

.field protected timeout:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private topVer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ">;"
        }
    .end annotation
.end field

.field protected transform:Z

.field protected txNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation
.end field

.field protected txSize:I

.field protected writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;-><init>()V

    .line 91
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->startTime:J

    .line 114
    sget-object v0, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 118
    sget-object v0, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->commitVer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 156
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->NONE:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finalizing:Ljava/util/concurrent/atomic/AtomicReference;

    .line 162
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidParts:Ljava/util/Set;

    .line 172
    sget-object v0, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state:Lorg/apache/ignite/transactions/TransactionState;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finFut:Ljava/util/concurrent/atomic/AtomicReference;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 192
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->lock:Ljava/util/concurrent/locks/Lock;

    .line 195
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cond:Ljava/util/concurrent/locks/Condition;

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->storeEnabled:Z

    .line 221
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V
    .locals 5
    .param p2, "nodeId"    # Ljava/util/UUID;
    .param p3, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "startVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p5, "threadId"    # J
    .param p7, "sys"    # Z
    .param p8, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p9, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p10, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p11, "timeout"    # J
    .param p13, "txSize"    # I
    .param p14, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16, "taskNameHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<**>;",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "JZ",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            "Lorg/apache/ignite/transactions/TransactionConcurrency;",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "JI",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Ljava/util/UUID;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<**>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;-><init>()V

    .line 91
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->startTime:J

    .line 114
    sget-object v2, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 118
    sget-object v2, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 153
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->commitVer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 156
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->NONE:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finalizing:Ljava/util/concurrent/atomic/AtomicReference;

    .line 162
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidParts:Ljava/util/Set;

    .line 172
    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state:Lorg/apache/ignite/transactions/TransactionState;

    .line 185
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finFut:Ljava/util/concurrent/atomic/AtomicReference;

    .line 189
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 192
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->lock:Ljava/util/concurrent/locks/Lock;

    .line 195
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cond:Ljava/util/concurrent/locks/Condition;

    .line 210
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->storeEnabled:Z

    .line 314
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .line 315
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->nodeId:Ljava/util/UUID;

    .line 316
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->threadId:J

    .line 317
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 318
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->startVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 319
    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->sys:Z

    .line 320
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 321
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 322
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 323
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timeout:J

    .line 324
    move/from16 v0, p13

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->txSize:I

    .line 325
    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 326
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->subjId:Ljava/util/UUID;

    .line 327
    move/from16 v0, p16

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->taskNameHash:I

    .line 329
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->implicit:Z

    .line 330
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->implicitSingle:Z

    .line 331
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->loc:Z

    .line 333
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v3, p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    sput-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 334
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZZZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;JZZILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V
    .locals 4
    .param p2, "xidVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "implicit"    # Z
    .param p4, "implicitSingle"    # Z
    .param p5, "loc"    # Z
    .param p6, "sys"    # Z
    .param p7, "plc"    # Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .param p8, "concurrency"    # Lorg/apache/ignite/transactions/TransactionConcurrency;
    .param p9, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p10, "timeout"    # J
    .param p12, "invalidate"    # Z
    .param p13, "storeEnabled"    # Z
    .param p14, "txSize"    # I
    .param p15, "grpLockKey"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17, "taskNameHash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext",
            "<**>;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "ZZZZ",
            "Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;",
            "Lorg/apache/ignite/transactions/TransactionConcurrency;",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "JZZI",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;",
            "Ljava/util/UUID;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "cctx":Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext<**>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridMetadataAwareAdapter;-><init>()V

    .line 91
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->startTime:J

    .line 114
    sget-object v2, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 118
    sget-object v2, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 153
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->commitVer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 156
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 159
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->NONE:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finalizing:Ljava/util/concurrent/atomic/AtomicReference;

    .line 162
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 165
    new-instance v2, Lorg/apache/ignite/internal/util/GridLeanSet;

    invoke-direct {v2}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidParts:Ljava/util/Set;

    .line 172
    sget-object v2, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state:Lorg/apache/ignite/transactions/TransactionState;

    .line 185
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finFut:Ljava/util/concurrent/atomic/AtomicReference;

    .line 189
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v3, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 192
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->lock:Ljava/util/concurrent/locks/Lock;

    .line 195
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cond:Ljava/util/concurrent/locks/Condition;

    .line 210
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->storeEnabled:Z

    .line 255
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 256
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 258
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    .line 259
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 260
    iput-boolean p3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->implicit:Z

    .line 261
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->implicitSingle:Z

    .line 262
    iput-boolean p5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->loc:Z

    .line 263
    iput-boolean p6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->sys:Z

    .line 264
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    .line 265
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 266
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 267
    iput-wide p10, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timeout:J

    .line 268
    move/from16 v0, p12

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidate:Z

    .line 269
    move/from16 v0, p13

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->storeEnabled:Z

    .line 270
    move/from16 v0, p14

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->txSize:I

    .line 271
    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .line 272
    move-object/from16 v0, p16

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->subjId:Ljava/util/UUID;

    .line 273
    move/from16 v0, p17

    iput v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->taskNameHash:I

    .line 275
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->last()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->startVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 277
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->nodeId:Ljava/util/UUID;

    .line 279
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->threadId:J

    .line 281
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->logRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v3, p0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->logger(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v2

    sput-object v2, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 282
    return-void
.end method

.method private state(Lorg/apache/ignite/transactions/TransactionState;Z)Z
    .locals 9
    .param p1, "state"    # Lorg/apache/ignite/transactions/TransactionState;
    .param p2, "timedOut"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1014
    const/4 v3, 0x0

    .line 1018
    .local v3, "valid":Z
    const/4 v1, 0x0

    .line 1020
    .local v1, "notify":Z
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->lock()V

    .line 1023
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state:Lorg/apache/ignite/transactions/TransactionState;

    .line 1025
    .local v2, "prev":Lorg/apache/ignite/transactions/TransactionState;
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$2;->$SwitchMap$org$apache$ignite$transactions$TransactionState:[I

    invoke-virtual {p1}, Lorg/apache/ignite/transactions/TransactionState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1089
    :goto_0
    if-eqz v3, :cond_13

    .line 1090
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state:Lorg/apache/ignite/transactions/TransactionState;

    .line 1091
    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timedOut:Z

    .line 1093
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1094
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changed transaction state [prev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->unlock()V

    .line 1109
    if-eqz v1, :cond_2

    .line 1110
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 1112
    .local v0, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    if-eqz v0, :cond_2

    .line 1113
    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z

    .line 1116
    .end local v0    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_2
    if-eqz v3, :cond_4

    .line 1118
    sget-object v4, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    if-eq p1, v4, :cond_3

    .line 1119
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->seal()V

    .line 1121
    :cond_3
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    invoke-virtual {v4, v2, p1, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onTxStateChange(Lorg/apache/ignite/transactions/TransactionState;Lorg/apache/ignite/transactions/TransactionState;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 1124
    :cond_4
    return v3

    .line 1027
    :pswitch_0
    const/4 v3, 0x0

    .line 1029
    goto :goto_0

    .line 1032
    :pswitch_1
    :try_start_1
    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v2, v6, :cond_5

    move v3, v4

    .line 1034
    :goto_2
    goto :goto_0

    :cond_5
    move v3, v5

    .line 1032
    goto :goto_2

    .line 1037
    :pswitch_2
    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v2, v6, :cond_6

    move v3, v4

    .line 1039
    :goto_3
    goto :goto_0

    :cond_6
    move v3, v5

    .line 1037
    goto :goto_3

    .line 1042
    :pswitch_3
    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v2, v6, :cond_7

    move v3, v4

    .line 1044
    :goto_4
    goto/16 :goto_0

    :cond_7
    move v3, v5

    .line 1042
    goto :goto_4

    .line 1048
    :pswitch_4
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1049
    const/4 v1, 0x1

    .line 1051
    :cond_8
    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->ROLLING_BACK:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v6, :cond_9

    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v2, v6, :cond_a

    :cond_9
    move v3, v4

    .line 1053
    :goto_5
    goto/16 :goto_0

    :cond_a
    move v3, v5

    .line 1051
    goto :goto_5

    .line 1057
    :pswitch_5
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1058
    const/4 v1, 0x1

    .line 1060
    :cond_b
    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v2, v6, :cond_c

    move v3, v4

    .line 1062
    :goto_6
    goto/16 :goto_0

    :cond_c
    move v3, v5

    .line 1060
    goto :goto_6

    .line 1066
    :pswitch_6
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1067
    const/4 v1, 0x1

    .line 1069
    :cond_d
    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->ROLLING_BACK:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v2, v6, :cond_e

    move v3, v4

    .line 1071
    :goto_7
    goto/16 :goto_0

    :cond_e
    move v3, v5

    .line 1069
    goto :goto_7

    .line 1075
    :pswitch_7
    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v6, :cond_f

    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v6, :cond_f

    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v6, :cond_f

    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v2, v6, :cond_10

    :cond_f
    move v3, v4

    .line 1077
    :goto_8
    goto/16 :goto_0

    :cond_10
    move v3, v5

    .line 1075
    goto :goto_8

    .line 1081
    :pswitch_8
    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->ACTIVE:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v6, :cond_11

    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->MARKED_ROLLBACK:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v6, :cond_11

    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->PREPARING:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v6, :cond_11

    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->PREPARED:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v2, v6, :cond_11

    sget-object v6, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v2, v6, :cond_12

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->local()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->dht()Z

    move-result v6

    if-nez v6, :cond_12

    :cond_11
    move v3, v4

    :goto_9
    goto/16 :goto_0

    :cond_12
    move v3, v5

    goto :goto_9

    .line 1100
    :cond_13
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1101
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid transaction state transition [invalid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cur="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1106
    .end local v2    # "prev":Lorg/apache/ignite/transactions/TransactionState;
    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->unlock()V

    throw v4

    .line 1025
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public addInvalidPartition(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V
    .locals 3
    .param p2, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;I)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p1, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidParts:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 706
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 707
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added invalid partition for transaction [part="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 708
    :cond_0
    return-void
.end method

.method protected applyTransformClosures(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Z)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 29
    .param p1, "txEntry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .param p2, "metrics"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            "Z)",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1224
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v17

    .line 1226
    .local v17, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez v17, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1228
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isSystemInvalidate()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1229
    invoke-virtual/range {v17 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->RELOAD:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    :goto_0
    const/4 v6, 0x0

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v5

    .line 1300
    :goto_1
    return-object v5

    .line 1229
    :cond_1
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto :goto_0

    .line 1231
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1232
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v5

    goto :goto_1

    .line 1235
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->gridEvents()Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->isRecordable(I)Z

    move-result v11

    .line 1237
    .local v11, "recordEvt":Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->hasValue()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->value()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v8

    .line 1251
    .local v8, "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_2
    const/16 v22, 0x0

    .line 1253
    .local v22, "modified":Z
    const/16 v28, 0x0

    .line 1255
    .local v28, "val":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 1257
    .local v21, "key":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    move-object/from16 v7, v21

    move-object/from16 v9, v28

    .end local v21    # "key":Ljava/lang/Object;
    .end local v28    # "val":Ljava/lang/Object;
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/apache/ignite/internal/util/typedef/T2;

    .line 1258
    .local v25, "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;"
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-direct/range {v4 .. v9}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1262
    .local v4, "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_1
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljavax/cache/processor/EntryProcessor;

    .line 1264
    .local v24, "processor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual/range {v25 .. v25}, Lorg/apache/ignite/internal/util/typedef/T2;->get2()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object/from16 v0, v24

    invoke-interface {v0, v4, v5}, Ljavax/cache/processor/EntryProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->getValue()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v28

    .line 1268
    .restart local v28    # "val":Ljava/lang/Object;
    :try_start_2
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->key()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v21

    .restart local v21    # "key":Ljava/lang/Object;
    move-object/from16 v7, v21

    move-object/from16 v9, v28

    .line 1274
    .end local v21    # "key":Ljava/lang/Object;
    .end local v24    # "processor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v28    # "val":Ljava/lang/Object;
    :goto_4
    :try_start_3
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->modified()Z

    move-result v5

    or-int v22, v22, v5

    .line 1275
    goto :goto_3

    .line 1237
    .end local v4    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v8    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "modified":Z
    .end local v25    # "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->subjId:Ljava/util/UUID;

    if-eqz v11, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->entryProcessors()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/util/typedef/T2;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/util/typedef/T2;->get1()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/cache/processor/EntryProcessor;

    move-object v14, v5

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v5, p0

    move/from16 v10, p2

    invoke-interface/range {v4 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v8

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    .line 1277
    .restart local v8    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v22    # "modified":Z
    :cond_6
    if-eqz v22, :cond_7

    .line 1278
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v8

    .line 1280
    :cond_7
    if-eqz v22, :cond_a

    if-nez v9, :cond_9

    sget-object v23, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 1282
    .local v23, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :goto_6
    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, v23

    if-ne v0, v5, :cond_8

    .line 1283
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryForTxEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v19

    .line 1285
    .local v19, "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    if-eqz v19, :cond_8

    .line 1286
    invoke-interface/range {v19 .. v19}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForAccess()Ljavax/cache/expiry/Duration;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v26

    .line 1288
    .local v26, "ttl":J
    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl(J)V

    .line 1290
    const-wide/16 v6, -0x2

    cmp-long v5, v26, v6

    if-nez v5, :cond_8

    .line 1291
    sget-object v23, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 1295
    .end local v19    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v26    # "ttl":J
    :cond_8
    move-object/from16 v0, v23

    invoke-static {v0, v8}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v5

    goto/16 :goto_1

    .line 1280
    .end local v23    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :cond_9
    sget-object v23, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto :goto_6

    :cond_a
    sget-object v23, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 1297
    .end local v8    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v11    # "recordEvt":Z
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v22    # "modified":Z
    :catch_0
    move-exception v18

    .line 1298
    .local v18, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_b

    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Empty filter failed for innerGet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 1300
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1270
    .end local v18    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    .restart local v4    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v8    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v11    # "recordEvt":Z
    .restart local v20    # "i$":Ljava/util/Iterator;
    .restart local v22    # "modified":Z
    .restart local v25    # "t":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;[Ljava/lang/Object;>;"
    :catch_1
    move-exception v5

    goto/16 :goto_4

    .restart local v24    # "processor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v28    # "val":Ljava/lang/Object;
    :catch_2
    move-exception v5

    move-object/from16 v9, v28

    goto/16 :goto_4
.end method

.method protected awaitCompletion()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 902
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->lock()V

    .line 905
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->done()Z

    move-result v1

    if-nez v1, :cond_0

    .line 906
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->awaitSignal()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 911
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->done()Z

    move-result v1

    if-nez v1, :cond_1

    .line 912
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got interrupted while waiting for transaction to complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 915
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->unlock()V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->unlock()V

    .line 917
    :goto_1
    return-void

    .line 915
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->unlock()V

    goto :goto_1
.end method

.method protected final awaitSignal()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 372
    return-void
.end method

.method protected checkInternal(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Z
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    const/4 v0, 0x1

    .line 929
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->internal()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 930
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->internal:Z

    .line 935
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 877
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v0

    .line 879
    .local v0, "state":Lorg/apache/ignite/transactions/TransactionState;
    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->ROLLING_BACK:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->ROLLED_BACK:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->COMMITTED:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v0, v1, :cond_0

    .line 880
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->rollback()V

    .line 882
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->awaitCompletion()V

    .line 883
    return-void
.end method

.method public colocated()Z
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    return v0
.end method

.method public commitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 852
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->initCommitVersion()V

    .line 854
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->commitVer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public commitVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    .locals 2
    .param p1, "commitVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 862
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->commitVer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public completedVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p1, "base"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 894
    .local p2, "committed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .local p3, "txs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    return-void
.end method

.method public concurrency()Lorg/apache/ignite/transactions/TransactionConcurrency;
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    return-object v0
.end method

.method protected conflictResolve(Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 16
    .param p1, "op"    # Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .param p2, "txEntry"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .param p3, "newVal"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p4, "newVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p5, "old"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 1335
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1338
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->ttl()J

    move-result-wide v6

    .line 1339
    .local v6, "newTtl":J
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->conflictExpireTime()J

    move-result-wide v8

    .line 1342
    .local v8, "newExpireTime":J
    const-wide/16 v14, -0x1

    cmp-long v4, v6, v14

    if-nez v4, :cond_1

    .line 1343
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiryForTxEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;)Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v11

    .line 1345
    .local v11, "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    if-eqz v11, :cond_1

    .line 1346
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_5

    .line 1347
    invoke-interface {v11}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForCreation()Ljavax/cache/expiry/Duration;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v6

    .line 1354
    .end local v11    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_1
    :goto_0
    const-wide/16 v14, -0x2

    cmp-long v4, v6, v14

    if-nez v4, :cond_2

    .line 1355
    sget-object p1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 1357
    const-wide/16 v6, 0x0

    .line 1361
    :cond_2
    const-wide/16 v14, -0x1

    cmp-long v4, v6, v14

    if-nez v4, :cond_3

    .line 1362
    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isNewLocked()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1363
    const-wide/16 v6, 0x0

    .line 1371
    :cond_3
    :goto_1
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_7

    const-wide/16 v14, -0x2

    cmp-long v4, v6, v14

    if-eqz v4, :cond_4

    const-wide/16 v14, -0x1

    cmp-long v4, v6, v14

    if-nez v4, :cond_7

    :cond_4
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1348
    .restart local v11    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_5
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_1

    .line 1349
    invoke-interface {v11}, Ljavax/cache/expiry/ExpiryPolicy;->getExpiryForUpdate()Ljavax/cache/expiry/Duration;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toTtl(Ljavax/cache/expiry/Duration;)J

    move-result-wide v6

    goto :goto_0

    .line 1365
    .end local v11    # "expiry":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_6
    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->rawTtl()J

    move-result-wide v6

    .line 1366
    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->rawExpireTime()J

    move-result-wide v8

    goto :goto_1

    .line 1374
    :cond_7
    const-wide/16 v14, -0x1

    cmp-long v4, v8, v14

    if-nez v4, :cond_8

    .line 1375
    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->toExpireTime(J)J

    move-result-wide v8

    .line 1378
    :cond_8
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_9

    const-wide/16 v14, -0x1

    cmp-long v4, v8, v14

    if-nez v4, :cond_9

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1381
    :cond_9
    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->versionedEntry()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;

    move-result-object v12

    .line 1384
    .local v12, "oldEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    const/4 v10, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v4, v10}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v5

    .line 1386
    .local v5, "newVal0":Ljava/lang/Object;
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;

    invoke-interface {v12}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;->key()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v10, p4

    invoke-direct/range {v3 .. v10}, Lorg/apache/ignite/internal/processors/cache/version/GridCachePlainVersionedEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1393
    .local v3, "newEntry":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;
    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v4

    const/4 v10, 0x0

    invoke-virtual {v4, v12, v3, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->conflictResolve(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntryEx;Z)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;

    move-result-object v2

    .line 1395
    .local v2, "ctx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isMerge()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1396
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->mergeValue()Ljava/lang/Object;

    move-result-object v13

    .line 1398
    .local v13, "resVal":Ljava/lang/Object;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_a

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_c

    :cond_a
    if-nez v13, :cond_c

    .line 1399
    sget-object p1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 1404
    .end local v13    # "resVal":Ljava/lang/Object;
    :cond_b
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v4

    return-object v4

    .line 1400
    .restart local v13    # "resVal":Ljava/lang/Object;
    :cond_c
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_b

    if-eqz v13, :cond_b

    .line 1401
    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isNewLocked()Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object p1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->CREATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    :goto_3
    goto :goto_2

    :cond_d
    sget-object p1, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto :goto_3
.end method

.method public dht()Z
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public done()Z
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public endTime()J
    .locals 10

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    .line 1159
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timeout:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    move-wide v0, v2

    .line 1161
    .local v0, "endTime":J
    :goto_0
    cmp-long v4, v0, v8

    if-lez v4, :cond_2

    .end local v0    # "endTime":J
    :cond_0
    :goto_1
    return-wide v0

    .line 1159
    :cond_1
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->startTime:J

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timeout:J

    add-long v0, v4, v6

    goto :goto_0

    .line 1161
    .restart local v0    # "endTime":J
    :cond_2
    cmp-long v4, v0, v8

    if-gez v4, :cond_0

    move-wide v0, v2

    goto :goto_1
.end method

.method public endVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->endVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public endVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0
    .param p1, "endVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 1139
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->endVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 1140
    return-void
.end method

.method public enforceSerializable()Z
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1538
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    check-cast p1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected evictNearEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Z)Z
    .locals 4
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .param p2, "primaryOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1454
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1456
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isNearLocallyMapped(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1457
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1459
    .local v0, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    instance-of v1, v0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheEntry;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid cache entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 1461
    :cond_1
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1462
    sget-object v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evicting dht-local entry from near cache [entry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1464
    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1465
    const/4 v1, 0x1

    .line 1468
    .end local v0    # "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalizationStatus()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finalizing:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    return-object v0
.end method

.method public finishFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 985
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 987
    .local v0, "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    if-nez v0, :cond_0

    .line 988
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$1;

    .end local v0    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;)V

    .line 994
    .restart local v0    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finFut:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 995
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finFut:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    check-cast v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    .line 998
    .restart local v0    # "fut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;>;"
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1000
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1001
    invoke-virtual {v0, p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z

    .line 1003
    :cond_2
    return-object v0
.end method

.method public groupLock()Z
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public groupLockEntry()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .locals 1

    .prologue
    .line 488
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v0

    return-object v0
.end method

.method public groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->grpLockKey:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    return-object v0
.end method

.method public hasTransforms()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->transform:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1543
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->hashCode()I

    move-result v0

    return v0
.end method

.method public implicit()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->implicit:Z

    return v0
.end method

.method public implicitSingle()Z
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->implicitSingle:Z

    return v0
.end method

.method public initCommitVersion()V
    .locals 3

    .prologue
    .line 869
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->commitVer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 870
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->commitVer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 871
    :cond_0
    return-void
.end method

.method public internal()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->internal:Z

    return v0
.end method

.method public invalidPartitions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidParts:Ljava/util/Set;

    return-object v0
.end method

.method public invalidate(Z)V
    .locals 3
    .param p1, "invalidate"    # Z

    .prologue
    .line 1176
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->dht()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1177
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot change invalidation flag after transaction has started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1179
    :cond_0
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidate:Z

    .line 1180
    return-void
.end method

.method public ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->plc:Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    return-object v0
.end method

.method public isInvalidate()Z
    .locals 1

    .prologue
    .line 1184
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidate:Z

    return v0
.end method

.method protected isNearLocallyMapped(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;Z)Z
    .locals 9
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .param p2, "primaryOnly"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1413
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    .line 1415
    .local v1, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isNear()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1444
    :cond_0
    :goto_0
    return v6

    .line 1420
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->nodeId()Ljava/util/UUID;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->local()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->nodeId:Ljava/util/UUID;

    .line 1422
    .local v3, "nodeId":Ljava/util/UUID;
    :goto_1
    if-eqz v3, :cond_4

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1423
    const/4 v6, 0x1

    goto :goto_0

    .line 1420
    .end local v3    # "nodeId":Ljava/util/UUID;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->nodeId()Ljava/util/UUID;

    move-result-object v3

    goto :goto_1

    .line 1425
    .restart local v3    # "nodeId":Ljava/util/UUID;
    :cond_4
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    .line 1427
    .local v2, "cached":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v4

    .line 1429
    .local v4, "part":I
    :goto_2
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;

    move-result-object v0

    .line 1431
    .local v0, "affNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-static {v0, v7}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {p1, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->locallyMapped(Z)V

    .line 1433
    if-eqz p2, :cond_8

    .line 1434
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1436
    .local v5, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v5, :cond_5

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1439
    :cond_5
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v6, :cond_7

    if-nez v5, :cond_7

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Primary node is null for affinity nodes: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 1427
    .end local v0    # "affNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v4    # "part":I
    .end local v5    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_6
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v4

    goto :goto_2

    .line 1441
    .restart local v0    # "affNodes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .restart local v4    # "part":I
    .restart local v5    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_7
    invoke-interface {v5}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v6

    goto/16 :goto_0

    .line 1444
    .end local v5    # "primary":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_8
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->locallyMapped()Z

    move-result v6

    goto/16 :goto_0
.end method

.method public isRollbackOnly()Z
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state:Lorg/apache/ignite/transactions/TransactionState;

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->MARKED_ROLLBACK:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state:Lorg/apache/ignite/transactions/TransactionState;

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->ROLLING_BACK:Lorg/apache/ignite/transactions/TransactionState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state:Lorg/apache/ignite/transactions/TransactionState;

    sget-object v1, Lorg/apache/ignite/transactions/TransactionState;->ROLLED_BACK:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isStarted()Z
.end method

.method public isSystemInvalidate()Z
    .locals 1

    .prologue
    .line 1189
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->sysInvalidate:Z

    return v0
.end method

.method public isolation()Lorg/apache/ignite/transactions/TransactionIsolation;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    return-object v0
.end method

.method public local()Z
    .locals 1

    .prologue
    .line 640
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->loc:Z

    return v0
.end method

.method public localResult()Z
    .locals 2

    .prologue
    .line 338
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->originatingNodeId()Ljava/util/UUID;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 340
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->originatingNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final lock()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 349
    return-void
.end method

.method protected lockTimeout()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 741
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->remainingTime()J

    move-result-wide v0

    .line 743
    .local v0, "timeout":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    move-wide v0, v2

    .end local v0    # "timeout":J
    :cond_0
    :goto_0
    return-wide v0

    .restart local v0    # "timeout":J
    :cond_1
    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected log()Lorg/apache/ignite/IgniteLogger;
    .locals 1

    .prologue
    .line 620
    sget-object v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method public markFinalizing(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;)Z
    .locals 7
    .param p1, "status"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 550
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$2;->$SwitchMap$org$apache$ignite$internal$processors$cache$transactions$IgniteInternalTx$FinalizationStatus:[I

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 573
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set finalization status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 552
    :pswitch_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finalizing:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->NONE:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->USER_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 577
    .local v2, "res":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 578
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 579
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Marked transaction as finalized: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 586
    :cond_0
    :goto_1
    return v2

    .line 557
    .end local v2    # "res":Z
    :pswitch_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finalizing:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->NONE:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->RECOVERY_WAIT:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 559
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finalizing:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    .line 561
    .local v0, "cur":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->RECOVERY_WAIT:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    if-eq v0, v4, :cond_1

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->RECOVERY_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    if-ne v0, v4, :cond_2

    :cond_1
    move v2, v3

    .line 563
    .restart local v2    # "res":Z
    :cond_2
    goto :goto_0

    .line 566
    .end local v0    # "cur":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;
    .end local v2    # "res":Z
    :pswitch_2
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finalizing:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    .line 568
    .local v1, "old":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;->USER_FINISH:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;

    if-eq v1, v4, :cond_3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finalizing:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 570
    .restart local v2    # "res":Z
    :cond_3
    goto :goto_0

    .line 582
    .end local v1    # "old":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx$FinalizationStatus;
    :cond_4
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 583
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transaction was not marked finalized: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public markPreparing()Z
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->preparing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    return v0
.end method

.method public near()Z
    .locals 1

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method public nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1211
    const/4 v0, 0x0

    return-object v0
.end method

.method public needsCompletedVersions()Z
    .locals 1

    .prologue
    .line 887
    const/4 v0, 0x0

    return v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public onTimeout()V
    .locals 2

    .prologue
    .line 1166
    sget-object v0, Lorg/apache/ignite/transactions/TransactionState;->MARKED_ROLLBACK:Lorg/apache/ignite/transactions/TransactionState;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;Z)Z

    .line 1167
    return-void
.end method

.method public onePhaseCommit(Z)V
    .locals 0
    .param p1, "onePhaseCommit"    # Z

    .prologue
    .line 942
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->onePhaseCommit:Z

    .line 943
    return-void
.end method

.method public onePhaseCommit()Z
    .locals 1

    .prologue
    .line 949
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->onePhaseCommit:Z

    return v0
.end method

.method public optimistic()Z
    .locals 2

    .prologue
    .line 954
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v1, Lorg/apache/ignite/transactions/TransactionConcurrency;->OPTIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public optimisticLockEntries()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 389
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->groupLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 390
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->writeEntries()Ljava/util/Collection;

    move-result-object v1

    .line 409
    :goto_0
    return-object v1

    .line 392
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidParts:Ljava/util/Set;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 393
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidParts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only one partition expected for group lock transaction [tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", invalidParts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidParts:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 395
    :cond_1
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->groupLockEntry()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group lock key should be rejected [tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", groupLockEntry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->groupLockEntry()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 397
    :cond_2
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->writeMap()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All entries should be rejected for group lock transaction [tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", writes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->writeMap()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 400
    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    .line 403
    :cond_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->groupLockEntry()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v0

    .line 406
    .local v0, "grpLockEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->near()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->local()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group lock entry was not enlisted into transaction [tx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", grpLockKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 409
    :cond_6
    if-nez v0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public otherNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    return-object v0
.end method

.method public ownedVersion(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    .prologue
    .line 712
    const/4 v0, 0x0

    return-object v0
.end method

.method public ownsLock(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 8
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 791
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 793
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v2

    .line 795
    .local v2, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 797
    .local v1, "explicit":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->groupLock()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not have group-locked tx entries in non-group-lock transactions [txEntry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 795
    .end local v1    # "explicit":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    goto :goto_0

    .line 800
    .restart local v1    # "explicit":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->local()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->threadId()J

    move-result-wide v6

    invoke-interface {p1, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedByThread(J)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedBy(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    return v3

    :cond_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->hasLockCandidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedBy(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method public ownsLockUnsafe(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)Z
    .locals 8
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 810
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v0

    .line 812
    .local v0, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->txKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v2

    .line 814
    .local v2, "txEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 816
    .local v1, "explicit":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->groupLockEntry()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->groupLock()Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not have group-locked tx entries in non-group-lock transactions [txEntry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 814
    .end local v1    # "explicit":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_0
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->explicitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    goto :goto_0

    .line 819
    .restart local v1    # "explicit":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->local()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDht()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->threadId()J

    move-result-wide v6

    invoke-interface {p1, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedByThreadUnsafe(J)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_3

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedByUnsafe(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    return v3

    :cond_4
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->hasLockCandidateUnsafe(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedByUnsafe(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method public pessimistic()Z
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    sget-object v1, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public proxy()Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxy;
    .locals 3

    .prologue
    .line 1530
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->proxy:Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;

    if-nez v0, :cond_0

    .line 1531
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Z)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->proxy:Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;

    .line 1533
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->proxy:Lorg/apache/ignite/internal/processors/cache/transactions/TransactionProxyImpl;

    return-object v0
.end method

.method public readCommitted()Z
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    sget-object v1, Lorg/apache/ignite/transactions/TransactionIsolation;->READ_COMMITTED:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1490
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->readExternalMeta(Ljava/io/ObjectInput;)V

    .line 1492
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 1493
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidate:Z

    .line 1494
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timeout:J

    .line 1495
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->threadId:J

    .line 1496
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->startTime:J

    .line 1498
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->nodeId:Ljava/util/UUID;

    .line 1500
    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/transactions/TransactionIsolation;->fromOrdinal(I)Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    .line 1501
    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/transactions/TransactionConcurrency;->fromOrdinal(I)Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    .line 1503
    invoke-interface {p1}, Ljava/io/ObjectInput;->read()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/transactions/TransactionState;->fromOrdinal(I)Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state:Lorg/apache/ignite/transactions/TransactionState;

    .line 1504
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1513
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->asGridUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->nodeId:Ljava/util/UUID;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->threadId:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->startTime:J

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidate:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->implicit:Z

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timeout:J

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isRollbackOnly()Z

    move-result v17

    invoke-direct/range {v3 .. v17}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$TxShadow;-><init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;JJLorg/apache/ignite/transactions/TransactionIsolation;Lorg/apache/ignite/transactions/TransactionConcurrency;ZZJLorg/apache/ignite/transactions/TransactionState;Z)V

    return-object v3
.end method

.method public remainingTime()J
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    .line 726
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timeout()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_1

    .line 727
    const-wide/16 v0, -0x1

    .line 734
    :cond_0
    :goto_0
    return-wide v0

    .line 729
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timeout()J

    move-result-wide v4

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->startTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    sub-long v0, v4, v6

    .line 731
    .local v0, "timeLeft":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 732
    goto :goto_0
.end method

.method public repeatableRead()Z
    .locals 2

    .prologue
    .line 969
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    sget-object v1, Lorg/apache/ignite/transactions/TransactionIsolation;->REPEATABLE_READ:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replicated()Z
    .locals 1

    .prologue
    .line 660
    const/4 v0, 0x0

    return v0
.end method

.method public resolveTaskName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1309
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->taskName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->taskName:Ljava/lang/String;

    .line 1312
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->taskNameHash:I

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->resolveTaskName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->taskName:Ljava/lang/String;

    goto :goto_0
.end method

.method public serializable()Z
    .locals 2

    .prologue
    .line 964
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    sget-object v1, Lorg/apache/ignite/transactions/TransactionIsolation;->SERIALIZABLE:Lorg/apache/ignite/transactions/TransactionIsolation;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRollbackOnly()Z
    .locals 1

    .prologue
    .line 833
    sget-object v0, Lorg/apache/ignite/transactions/TransactionState;->MARKED_ROLLBACK:Lorg/apache/ignite/transactions/TransactionState;

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;)Z

    move-result v0

    return v0
.end method

.method protected final signalAll()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cond:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 363
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->txSize:I

    return v0
.end method

.method public startTime()J
    .locals 2

    .prologue
    .line 717
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->startTime:J

    return-wide v0
.end method

.method public startVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->startVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method

.method public state()Lorg/apache/ignite/transactions/TransactionState;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state:Lorg/apache/ignite/transactions/TransactionState;

    return-object v0
.end method

.method public state(Lorg/apache/ignite/transactions/TransactionState;)Z
    .locals 1
    .param p1, "state"    # Lorg/apache/ignite/transactions/TransactionState;

    .prologue
    .line 979
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state(Lorg/apache/ignite/transactions/TransactionState;Z)Z

    move-result v0

    return v0
.end method

.method protected store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 448
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->activeCacheIds()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 449
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->activeCacheIds()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 451
    .local v0, "cacheId":I
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->cacheContext(I)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v1

    .line 453
    .local v1, "store":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->configured()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    .end local v0    # "cacheId":I
    .end local v1    # "store":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    :goto_0
    return-object v1

    .restart local v0    # "cacheId":I
    .restart local v1    # "store":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    :cond_0
    move-object v1, v3

    .line 453
    goto :goto_0

    .end local v0    # "cacheId":I
    .end local v1    # "store":Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;
    :cond_1
    move-object v1, v3

    .line 456
    goto :goto_0
.end method

.method public storeEnabled(Z)V
    .locals 0
    .param p1, "storeEnabled"    # Z

    .prologue
    .line 424
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->storeEnabled:Z

    .line 425
    return-void
.end method

.method public storeEnabled()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->storeEnabled:Z

    return v0
.end method

.method public storeUsed()Z
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->storeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public subjectId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->subjId:Ljava/util/UUID;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->subjId:Ljava/util/UUID;

    .line 501
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->originatingNodeId()Ljava/util/UUID;

    move-result-object v0

    goto :goto_0
.end method

.method public syncCommit(Z)V
    .locals 0
    .param p1, "syncCommit"    # Z

    .prologue
    .line 682
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->syncCommit:Z

    .line 683
    return-void
.end method

.method public syncCommit()Z
    .locals 1

    .prologue
    .line 670
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->syncCommit:Z

    return v0
.end method

.method public syncRollback(Z)V
    .locals 0
    .param p1, "syncRollback"    # Z

    .prologue
    .line 689
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->syncRollback:Z

    .line 690
    return-void
.end method

.method public syncRollback()Z
    .locals 1

    .prologue
    .line 675
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->syncRollback:Z

    return v0
.end method

.method public system()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->sys:Z

    return v0
.end method

.method public systemInvalidate(Z)V
    .locals 0
    .param p1, "sysInvalidate"    # Z

    .prologue
    .line 1194
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->sysInvalidate:Z

    .line 1195
    return-void
.end method

.method public taskNameHash()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->taskNameHash:I

    return v0
.end method

.method public threadId()J
    .locals 2

    .prologue
    .line 753
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->threadId:J

    return-wide v0
.end method

.method public timedOut()Z
    .locals 1

    .prologue
    .line 1171
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timedOut:Z

    return v0
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 773
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timeout:J

    return-wide v0
.end method

.method public timeout(J)J
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 778
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 779
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot change timeout after transaction has started: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 781
    :cond_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timeout:J

    .line 783
    .local v0, "old":J
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timeout:J

    .line 785
    return-wide v0
.end method

.method public timeoutId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->asGridUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1548
    const-class v0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;

    const-string v2, "duration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->startTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "grpLock"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->groupLock()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "onePhaseCommit"

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->onePhaseCommit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v1, p0

    invoke-static/range {v0 .. v7}, Lorg/apache/ignite/internal/util/tostring/GridToStringBuilder;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 2

    .prologue
    .line 511
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 513
    .local v0, "res":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    sget-object v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->exchange()Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePartitionExchangeManager;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v0

    .line 516
    .end local v0    # "res":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_0
    return-object v0
.end method

.method public topologyVersion(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 2
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .prologue
    .line 528
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 530
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    return-object v0
.end method

.method public topologyVersionSnapshot()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 2

    .prologue
    .line 521
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->topVer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 523
    .local v0, "ret":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    sget-object v1, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "ret":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_0
    return-object v0
.end method

.method public transactionNodes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1199
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->txNodes:Ljava/util/Map;

    return-object v0
.end method

.method public transactionNodes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1206
    .local p1, "txNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Ljava/util/Collection<Ljava/util/UUID;>;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->txNodes:Ljava/util/Map;

    .line 1207
    return-void
.end method

.method protected uncommit()V
    .locals 6

    .prologue
    .line 464
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->writeMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    .line 466
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :try_start_0
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->cached()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 468
    .local v0, "Entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->op()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v4

    sget-object v5, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v4, v5, :cond_0

    .line 469
    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v0, v4, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->invalidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    .end local v0    # "Entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :catch_0
    move-exception v3

    .line 472
    .local v3, "t":Ljava/lang/Throwable;
    sget-object v4, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Failed to invalidate transaction entries while reverting a commit."

    invoke-static {v4, v5, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 478
    .end local v1    # "e":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->uncommitTx(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)V

    .line 479
    return-void
.end method

.method protected final unlock()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 356
    return-void
.end method

.method protected updateNearCache(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z
    .locals 1
    .param p2, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p3, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 384
    .local p1, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<**>;"
    const/4 v0, 0x0

    return v0
.end method

.method public final user()Z
    .locals 1

    .prologue
    .line 645
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->implicit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->local()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->dht()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->internal()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1473
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->writeExternalMeta(Ljava/io/ObjectOutput;)V

    .line 1475
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1476
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->invalidate:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 1477
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->timeout:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1478
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->threadId:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1479
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->startTime:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 1481
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->nodeId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 1483
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->isolation:Lorg/apache/ignite/transactions/TransactionIsolation;

    invoke-virtual {v0}, Lorg/apache/ignite/transactions/TransactionIsolation;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    .line 1484
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->concurrency:Lorg/apache/ignite/transactions/TransactionConcurrency;

    invoke-virtual {v0}, Lorg/apache/ignite/transactions/TransactionConcurrency;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    .line 1485
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/transactions/TransactionState;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write(I)V

    .line 1486
    return-void
.end method

.method public writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->commitVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    goto :goto_0
.end method

.method public writeVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 0
    .param p1, "writeVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 1149
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->writeVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 1150
    return-void
.end method

.method public xid()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->asGridUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    return-object v0
.end method

.method public xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->xidVer:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    return-object v0
.end method
