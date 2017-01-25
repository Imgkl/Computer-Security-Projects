.class public abstract Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;
.super Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
.source "GridDhtTransactionalCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;-><init>()V

    .line 61
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V
    .locals 0
    .param p2, "map"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->processNearLockRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->processDhtLockResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->processNearUnlockRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Throwable;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .param p4, "x4"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    .param p5, "x5"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p6, "x6"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->createLockReply(Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Throwable;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;
    .param p1, "x1"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .param p4, "x4"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->sendLockReply(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private clearLocks(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;)V
    .locals 13
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    const/16 v12, 0x5d

    .line 1159
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1161
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->keys()Ljava/util/List;

    move-result-object v11

    .line 1163
    .local v11, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    if-eqz v11, :cond_6

    .line 1164
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1166
    .local v10, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_1
    :goto_1
    invoke-virtual {p0, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v0

    .line 1168
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    const/4 v7, 0x0

    .line 1170
    .local v7, "created":Z
    if-nez v0, :cond_2

    .line 1171
    invoke-virtual {p0, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v0

    .line 1173
    const/4 v7, 0x1

    .line 1177
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->doneRemote(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1188
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1189
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1190
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed lock [lockId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1198
    :cond_3
    :goto_2
    if-eqz v7, :cond_4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1199
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 1201
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1205
    :catch_0
    move-exception v9

    .line 1206
    .local v9, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1207
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received remove lock request for removed entry (will retry) [entry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", req="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1193
    .end local v9    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_5
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1194
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received unlock request for unknown candidate (added to cancelled locks set): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1213
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v7    # "created":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_6
    return-void
.end method

.method private createLockReply(Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Throwable;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;
    .locals 28
    .param p1, "nearNode"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .param p4, "tx"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "mappedVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p6, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;"
        }
    .end annotation

    .prologue
    .line 962
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    .local p2, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p5, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 963
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual/range {p4 .. p4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->xidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 967
    :cond_1
    :try_start_0
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->onePhaseCommit()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;-><init>(ILorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZILjava/lang/Throwable;)V

    .line 970
    .local v4, "res":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;
    if-nez p6, :cond_2

    .line 971
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->localDhtPendingVersions(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->pending(Ljava/util/Collection;)V

    .line 975
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->committedVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->rolledbackVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->completedVersions(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 978
    const/16 v21, 0x0

    .line 980
    .local v21, "i":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v23

    .local v23, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 981
    invoke-interface/range {v23 .. v23}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 983
    .local v5, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v6, :cond_5

    if-nez v5, :cond_5

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    .end local v4    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;
    .end local v5    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v21    # "i":I
    .end local v23    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :catch_0
    move-exception v5

    .line 1074
    .local v5, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get value for lock reply message for node [node="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", req="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1077
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    move-object v13, v5

    invoke-direct/range {v6 .. v13}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;-><init>(ILorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;ZILjava/lang/Throwable;)V

    move-object v4, v6

    .end local v5    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_2
    return-object v4

    .line 967
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1056
    .restart local v4    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;
    .local v5, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v21    # "i":I
    .restart local v23    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    :catch_1
    move-exception v22

    .line 1057
    .local v22, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1058
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed entry when sending reply to DHT lock request (will retry): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1061
    :cond_4
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v5

    .line 1063
    move-object/from16 v0, v23

    invoke-interface {v0, v5}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 988
    .end local v22    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_5
    if-eqz p4, :cond_6

    :try_start_2
    invoke-virtual/range {p4 .. p4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->isRollbackOnly()Z

    move-result v6

    if-nez v6, :cond_12

    .line 989
    :cond_6
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->dhtVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    .line 992
    .local v18, "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :try_start_3
    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v26

    .line 994
    .local v26, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->returnValue(I)Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    :cond_7
    const/16 v24, 0x1

    .line 996
    .local v24, "ret":Z
    :goto_2
    const/16 v25, 0x0

    .line 998
    .local v25, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v24, :cond_8

    .line 999
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->returnValue(I)Z

    move-result v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->subjectId(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)Ljava/util/UUID;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz p4, :cond_b

    invoke-virtual/range {p4 .. p4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->resolveTaskName()Ljava/lang/String;

    move-result-object v16

    :goto_3
    const/16 v17, 0x0

    move-object/from16 v6, p4

    invoke-interface/range {v5 .. v17}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v25

    .line 1014
    :cond_8
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v6, :cond_c

    move-object/from16 v0, p5

    invoke-interface {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedBy(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v6

    if-nez v6, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v6

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v6, v7, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->isRemoved(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->timeout()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_c

    :cond_9
    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry does not own lock for tx [locNodeId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", entry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mappedVer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ver="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", tx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", req="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", err="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1042
    .end local v24    # "ret":Z
    .end local v25    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v26    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catch_2
    move-exception v19

    .line 1043
    .local v19, "ex":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :try_start_4
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v6, :cond_11

    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Filter should never fail if fail-fast is false."

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
    :try_end_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 994
    .end local v19    # "ex":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    .restart local v26    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 999
    .restart local v24    # "ret":Z
    .restart local v25    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_b
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1020
    :cond_c
    const/16 v20, 0x0

    .line 1022
    .local v20, "filterPassed":Z
    if-eqz p4, :cond_e

    :try_start_5
    invoke-virtual/range {p4 .. p4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->onePhaseCommit()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1023
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->entry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;

    move-result-object v27

    .line 1026
    .local v27, "writeEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v6, :cond_d

    if-nez v27, :cond_d

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Missing tx entry for locked cache entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 1028
    :cond_d
    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;->filtersPassed()Z

    move-result v20

    .line 1031
    .end local v27    # "writeEntry":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxEntry;
    :cond_e
    if-eqz v24, :cond_f

    if-nez v25, :cond_f

    .line 1032
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->valueBytes(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v25

    .line 1036
    :cond_f
    if-eqz v24, :cond_10

    .end local v25    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_4
    move-object/from16 v0, v25

    move/from16 v1, v20

    move-object/from16 v2, v26

    move-object/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->addValueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_5
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1067
    .end local v18    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v20    # "filterPassed":Z
    .end local v24    # "ret":Z
    .end local v26    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_5
    add-int/lit8 v21, v21, 0x1

    .line 1068
    goto/16 :goto_1

    .line 1036
    .restart local v18    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v20    # "filterPassed":Z
    .restart local v24    # "ret":Z
    .restart local v25    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v26    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_10
    const/16 v25, 0x0

    goto :goto_4

    .line 1045
    .end local v20    # "filterPassed":Z
    .end local v24    # "ret":Z
    .end local v25    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v26    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v19    # "ex":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :cond_11
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;->printStackTrace()V

    goto :goto_5

    .line 1051
    .end local v18    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v19    # "ex":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :cond_12
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v4, v6, v7, v8, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->addValueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObject;ZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_6
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5
.end method

.method private invalidateNearEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1474
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1476
    .local v0, "nearEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v0, :cond_0

    .line 1477
    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->invalidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 1478
    :cond_0
    return-void
.end method

.method private localDhtPendingVersions(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;
    .locals 9
    .param p2, "baseVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1128
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    .local p1, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    new-instance v5, Lorg/apache/ignite/internal/util/GridLeanSet;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Lorg/apache/ignite/internal/util/GridLeanSet;-><init>(I)V

    .line 1130
    .local v5, "lessPending":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 1134
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :goto_0
    const/4 v6, 0x0

    :try_start_0
    new-array v6, v6, [Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->localCandidates([Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

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

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 1135
    .local v0, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {v6, p2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;->isLess(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1136
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1141
    .end local v0    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 1142
    .local v4, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1143
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got removed entry is localDhtPendingVersions (will retry): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1145
    :cond_2
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v1

    .line 1146
    goto :goto_0

    .line 1150
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v4    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_3
    return-object v5
.end method

.method private map(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1243
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    .local p4, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .local p5, "dhtMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .local p6, "nearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v3

    invoke-interface {p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v4

    invoke-interface {v3, v4, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->nodes(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v0

    .line 1245
    .local v0, "dhtNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1247
    .local v2, "primary":Lorg/apache/ignite/cluster/ClusterNode;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1249
    :cond_0
    invoke-interface {v2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1250
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1251
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Primary node mismatch for unlock [entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", expected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1276
    :cond_1
    :goto_0
    return-void

    .line 1257
    :cond_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1258
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mapping entry to DHT nodes [nodes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1260
    :cond_3
    const/4 v1, 0x0

    .line 1262
    .local v1, "nearNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static {p4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1263
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v7, 0x0

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->idForNodeId(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lorg/apache/ignite/internal/util/F0;->not([Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, p4, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->nodes(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v1

    .line 1265
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1266
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mapping entry to near nodes [nodes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", entry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1274
    :cond_4
    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/ignite/internal/util/typedef/F;->remoteNodes(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {p0, p3, v3, p5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->map(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/lang/Iterable;Ljava/util/Map;)V

    .line 1275
    invoke-direct {p0, p3, v1, p6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->map(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/lang/Iterable;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1270
    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1271
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry has no near readers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private map(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/lang/Iterable;Ljava/util/Map;)V
    .locals 4
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1287
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    .local p2, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    if-eqz p2, :cond_1

    .line 1288
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1289
    .local v2, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1291
    .local v1, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    if-nez v1, :cond_0

    .line 1292
    new-instance v1, Ljava/util/LinkedList;

    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .restart local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1297
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v2    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_1
    return-void
.end method

.method private obsoleteNearEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 2
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 1485
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1487
    .local v0, "nearEntry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v0, :cond_0

    .line 1488
    invoke-interface {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 1489
    :cond_0
    return-void
.end method

.method private processDhtLockResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;

    .prologue
    .line 538
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 539
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 540
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->future(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    .line 543
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    if-nez v0, :cond_3

    .line 544
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 545
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received response for unknown future (will ignore): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 551
    :cond_2
    :goto_0
    return-void

    .line 550
    :cond_3
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;)V

    goto :goto_0
.end method

.method private processNearLockRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;)V
    .locals 6
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    .prologue
    .line 508
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 509
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 510
    :cond_1
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez p2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 512
    :cond_2
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 513
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing near lock request [locNodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->locNodeId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 516
    :cond_3
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    .line 518
    .local v1, "nearNode":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v1, :cond_4

    .line 519
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received lock request from unknown node (will ignore): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 531
    :goto_0
    return-void

    .line 525
    :cond_4
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->lockAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 529
    .local v0, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->errorLogger(Lorg/apache/ignite/IgniteLogger;[Ljava/lang/Class;)Lorg/apache/ignite/lang/IgniteInClosure;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0
.end method

.method private processNearUnlockRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    .prologue
    .line 1221
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1222
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1224
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;->keys()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->removeLocks(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Iterable;Z)V

    .line 1225
    return-void
.end method

.method private sendLockReply(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;)V
    .locals 5
    .param p1, "nearNode"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .param p4, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;

    .prologue
    .line 1096
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    invoke-virtual {p4}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;->error()Ljava/lang/Throwable;

    move-result-object v1

    .line 1099
    .local v1, "err":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheLockTimeoutException;

    if-nez v2, :cond_0

    .line 1100
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to acquire lock for request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1104
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->nodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/X;->hasCause(Ljava/lang/Throwable;[Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1105
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v3

    invoke-virtual {v2, p1, p4, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    :cond_1
    return-void

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send lock reply to originating node (will rollback transaction) [node="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->toShortString(Lorg/apache/ignite/cluster/ClusterNode;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", req="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1111
    if-eqz p2, :cond_2

    .line 1112
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;->rollbackAsync()Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 1115
    :cond_2
    new-instance v2, Lorg/apache/ignite/internal/util/lang/GridClosureException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public lockAllAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZZLorg/apache/ignite/transactions/TransactionIsolation;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "timeout"    # J
    .param p4, "txx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
    .param p5, "isInvalidate"    # Z
    .param p6, "isRead"    # Z
    .param p7, "retval"    # Z
    .param p8, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p9, "accessTtl"    # J
    .param p11, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;J",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;",
            "ZZZ",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-virtual/range {p0 .. p11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->lockAllAsyncInternal(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZZLorg/apache/ignite/transactions/TransactionIsolation;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;

    move-result-object v0

    return-object v0
.end method

.method public lockAllAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 11
    .param p2, "nearNode"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p3, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;
    .param p4, "filter0"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 674
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    .local p1, "cacheCtx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->keys()Ljava/util/List;

    move-result-object v3

    .line 676
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    const/4 v9, 0x0

    .line 678
    .local v9, "keyFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->onePhaseCommit()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 679
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->hasTransforms()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->filter()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v7, 0x1

    .line 681
    .local v7, "forceKeys":Z
    :goto_0
    if-nez v7, :cond_2

    .line 682
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->keysCount()I

    move-result v0

    if-ge v8, v0, :cond_2

    if-nez v7, :cond_2

    .line 683
    invoke-virtual {p3, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->returnValue(I)Z

    move-result v0

    or-int/2addr v7, v0

    .line 682
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 679
    .end local v7    # "forceKeys":Z
    .end local v8    # "i":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 686
    .restart local v7    # "forceKeys":Z
    :cond_2
    if-eqz v7, :cond_3

    .line 687
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->dhtPreloader()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    move-result-object v0

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->request(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;

    move-result-object v9

    .line 690
    .end local v7    # "forceKeys":Z
    :cond_3
    if-nez v9, :cond_4

    .line 691
    new-instance v9, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    .end local v9    # "keyFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    invoke-direct {v9}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>()V

    .line 693
    .restart local v9    # "keyFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :cond_4
    new-instance v10, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;

    move-object v1, p0

    move-object v2, p4

    move-object v4, p3

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$9;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    invoke-direct {v10, v9, v0}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    return-object v10
.end method

.method public lockAllAsyncInternal(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZZLorg/apache/ignite/transactions/TransactionIsolation;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;
    .locals 23
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "timeout"    # J
    .param p4, "txx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
    .param p5, "isInvalidate"    # Z
    .param p6, "isRead"    # Z
    .param p7, "retval"    # Z
    .param p8, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
    .param p9, "accessTtl"    # J
    .param p11, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;J",
            "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;",
            "ZZZ",
            "Lorg/apache/ignite/transactions/TransactionIsolation;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 599
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 600
    :cond_0
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 659
    :goto_0
    return-object v3

    :cond_1
    move-object/from16 v13, p4

    .line 602
    check-cast v13, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;

    .line 604
    .local v13, "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    if-nez v13, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 606
    :cond_2
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearNodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v8

    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->threadId()J

    move-result-wide v14

    move/from16 v9, p6

    move/from16 v10, p7

    move-wide/from16 v11, p2

    move-wide/from16 v16, p9

    move-object/from16 v18, p11

    invoke-direct/range {v3 .. v18}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;IZZJLorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;JJ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 620
    .local v3, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture<TK;TV;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 623
    .local v22, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_4
    :goto_2
    :try_start_0
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxLocalAdapter;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v19

    .line 626
    .local v19, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :try_start_1
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->addEntry(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    .line 629
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->isDone()Z
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 634
    :catch_0
    move-exception v21

    .line 635
    .local v21, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 636
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got removed entry when adding lock (will retry): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 646
    .end local v19    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v21    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_1
    move-exception v2

    .line 647
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;->partition()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->addInvalidPartition(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V

    .line 649
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 650
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added invalid partition to DHT lock future [part="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;->partition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fut="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 638
    .end local v2    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .restart local v19    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :catch_2
    move-exception v2

    .line 639
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got lock request for cancelled lock (will fail): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 642
    :cond_5
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;

    invoke-direct {v4, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v4

    goto/16 :goto_0

    .line 655
    .end local v2    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
    .end local v19    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v22    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;)Z

    .line 657
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockFuture;->map()V

    goto/16 :goto_0
.end method

.method public bridge synthetic near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    move-result-object v0

    return-object v0
.end method

.method public abstract near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method protected final processDhtLockRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;

    .prologue
    .line 340
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->keys()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 343
    .local v0, "keyFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 344
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->processDhtLockRequest0(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;)V

    .line 352
    :goto_1
    return-void

    .line 340
    .end local v0    # "keyFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->dhtPreloader()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->keys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->request(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;

    move-result-object v0

    goto :goto_0

    .line 346
    .restart local v0    # "keyFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    :cond_2
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$7;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$7;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_1
.end method

.method protected final processDhtLockRequest0(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;)V
    .locals 29
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;

    .prologue
    .line 359
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 360
    :cond_0
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 361
    :cond_1
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->locNodeId:Ljava/util/UUID;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 363
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 364
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing dht lock request [locNodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->locNodeId:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", nodeId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 367
    :cond_3
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->keys()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v8

    .line 371
    .local v8, "cnt":I
    const/16 v16, 0x0

    .line 372
    .local v16, "dhtTx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    const/16 v27, 0x0

    .line 374
    .local v27, "nearTx":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;
    const/16 v20, 0x0

    .line 375
    .local v20, "fail":Z
    const/4 v15, 0x0

    .line 378
    .local v15, "cancelled":Z
    :try_start_0
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v7

    invoke-direct/range {v3 .. v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;-><init>(ILorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;I)V

    .line 380
    .local v3, "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->startRemoteTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;

    move-result-object v16

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-static {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->startRemoteTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;)Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;

    move-result-object v27

    .line 383
    :goto_0
    if-eqz v27, :cond_b

    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->empty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 384
    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->evicted()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;->nearEvicted(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException; {:try_start_0 .. :try_end_0} :catch_3

    .line 433
    :cond_4
    :goto_1
    const/16 v28, 0x0

    .line 435
    .local v28, "releaseAll":Z
    if-eqz v3, :cond_5

    .line 438
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_5

    .line 453
    :cond_5
    :goto_2
    if-eqz v20, :cond_f

    .line 454
    if-eqz v16, :cond_6

    .line 455
    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->rollback()V

    .line 457
    :cond_6
    if-eqz v27, :cond_7

    .line 458
    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTxRemote;->rollback()V

    .line 460
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->keys()Ljava/util/List;

    move-result-object v25

    .line 462
    .local v25, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    if-eqz v25, :cond_e

    .line 463
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 465
    .local v24, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v18

    .line 468
    .local v18, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    if-eqz v18, :cond_8

    .line 470
    if-eqz v28, :cond_d

    .line 471
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nodeId()Ljava/util/UUID;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->removeExplicitNodeLocks(Ljava/util/UUID;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 478
    :catch_0
    move-exception v22

    .line 479
    .local v22, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempted to remove lock on removed entity during during failure handling for dht lock request (will retry): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 381
    .end local v18    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v24    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v25    # "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v28    # "releaseAll":Z
    :cond_a
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 386
    :cond_b
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearKeys()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 387
    new-instance v26, Ljava/util/ArrayList;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move-object/from16 v0, v26

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 389
    .local v26, "nearEvicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearKeys()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$8;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$8;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)V

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v4, v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 395
    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;->nearEvicted(Ljava/util/Collection;)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 399
    .end local v3    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;
    .end local v26    # "nearEvicted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;>;"
    :catch_1
    move-exception v17

    .line 400
    .local v17, "e":Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed processing DHT lock request (transaction has been completed): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 402
    .local v19, "err":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 404
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v13

    new-instance v14, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;-><init>(ILorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Throwable;)V

    .line 407
    .restart local v3    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;
    const/16 v20, 0x1

    .line 431
    goto/16 :goto_1

    .line 409
    .end local v3    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;
    .end local v17    # "e":Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;
    .end local v19    # "err":Ljava/lang/String;
    :catch_2
    move-exception v17

    .line 410
    .local v17, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed processing DHT lock request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 412
    .restart local v19    # "err":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v4, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 414
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->miniId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v13

    new-instance v14, Lorg/apache/ignite/IgniteCheckedException;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v9, v3

    invoke-direct/range {v9 .. v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;-><init>(ILorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Throwable;)V

    .line 420
    .restart local v3    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;
    const/16 v20, 0x1

    .line 431
    goto/16 :goto_1

    .line 422
    .end local v3    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;
    .end local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v19    # "err":Ljava/lang/String;
    :catch_3
    move-exception v23

    .line 424
    .local v23, "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 425
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received lock request for canceled lock (will ignore): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 427
    :cond_c
    const/4 v3, 0x0

    .line 429
    .restart local v3    # "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;
    const/16 v20, 0x1

    .line 430
    const/4 v15, 0x1

    goto/16 :goto_1

    .line 440
    .end local v23    # "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
    .restart local v28    # "releaseAll":Z
    :catch_4
    move-exception v23

    .line 441
    .local v23, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send lock reply to remote node because it left grid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 443
    const/16 v20, 0x1

    .line 444
    const/16 v28, 0x1

    .line 450
    goto/16 :goto_2

    .line 446
    .end local v23    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_5
    move-exception v17

    .line 447
    .restart local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send lock reply to node (lock will not be acquired): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 449
    const/16 v20, 0x1

    goto/16 :goto_2

    .line 473
    .end local v17    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v18    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v24    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v25    # "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_d
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z
    :try_end_4
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    .line 487
    .end local v18    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v24    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_e
    if-eqz v28, :cond_f

    if-nez v15, :cond_f

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Sender node left grid in the midst of lock acquisition (locks have been released)."

    invoke-static {v4, v5}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 490
    .end local v25    # "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_f
    return-void
.end method

.method protected processDhtUnlockRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;

    .prologue
    .line 497
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->clearLocks(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedUnlockRequest;)V

    .line 499
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearTransactionalCache;->clearLocks(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;)V

    .line 501
    :cond_0
    return-void
.end method

.method public removeLocks(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/lang/Iterable;Z)V
    .locals 26
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "unmap"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1306
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    .local p3, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1307
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1309
    :cond_1
    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1466
    :cond_2
    return-void

    .line 1313
    :cond_3
    if-eqz p4, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->unmapVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v12

    .line 1315
    .local v12, "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1316
    .local v7, "dhtMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1318
    .local v8, "nearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    const/16 v22, 0x0

    .line 1320
    .local v22, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1322
    .local v19, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_5
    :goto_2
    const/4 v11, 0x0

    .line 1324
    .local v11, "created":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v5

    .line 1326
    .local v5, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    if-nez v5, :cond_6

    .line 1327
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v5

    .line 1329
    const/4 v11, 0x1

    .line 1333
    :cond_6
    const/4 v9, 0x0

    .line 1335
    .local v9, "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    if-nez v12, :cond_7

    .line 1336
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v5, v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->localCandidateByNearVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v9

    .line 1338
    if-eqz v9, :cond_c

    .line 1339
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v12

    .line 1359
    :cond_7
    if-nez v9, :cond_8

    .line 1360
    invoke-virtual {v5, v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->candidate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;

    move-result-object v9

    .line 1362
    :cond_8
    if-nez v9, :cond_f

    sget-object v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    .line 1369
    .local v4, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :goto_3
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readers()Ljava/util/Collection;

    move-result-object v6

    .line 1374
    .local v6, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    invoke-virtual {v5, v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 1376
    invoke-direct/range {v2 .. v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->map(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)V

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1379
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Removed lock [lockId="

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v25, ", key="

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v25, 0x5d

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1385
    :cond_9
    :goto_4
    if-eqz v11, :cond_a

    invoke-virtual {v5, v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1386
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V

    .line 1388
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 1392
    .end local v4    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v6    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :catch_0
    move-exception v18

    .line 1393
    .local v18, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1394
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received remove lock request for removed entry (will retry): "

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v7    # "dhtMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .end local v8    # "nearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .end local v9    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v11    # "created":Z
    .end local v12    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v18    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v19    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v22    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_b
    move-object/from16 v12, p2

    .line 1313
    goto/16 :goto_0

    .line 1341
    .restart local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v7    # "dhtMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .restart local v8    # "nearMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .restart local v9    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .restart local v11    # "created":Z
    .restart local v12    # "dhtVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v19    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v22    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1342
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to locate lock candidate based on dht or near versions [nodeId="

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v25, ", ver="

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v25, ", unmap="

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v25, ", keys="

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v25, 0x5d

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1345
    :cond_d
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 1347
    if-eqz v11, :cond_4

    .line 1348
    if-nez v22, :cond_e

    .line 1349
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v22

    .line 1351
    :cond_e
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->markObsolete(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1352
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->removeEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1396
    :catch_1
    move-exception v13

    .line 1397
    .local v13, "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to remove locks for keys: "

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1362
    .end local v13    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_f
    :try_start_2
    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    goto/16 :goto_3

    .line 1381
    .restart local v4    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .restart local v6    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1382
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Received unlock request for unknown candidate (added to cancelled locks set) [ver="

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v25, ", entry="

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v25, 0x5d

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_4

    .line 1402
    .end local v4    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .end local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v6    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v9    # "cand":Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;
    .end local v11    # "created":Z
    .end local v19    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->committedVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v10

    .line 1403
    .local v10, "committed":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->rolledbackVersions(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Ljava/util/Collection;

    move-result-object v24

    .line 1406
    .local v24, "rolledback":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .end local v15    # "i$":Ljava/util/Iterator;
    :cond_12
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1407
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1409
    .local v21, "n":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 1411
    .local v20, "keyBytes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    new-instance v23, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;-><init>(II)V

    .line 1413
    .local v23, "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->version(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1416
    :try_start_3
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1417
    .restart local v19    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->addKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    :try_end_3
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    .line 1429
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :catch_2
    move-exception v17

    .line 1430
    .local v17, "ignore":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1431
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Node left while sending unlock request: "

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 1419
    .end local v17    # "ignore":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_13
    :try_start_4
    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/List;

    move-object/from16 v20, v0

    .line 1421
    if-eqz v20, :cond_14

    .line 1422
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1423
    .restart local v19    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->addNearKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    :try_end_4
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 1433
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :catch_3
    move-exception v13

    .line 1434
    .restart local v13    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to send unlock request to node (will make best effort to complete): "

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1425
    .end local v13    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_14
    :try_start_5
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->completedVersions(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_5
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_5

    .line 1439
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v20    # "keyBytes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .end local v21    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v23    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;
    :cond_15
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_16
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1440
    .restart local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/ignite/cluster/ClusterNode;

    .line 1442
    .restart local v21    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1443
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/List;

    .line 1445
    .restart local v20    # "keyBytes":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    new-instance v23, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;-><init>(II)V

    .line 1447
    .restart local v23    # "req":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->version(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1450
    :try_start_6
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1451
    .restart local v19    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v2

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->addNearKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;)V
    :try_end_6
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    .line 1457
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v19    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :catch_4
    move-exception v17

    .line 1458
    .restart local v17    # "ignore":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Node left while sending unlock request: "

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1453
    .end local v17    # "ignore":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_17
    :try_start_7
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v10, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;->completedVersions(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_7
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_8

    .line 1461
    .end local v16    # "i$":Ljava/util/Iterator;
    :catch_5
    move-exception v13

    .line 1462
    .restart local v13    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Failed to send unlock request to node (will make best effort to complete): "

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_8
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->start()V

    .line 84
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->start()V

    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$1;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 94
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearLockRequest;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$2;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$3;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$4;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$4;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 112
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearUnlockRequest;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$5;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$5;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 118
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtUnlockRequest;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$6;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter$6;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 123
    return-void
.end method

.method startRemoteTx(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    .locals 36
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;
    .param p3, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedLockCancelledException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter<TK;TV;>;"
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->keys()Ljava/util/List;

    move-result-object v30

    .line 142
    .local v30, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    const/4 v2, 0x0

    .line 144
    .local v2, "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v0, v30

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v33

    .line 146
    .local v33, "size":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v33

    if-ge v0, v1, :cond_18

    .line 147
    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 149
    .local v29, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    if-nez v29, :cond_1

    .line 146
    :cond_0
    :goto_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 152
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->txKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v35

    .line 154
    .local v35, "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->candidatesByIndex(I)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 156
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unmarshalled key: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 159
    :cond_3
    const/4 v4, 0x0

    .local v4, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    move-object/from16 v25, v4

    .line 163
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .local v25, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v32

    .line 165
    .local v32, "part":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v5

    const/4 v6, 0x0

    move/from16 v0, v32

    invoke-interface {v3, v0, v5, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v31

    .line 168
    .local v31, "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-eqz v31, :cond_4

    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->reserve()Z

    move-result v3

    if-nez v3, :cond_8

    .line 169
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 170
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local partition for given key is already evicted (will add to invalid partition list) [key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", part="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", locPart="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 173
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;->addInvalidPartition(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 177
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->obsoleteNearEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_1

    .line 285
    .end local v31    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v32    # "part":I
    :catch_0
    move-exception v24

    move-object/from16 v4, v25

    .line 286
    .end local v25    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .local v24, "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received invalid partition exception [e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 289
    :cond_6
    invoke-virtual/range {v24 .. v24}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;->partition()I

    move-result v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;->addInvalidPartition(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 293
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->obsoleteNearEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 295
    :cond_7
    if-eqz v2, :cond_0

    .line 296
    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->clearEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleared invalid entry from remote transaction (will skip) [entry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 184
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v24    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .restart local v25    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v31    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v32    # "part":I
    :cond_8
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->inTx()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 185
    if-nez v2, :cond_1b

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->tx(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;

    move-object v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v34, v2

    .line 188
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    .local v34, "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    :goto_4
    if-nez v34, :cond_a

    .line 189
    :try_start_2
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nodeId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nearXidVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->threadId()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->system()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v14

    sget-object v15, Lorg/apache/ignite/transactions/TransactionConcurrency;->PESSIMISTIC:Lorg/apache/ignite/transactions/TransactionConcurrency;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->isolation()Lorg/apache/ignite/transactions/TransactionIsolation;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->isInvalidate()Z

    move-result v17

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->timeout()J

    move-result-wide v18

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->txSize()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->groupLockKey()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->subjectId()Ljava/util/UUID;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->taskNameHash()I

    move-result v23

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZLorg/apache/ignite/internal/managers/communication/GridIoPolicy;Lorg/apache/ignite/transactions/TransactionConcurrency;Lorg/apache/ignite/transactions/TransactionIsolation;ZJILorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Ljava/util/UUID;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 210
    .end local v34    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onCreated(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;

    move-object v2, v0

    .line 212
    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->onStarted(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 213
    :cond_9
    new-instance v3, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to acquire lock (transaction has been completed) [ver="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/apache/ignite/internal/transactions/IgniteTxRollbackCheckedException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    :catchall_0
    move-exception v3

    move-object/from16 v4, v25

    .end local v25    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    :goto_5
    :try_start_4
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    throw v3
    :try_end_4
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 285
    :catch_1
    move-exception v24

    goto/16 :goto_3

    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v25    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v34    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    :cond_a
    move-object/from16 v2, v34

    .line 217
    .end local v34    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->NOOP:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->accessTtl()J

    move-result-wide v8

    move-object/from16 v5, v35

    invoke-virtual/range {v2 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->addWrite(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/util/Collection;J)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->groupLock()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 226
    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->groupLockKey(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V

    .line 229
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v4

    .line 232
    .end local v25    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    :try_start_6
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->threadId()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->timeout()J

    move-result-wide v10

    if-eqz v2, :cond_11

    const/4 v12, 0x1

    :goto_6
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->implicitSingle()Z

    move-result v3

    if-eqz v3, :cond_12

    const/4 v13, 0x1

    :goto_7
    const/4 v14, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v4 .. v14}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->addRemote(Ljava/util/UUID;Ljava/util/UUID;JLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JZZLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-static {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->invalidateNearEntry(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 245
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->invalidateNearEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 248
    :cond_d
    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->needPreloadKey(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 249
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->unswap()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 251
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->info()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;

    move-result-object v28

    .line 253
    .local v28, "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    if-eqz v28, :cond_e

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->isNew()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_e

    .line 254
    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockResponse;->addPreloadEntry(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;)V

    .line 258
    .end local v28    # "info":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->nodeId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v3

    if-nez v3, :cond_14

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 260
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Node requesting lock left grid (lock request will be ignored): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 262
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLockRequest;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->removeLock(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    .line 264
    if-eqz v2, :cond_10

    .line 265
    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->clearEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V

    .line 269
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->state()Lorg/apache/ignite/transactions/TransactionState;

    move-result-object v3

    sget-object v5, Lorg/apache/ignite/transactions/TransactionState;->COMMITTING:Lorg/apache/ignite/transactions/TransactionState;

    if-ne v3, v5, :cond_13

    .line 270
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->forceCommit()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 275
    :cond_10
    :goto_8
    const/4 v3, 0x0

    .line 282
    :try_start_7
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V
    :try_end_7
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 332
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v29    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v31    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v32    # "part":I
    .end local v35    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :goto_9
    return-object v3

    .line 232
    .restart local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v29    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v31    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v32    # "part":I
    .restart local v35    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_6

    :cond_12
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 272
    :cond_13
    :try_start_8
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->rollback()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_8

    .line 282
    :catchall_1
    move-exception v3

    goto/16 :goto_5

    :cond_14
    :try_start_9
    invoke-virtual/range {v31 .. v31}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V
    :try_end_9
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 305
    :catch_2
    move-exception v27

    .line 306
    .end local v31    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .end local v32    # "part":I
    .local v27, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :goto_a
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->$assertionsDisabled:Z

    if-nez v3, :cond_15

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;->obsoleteVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Obsolete flag not set on removed entry: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 309
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 310
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received entry removed exception (will retry on renewed entry): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 312
    :cond_16
    if-eqz v2, :cond_17

    .line 313
    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->clearEntry(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleared removed entry from remote transaction (will retry) [entry="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_17
    move-object/from16 v25, v4

    .line 319
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v25    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    goto/16 :goto_2

    .line 323
    .end local v25    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .end local v27    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v29    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v35    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :cond_18
    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->empty()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTransactionalCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rolling back remote DHT transaction because it is empty [req="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", res="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 327
    :cond_19
    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;->rollback()V

    .line 329
    const/4 v2, 0x0

    :cond_1a
    move-object v3, v2

    .line 332
    goto/16 :goto_9

    .line 305
    .restart local v25    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v29    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v35    # "txKey":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxKey;
    :catch_3
    move-exception v27

    move-object/from16 v4, v25

    .end local v25    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    goto/16 :goto_a

    .line 282
    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v25    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v31    # "locPart":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    .restart local v32    # "part":I
    .restart local v34    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    :catchall_2
    move-exception v3

    move-object/from16 v4, v25

    .end local v25    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    move-object/from16 v2, v34

    .end local v34    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    .restart local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    goto/16 :goto_5

    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    .restart local v25    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheEntry;
    :cond_1b
    move-object/from16 v34, v2

    .end local v2    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    .restart local v34    # "tx":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxRemote;
    goto/16 :goto_4
.end method
