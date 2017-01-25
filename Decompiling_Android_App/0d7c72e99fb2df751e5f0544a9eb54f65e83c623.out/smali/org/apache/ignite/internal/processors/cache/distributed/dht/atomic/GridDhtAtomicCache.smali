.class public Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
.super Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
.source "GridDhtAtomicCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;,
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$FinishedLockFuture;,
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;,
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;
    }
.end annotation

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

.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEFERRED_UPDATE_RESPONSE_BUFFER_SIZE:I

.field private static final DEFERRED_UPDATE_RESPONSE_TIMEOUT:I

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final serialVersionUID:J


# instance fields
.field private final disconnectLsnr:Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;

.field private near:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private pendingResponses:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache",
            "<TK;TV;>.DeferredResponseBuffer;>;"
        }
    .end annotation
.end field

.field private updateReplyClos:Lorg/apache/ignite/internal/util/typedef/CI2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/typedef/CI2",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    .line 73
    const-string v0, "IGNITE_ATOMIC_DEFERRED_ACK_BUFFER_SIZE"

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->DEFERRED_UPDATE_RESPONSE_BUFFER_SIZE:I

    .line 77
    const-string v0, "IGNITE_ATOMIC_DEFERRED_ACK_TIMEOUT"

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->DEFERRED_UPDATE_RESPONSE_TIMEOUT:I

    .line 81
    invoke-static {}, Lorg/apache/ignite/internal/util/GridUnsafe;->unsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->UNSAFE:Lsun/misc/Unsafe;

    return-void

    .line 66
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;-><init>()V

    .line 87
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->pendingResponses:Ljava/util/concurrent/ConcurrentMap;

    .line 93
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->disconnectLsnr:Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 87
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->pendingResponses:Ljava/util/concurrent/ConcurrentMap;

    .line 93
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->disconnectLsnr:Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V
    .locals 1
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
    .line 118
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V

    .line 87
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->pendingResponses:Ljava/util/concurrent/ConcurrentMap;

    .line 93
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->disconnectLsnr:Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->scheduleAtomicFutureRecheck()V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->processDhtAtomicDeferredUpdateResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;)V

    return-void
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->processNearGetResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;ZLjavax/cache/expiry/ExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/util/UUID;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Z
    .param p7, "x7"    # Ljavax/cache/expiry/ExpiryPolicy;
    .param p8, "x8"    # Z

    .prologue
    .line 68
    invoke-direct/range {p0 .. p8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->getAllAsync0(Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;ZLjavax/cache/expiry/ExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->sendNearUpdateReply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V

    return-void
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->remapToNewPrimary(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V

    return-void
.end method

.method static synthetic access$3100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$3300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$3700()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->DEFERRED_UPDATE_RESPONSE_TIMEOUT:I

    return v0
.end method

.method static synthetic access$3800()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->DEFERRED_UPDATE_RESPONSE_BUFFER_SIZE:I

    return v0
.end method

.method static synthetic access$3900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$4100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$4400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->processNearGetRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;)V

    return-void
.end method

.method static synthetic access$5000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->pendingResponses:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->processNearAtomicUpdateRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V

    return-void
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->processNearAtomicUpdateResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V

    return-void
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->processDhtAtomicUpdateRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;)V

    return-void
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
    .param p1, "x1"    # Ljava/util/UUID;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->processDhtAtomicUpdateResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;)V

    return-void
.end method

.method private checkClearForceTransformBackups(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Ljava/util/List;)V
    .locals 3
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2585
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p2, "locked":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v1

    sget-object v2, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v1, v2, :cond_0

    .line 2586
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2587
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->hasValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2588
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->forceTransformBackups(Z)V

    .line 2594
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 2586
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkFilter(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)Z
    .locals 3
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    .param p3, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    .prologue
    .line 2291
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isAllLocked(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2296
    :goto_0
    return v1

    .line 2293
    :catch_0
    move-exception v0

    .line 2294
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addFailedKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Throwable;)V

    .line 2296
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDhtFuture(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;Lorg/apache/ignite/internal/util/typedef/CI2;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
    .locals 8
    .param p1, "writeVer"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p2, "updateReq"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    .param p3, "updateRes"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;
    .param p5, "force"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;",
            "Lorg/apache/ignite/internal/util/typedef/CI2",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;",
            ">;Z)",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p4, "completionCb":Lorg/apache/ignite/internal/util/typedef/CI2;, "Lorg/apache/ignite/internal/util/typedef/CI2<Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;>;"
    const/4 v0, 0x0

    const/16 v4, 0x5d

    .line 2381
    if-nez p5, :cond_3

    .line 2382
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->fastMap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2407
    :cond_0
    :goto_0
    return-object v0

    .line 2385
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v7

    .line 2387
    .local v7, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheAffinityNodes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Collection;

    move-result-object v6

    .line 2390
    .local v6, "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find affinity nodes [name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", topVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->discoCache(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager$DiscoCache;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2393
    :cond_2
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2394
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2395
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Partitioned cache topology has only one node, will not create DHT atomic update future [topVer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", updateReq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2402
    .end local v6    # "nodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .end local v7    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_3
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/util/typedef/CI2;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V

    .line 2405
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->addAtomicFuture(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/GridCacheAtomicFuture;)V

    goto/16 :goto_0
.end method

.method private getAllAsync0(Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;ZLjavax/cache/expiry/ExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 35
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "reload"    # Z
    .param p3, "forcePrimary"    # Z
    .param p4, "subjId"    # Ljava/util/UUID;
    .param p5, "taskName"    # Ljava/lang/String;
    .param p6, "deserializePortable"    # Z
    .param p7, "expiryPlc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;ZZ",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Z",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            "Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 927
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v18

    .line 929
    .local v18, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    if-eqz p8, :cond_6

    const/4 v14, 0x0

    .line 932
    .local v14, "expiry":Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    :goto_0
    if-nez p2, :cond_d

    if-nez p3, :cond_d

    .line 933
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v32

    .line 935
    .local v32, "locVals":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/16 v34, 0x1

    .line 938
    .local v34, "success":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 939
    .local v31, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    const/4 v2, 0x0

    .line 943
    .local v2, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_1
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    .line 946
    :goto_3
    if-eqz v2, :cond_a

    .line 947
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isNewLocked()Z

    move-result v30

    .line 949
    .local v30, "isNew":Z
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-nez p8, :cond_8

    const/4 v9, 0x1

    :goto_4
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v11, p4

    move-object/from16 v13, p5

    invoke-interface/range {v2 .. v14}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    .line 963
    .local v6, "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-nez v6, :cond_9

    .line 964
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v33

    .line 966
    .local v33, "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-eqz v30, :cond_2

    move-object/from16 v0, v33

    invoke-interface {v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->markObsoleteIfEmpty(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 967
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removeIfObsolete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    :cond_2
    const/16 v34, 0x0

    .line 995
    .end local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v30    # "isNew":Z
    .end local v33    # "obsoleteVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :goto_5
    if-eqz v2, :cond_3

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1000
    :cond_3
    :goto_6
    if-nez v34, :cond_c

    .line 1006
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v31    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_4
    if-eqz v34, :cond_d

    .line 1007
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->sendTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    .line 1009
    new-instance v15, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v32

    invoke-direct {v15, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 1031
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v32    # "locVals":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v34    # "success":Z
    :cond_5
    :goto_7
    return-object v15

    .line 929
    .end local v14    # "expiry":Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->expiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object v14

    goto/16 :goto_0

    .line 943
    .restart local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v14    # "expiry":Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    .restart local v28    # "i$":Ljava/util/Iterator;
    .restart local v31    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v32    # "locVals":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local v34    # "success":Z
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    goto :goto_3

    .line 949
    .restart local v30    # "isNew":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 972
    .restart local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object/from16 v4, v32

    move-object/from16 v5, v31

    move/from16 v7, p8

    move/from16 v9, p6

    invoke-virtual/range {v3 .. v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->addResult(Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;ZZZZ)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 979
    .end local v6    # "v":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v30    # "isNew":Z
    :catch_0
    move-exception v3

    .line 995
    if-eqz v2, :cond_1

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_2

    .line 975
    :cond_a
    const/16 v34, 0x0

    goto :goto_5

    .line 982
    :catch_1
    move-exception v29

    .line 995
    .local v29, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    if-eqz v2, :cond_3

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_6

    .line 986
    .end local v29    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    :catch_2
    move-exception v29

    .line 987
    .local v29, "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    const/16 v34, 0x0

    .line 995
    if-eqz v2, :cond_3

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_6

    .line 991
    .end local v29    # "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :catch_3
    move-exception v27

    .line 992
    .local v27, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    new-instance v15, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    move-object/from16 v0, v27

    invoke-direct {v15, v0}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 995
    if-eqz v2, :cond_5

    .line 996
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_7

    .line 995
    .end local v27    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_b

    .line 996
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_b
    throw v3

    .line 1002
    :cond_c
    if-nez p8, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1003
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->onRead(Z)V

    goto/16 :goto_1

    .line 1013
    .end local v2    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v31    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v32    # "locVals":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v34    # "success":Z
    :cond_d
    if-eqz v14, :cond_e

    .line 1014
    invoke-interface {v14}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->reset()V

    .line 1017
    :cond_e
    new-instance v15, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v16, v0

    const/16 v19, 0x1

    move-object/from16 v17, p1

    move/from16 v20, p2

    move/from16 v21, p3

    move-object/from16 v22, p4

    move-object/from16 v23, p5

    move/from16 v24, p6

    move-object/from16 v25, v14

    move/from16 v26, p8

    invoke-direct/range {v15 .. v26}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZZLjava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)V

    .line 1029
    .local v15, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    invoke-virtual {v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->init()V

    goto/16 :goto_7
.end method

.method private lockEntries(Ljava/util/List;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;
    .locals 11
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    const/4 v10, 0x0

    .line 2129
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 2130
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 2134
    .local v5, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :goto_0
    :try_start_0
    invoke-virtual {p0, v5, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v1

    .line 2136
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v8, v1}, Lsun/misc/Unsafe;->monitorEnter(Ljava/lang/Object;)V

    .line 2138
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->obsolete()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2139
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v8, v1}, Lsun/misc/Unsafe;->monitorExit(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2143
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :catch_0
    move-exception v0

    .line 2145
    .local v0, "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v8

    sget-object v9, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-ne v8, v9, :cond_1

    .line 2146
    invoke-static {v10}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 2199
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .end local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :goto_1
    return-object v6

    .line 2141
    .restart local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_0
    :try_start_1
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_1

    .line 2148
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v0    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :cond_1
    throw v0

    .line 2153
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .end local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2156
    .local v6, "locked":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 2158
    .restart local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :try_start_2
    invoke-virtual {p0, v5, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v1

    .line 2160
    .restart local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 2162
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :catch_1
    move-exception v0

    .line 2164
    .restart local v0    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v8

    sget-object v9, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-ne v8, v9, :cond_4

    .line 2165
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2167
    :cond_4
    throw v0

    .line 2171
    .end local v0    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .end local v5    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_5
    const/4 v7, 0x0

    .line 2173
    .local v7, "retry":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_a

    .line 2174
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 2176
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-nez v1, :cond_7

    .line 2173
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2179
    :cond_7
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v8, v1}, Lsun/misc/Unsafe;->monitorEnter(Ljava/lang/Object;)V

    .line 2181
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->obsolete()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2183
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    if-gt v4, v2, :cond_9

    .line 2184
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 2185
    sget-object v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->UNSAFE:Lsun/misc/Unsafe;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsun/misc/Unsafe;->monitorExit(Ljava/lang/Object;)V

    .line 2183
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2189
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 2192
    const/4 v7, 0x1

    .line 2198
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    .end local v4    # "j":I
    :cond_a
    if-nez v7, :cond_3

    goto :goto_1
.end method

.method private processDhtAtomicDeferredUpdateResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;)V
    .locals 7
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    const/16 v6, 0x5d

    .line 2650
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2651
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Processing deferred dht atomic update response [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2653
    :cond_0
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;->futureVersions()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 2654
    .local v2, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->atomicFuture(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    .line 2656
    .local v1, "updateFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
    if-eqz v1, :cond_1

    .line 2657
    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;->onResult(Ljava/util/UUID;)V

    goto :goto_0

    .line 2659
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find DHT update future for deferred update response [nodeId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", res="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 2662
    .end local v1    # "updateFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
    .end local v2    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :cond_2
    return-void
.end method

.method private processDhtAtomicUpdateRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;)V
    .locals 39
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;

    .prologue
    .line 2469
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2470
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Processing dht atomic update request [nodeId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", req="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x5d

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2472
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->writeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    .line 2475
    .local v6, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    new-instance v36, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->futureVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    move-object/from16 v0, v36

    invoke-direct {v0, v7, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;-><init>(ILorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 2477
    .local v36, "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    .line 2479
    .local v35, "replicate":Ljava/lang/Boolean;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v7

    if-eqz v7, :cond_4

    const/16 v28, 0x1

    .line 2481
    .local v28, "intercept":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->taskNameHash()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->resolveTaskName(I)Ljava/lang/String;

    move-result-object v30

    .line 2483
    .local v30, "taskName":Ljava/lang/String;
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->size()I

    move-result v7

    move/from16 v0, v32

    if-ge v0, v7, :cond_d

    .line 2484
    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->key(I)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v34

    .line 2488
    .local v34, "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_1
    :goto_2
    const/4 v5, 0x0

    .line 2491
    .local v5, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    move-result-object v5

    .line 2493
    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->value(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v38

    .line 2494
    .local v38, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->entryProcessor(I)Ljavax/cache/processor/EntryProcessor;

    move-result-object v31

    .line 2496
    .local v31, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v31, :cond_5

    sget-object v9, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 2499
    .local v9, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :goto_3
    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->ttl(I)J

    move-result-wide v22

    .line 2500
    .local v22, "ttl":J
    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictExpireTime(I)J

    move-result-wide v24

    .line 2502
    .local v24, "expireTime":J
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v9, v7, :cond_7

    move-object/from16 v10, v31

    :goto_4
    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v9, v7, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->invokeArguments()[Ljava/lang/Object;

    move-result-object v11

    :goto_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->forceTransformBackups()Z

    move-result v7

    if-nez v7, :cond_9

    const/16 v18, 0x1

    :goto_6
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v19

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty0()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v20

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a

    sget-object v21, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_BACKUP:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    :goto_7
    move-object/from16 v0, p2

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->conflictVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->subjectId()Ljava/util/UUID;

    move-result-object v29

    move-object/from16 v7, p1

    move-object/from16 v8, p1

    invoke-virtual/range {v5 .. v30}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->innerUpdate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/lang/Object;[Ljava/lang/Object;ZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;ZZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZLjava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;

    move-result-object v37

    .line 2527
    .local v37, "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->removeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2528
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v37 .. v37}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->removeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 2530
    :cond_2
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->onUnlock()V
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2541
    if-eqz v5, :cond_3

    .line 2542
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2483
    .end local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v22    # "ttl":J
    .end local v24    # "expireTime":J
    .end local v31    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v37    # "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    .end local v38    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_3
    :goto_8
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_1

    .line 2479
    .end local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v28    # "intercept":Z
    .end local v30    # "taskName":Ljava/lang/String;
    .end local v32    # "i":I
    .end local v34    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_4
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 2496
    .restart local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v28    # "intercept":Z
    .restart local v30    # "taskName":Ljava/lang/String;
    .restart local v31    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v32    # "i":I
    .restart local v34    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v38    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_5
    if-eqz v38, :cond_6

    :try_start_2
    sget-object v9, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto/16 :goto_3

    :cond_6
    sget-object v9, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto/16 :goto_3

    .restart local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .restart local v22    # "ttl":J
    .restart local v24    # "expireTime":J
    :cond_7
    move-object/from16 v10, v38

    .line 2502
    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    goto :goto_5

    :cond_9
    const/16 v18, 0x0

    goto :goto_6

    :cond_a
    sget-object v21, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 2534
    .end local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v22    # "ttl":J
    .end local v24    # "expireTime":J
    .end local v31    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v38    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_0
    move-exception v33

    .line 2535
    .local v33, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v7}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2536
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got removed entry while updating backup value (will retry): "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2538
    :cond_b
    const/4 v5, 0x0

    .line 2541
    if-eqz v5, :cond_1

    .line 2542
    :try_start_4
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto/16 :goto_2

    .line 2546
    .end local v33    # "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catch_1
    move-exception v7

    goto :goto_8

    .line 2541
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_c

    .line 2542
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v10

    invoke-virtual {v8, v5, v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_c
    throw v7
    :try_end_4
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 2549
    :catch_2
    move-exception v4

    .line 2550
    .local v4, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v7, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to update key on backup node: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;->addFailedKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 2554
    .end local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v34    # "key":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-static {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->isNearEnabled(Lorg/apache/ignite/configuration/CacheConfiguration;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 2555
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v36

    invoke-virtual {v7, v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;->processDhtAtomicUpdateRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;)V

    .line 2558
    :cond_e
    :try_start_5
    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;->failedKeys()Ljava/util/Collection;

    move-result-object v7

    if-nez v7, :cond_f

    invoke-virtual/range {v36 .. v36}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;->nearEvicted()Ljava/util/Collection;

    move-result-object v7

    if-nez v7, :cond_f

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->writeSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;->FULL_SYNC:Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    if-ne v7, v8, :cond_10

    .line 2559
    :cond_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v8

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-virtual {v7, v0, v1, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V

    .line 2573
    :goto_9
    return-void

    .line 2562
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->futureVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->sendDeferredUpdateResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_5
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    .line 2565
    :catch_3
    move-exception v33

    .line 2566
    .local v33, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to send DHT atomic update response to node because it left grid: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;->nodeId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_9

    .line 2569
    .end local v33    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_4
    move-exception v4

    .line 2570
    .restart local v4    # "e":Lorg/apache/ignite/IgniteCheckedException;
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to send DHT atomic update response (did node leave grid?) [nodeId="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ", req="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v10, 0x5d

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_9
.end method

.method private processDhtAtomicUpdateResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    const/16 v4, 0x5d

    .line 2631
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2632
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing dht atomic update response [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2634
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;->futureVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->atomicFuture(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    .line 2637
    .local v0, "updateFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
    if-eqz v0, :cond_1

    .line 2638
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;)V

    .line 2642
    :goto_0
    return-void

    .line 2640
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find DHT update future for update response [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private processNearAtomicUpdateRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .prologue
    .line 2436
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2437
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing near atomic update request [nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", req="

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

    .line 2439
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->nodeId(Ljava/util/UUID;)V

    .line 2441
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateReplyClos:Lorg/apache/ignite/internal/util/typedef/CI2;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateAllAsyncInternal(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/util/typedef/CI2;)V

    .line 2442
    return-void
.end method

.method private processNearAtomicUpdateResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    const/16 v4, 0x5d

    .line 2450
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2451
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing near atomic update response [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2453
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nodeId(Ljava/util/UUID;)V

    .line 2455
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->futureVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->atomicFuture(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;

    .line 2457
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;
    if-eqz v0, :cond_1

    .line 2458
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V

    .line 2462
    :goto_0
    return-void

    .line 2460
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find near update future for update response (will ignore) [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private processNearGetResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    const/16 v4, 0x5d

    .line 2415
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2416
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing near get response [nodeId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2418
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->mvcc()Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;->futureId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheMvccManager;->future(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;

    .line 2421
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture<TK;TV;>;"
    if-nez v0, :cond_2

    .line 2422
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2423
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find future for get response [sender="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2429
    :cond_1
    :goto_0
    return-void

    .line 2428
    :cond_2
    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridPartitionedGetFuture;->onResult(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;)V

    goto :goto_0
.end method

.method private reloadIfNeeded(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1604
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    const/4 v3, 0x0

    .line 1606
    .local v3, "needReload":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 1607
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 1609
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    if-nez v0, :cond_1

    .line 1606
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1612
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->rawGetOrUnmarshal(Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    .line 1614
    .local v4, "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-nez v4, :cond_0

    .line 1615
    if-nez v3, :cond_2

    .line 1616
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "needReload":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6}, Ljava/util/HashMap;-><init>(IF)V

    .line 1618
    .restart local v3    # "needReload":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Integer;>;"
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1622
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v4    # "val":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_3
    if-eqz v3, :cond_4

    .line 1623
    move-object v2, v3

    .line 1625
    .local v2, "idxMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    new-instance v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$18;

    invoke-direct {v8, p0, v2, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$18;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/Map;Ljava/util/List;)V

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)Z

    .line 1647
    .end local v2    # "idxMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Integer;>;"
    :cond_4
    return-void
.end method

.method private remapToNewPrimary(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V
    .locals 25
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    .prologue
    .line 2304
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2305
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remapping near update request locally: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 2311
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVersions()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2312
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->values()Ljava/util/List;

    move-result-object v14

    .line 2314
    .local v14, "vals":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/16 v16, 0x0

    .line 2315
    .local v16, "drPutVals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    const/16 v17, 0x0

    .line 2344
    .local v17, "drRmvVals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :goto_0
    new-instance v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->invokeArguments()[Ljava/lang/Object;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->returnValue()Z

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->subjectId()Ljava/util/UUID;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->taskNameHash()I

    move-result v23

    move-object/from16 v10, p0

    invoke-direct/range {v8 .. v23}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/util/Collection;[Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;ZZLjavax/cache/expiry/ExpiryPolicy;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/UUID;I)V

    .line 2361
    .local v8, "updateFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->map(Z)V

    .line 2362
    return-void

    .line 2317
    .end local v8    # "updateFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;
    .end local v14    # "vals":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v16    # "drPutVals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    .end local v17    # "drRmvVals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v3, v4, :cond_4

    .line 2318
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v24

    .line 2320
    .local v24, "size":I
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2322
    .restart local v16    # "drPutVals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    move/from16 v0, v24

    if-ge v2, v0, :cond_3

    .line 2323
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictTtl(I)J

    move-result-wide v6

    .line 2325
    .local v6, "ttl":J
    const-wide/16 v4, -0x1

    cmp-long v3, v6, v4

    if-nez v3, :cond_2

    .line 2326
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->value(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2322
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2328
    :cond_2
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrExpirationInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->value(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictExpireTime(I)J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrExpirationInfo;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2332
    .end local v6    # "ttl":J
    :cond_3
    const/4 v14, 0x0

    .line 2333
    .restart local v14    # "vals":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/16 v17, 0x0

    .line 2334
    .restart local v17    # "drRmvVals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    goto/16 :goto_0

    .line 2336
    .end local v2    # "i":I
    .end local v14    # "vals":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v16    # "drPutVals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    .end local v17    # "drRmvVals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .end local v24    # "size":I
    :cond_4
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v3

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v3, v4, :cond_5

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2338
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVersions()Ljava/util/List;

    move-result-object v17

    .line 2340
    .restart local v17    # "drRmvVals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    const/4 v14, 0x0

    .line 2341
    .restart local v14    # "vals":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/16 v16, 0x0

    .restart local v16    # "drPutVals":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    goto/16 :goto_0
.end method

.method private removeAllAsync0(Ljava/util/Collection;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 22
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "retval"    # Z
    .param p4, "rawRetval"    # Z
    .param p5, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;ZZ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture;"
        }
    .end annotation

    .prologue
    .line 860
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    .local p2, "conflictMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/CacheConfiguration;->isStatisticsEnabled()Z

    move-result v19

    .line 862
    .local v19, "statsEnabled":Z
    if-eqz v19, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 864
    .local v20, "start":J
    :goto_0
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 862
    .end local v20    # "start":J
    :cond_0
    const-wide/16 v20, 0x0

    goto :goto_0

    .line 866
    .restart local v20    # "start":J
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->keyCheck:Z

    if-eqz v3, :cond_2

    .line 867
    invoke-virtual/range {p0 .. p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 869
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v4, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_REMOVE:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v18

    .line 873
    .local v18, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->subjectIdPerCall(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Ljava/util/UUID;

    move-result-object v16

    .line 875
    .local v16, "subjId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskNameHash()I

    move-result v17

    .line 877
    .local v17, "taskNameHash":I
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eqz p1, :cond_4

    move-object/from16 v7, p1

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz p1, :cond_5

    const/4 v11, 0x0

    :goto_2
    if-eqz p5, :cond_6

    if-eqz v18, :cond_6

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v14

    :goto_3
    move-object/from16 v4, p0

    move/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v15, p5

    invoke-direct/range {v2 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/util/Collection;[Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;ZZLjavax/cache/expiry/ExpiryPolicy;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/UUID;I)V

    .line 894
    .local v2, "updateFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;
    if-eqz v19, :cond_3

    .line 895
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-direct {v3, v4, v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateRemoveTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 897
    :cond_3
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$16;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->asyncOp(Lorg/apache/ignite/internal/util/typedef/CO;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    return-object v3

    .line 877
    .end local v2    # "updateFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    goto :goto_1

    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    goto :goto_2

    :cond_6
    const/4 v14, 0x0

    goto :goto_3
.end method

.method private scheduleAtomicFutureRecheck()V
    .locals 7

    .prologue
    .line 2255
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v4

    .line 2257
    .local v4, "timeout":J
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v6

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$22;

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$22;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;JJ)V

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 2279
    return-void
.end method

.method private sendDeferredUpdateResponse(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 2602
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->pendingResponses:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;

    .line 2604
    .local v0, "buf":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    if-nez v0, :cond_0

    .line 2605
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;

    .end local v0    # "buf":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;)V

    .line 2607
    .restart local v0    # "buf":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->pendingResponses:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;

    .line 2609
    .local v1, "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    if-nez v1, :cond_1

    .line 2611
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->time()Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;->addTimeoutObject(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)V

    .line 2617
    .end local v1    # "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    :cond_0
    :goto_1
    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->addResponse(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2619
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->pendingResponses:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 2614
    .restart local v1    # "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 2623
    .end local v1    # "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    :cond_2
    return-void
.end method

.method private sendNearUpdateReply(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)V
    .locals 5
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    .prologue
    .line 2670
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->ioPolicy()Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->send(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheMessage;Lorg/apache/ignite/internal/managers/communication/GridIoPolicy;)V
    :try_end_0
    .catch Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2680
    :goto_0
    return-void

    .line 2672
    :catch_0
    move-exception v1

    .line 2673
    .local v1, "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send near update reply to node because it left grid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    goto :goto_0

    .line 2676
    .end local v1    # "ignored":Lorg/apache/ignite/internal/cluster/ClusterTopologyCheckedException;
    :catch_1
    move-exception v0

    .line 2677
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send near update reply (did node leave grid?) [nodeId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private unlockEntries(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    .locals 5
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2212
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "locked":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 2216
    :cond_0
    const/4 v2, 0x0

    .line 2218
    .local v2, "skip":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 2219
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->deleted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2220
    if-nez v2, :cond_2

    .line 2221
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "skip":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Ljava/util/HashSet;-><init>(IF)V

    .line 2223
    .restart local v2    # "skip":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_2
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2228
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 2229
    .restart local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-eqz v0, :cond_4

    .line 2230
    sget-object v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v3, v0}, Lsun/misc/Unsafe;->monitorExit(Ljava/lang/Object;)V

    goto :goto_1

    .line 2234
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    :cond_5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 2235
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    if-eqz v0, :cond_6

    .line 2236
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->onUnlock()V

    goto :goto_2

    .line 2239
    .end local v0    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    :cond_7
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v3, v4, :cond_9

    .line 2249
    :cond_8
    return-void

    .line 2245
    :cond_9
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;

    .line 2246
    .local v0, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;
    if-eqz v0, :cond_a

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 2247
    :cond_b
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v3

    invoke-virtual {v3, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    goto :goto_3
.end method

.method private updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 19
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "invokeArgs"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "retval"    # Z
    .param p7, "rawRetval"    # Z
    .param p8, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9, "waitTopFut"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor;",
            ">;[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;ZZ[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture;"
        }
    .end annotation

    .prologue
    .line 805
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p2, "invokeMap":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor;>;"
    .local p4, "conflictPutMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    .local p5, "conflictRmvMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->keyCheck:Z

    if-eqz v3, :cond_0

    .line 806
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 808
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v4, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_PUT:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v18

    .line 812
    .local v18, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->subjectIdPerCall(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Ljava/util/UUID;

    move-result-object v16

    .line 814
    .local v16, "subjId":Ljava/util/UUID;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->job()Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->currentTaskNameHash()I

    move-result v17

    .line 816
    .local v17, "taskNameHash":I
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/CacheConfiguration;->getWriteSynchronizationMode()Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;

    move-result-object v5

    if-eqz p2, :cond_1

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    :goto_1
    if-eqz p1, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    :goto_2
    if-eqz p4, :cond_7

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    :goto_3
    if-eqz p5, :cond_8

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    :goto_4
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v14

    :goto_5
    move-object/from16 v4, p0

    move-object/from16 v9, p3

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v15, p8

    invoke-direct/range {v2 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Lorg/apache/ignite/cache/CacheWriteSynchronizationMode;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/util/Collection;Ljava/util/Collection;[Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;ZZLjavax/cache/expiry/ExpiryPolicy;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Ljava/util/UUID;I)V

    .line 834
    .local v2, "updateFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$15;

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v3, v0, v2, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$15;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->asyncOp(Lorg/apache/ignite/internal/util/typedef/CO;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v3

    return-object v3

    .line 816
    .end local v2    # "updateFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateFuture;
    :cond_1
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    goto :goto_1

    :cond_4
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    :cond_8
    const/4 v11, 0x0

    goto :goto_4

    :cond_9
    const/4 v14, 0x0

    goto :goto_5
.end method

.method private updatePartialBatch(ZILjava/util/List;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List;Ljava/util/Map;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;Lorg/apache/ignite/internal/util/typedef/CI2;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;ZLorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
    .locals 44
    .param p1, "hasNear"    # Z
    .param p2, "firstEntryIdx"    # I
    .param p4, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p5, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p6    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10, "dhtFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    .param p13, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;
    .param p14, "replicate"    # Z
    .param p15, "batchRes"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;
    .param p16, "taskName"    # Ljava/lang/String;
    .param p17, "expiry"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljavax/cache/processor/EntryProcessor",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;",
            "Lorg/apache/ignite/internal/util/typedef/CI2",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;",
            "Z",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1907
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p3, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .local p6, "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .local p7, "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local p8, "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .local p9, "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .local p11, "completionCb":Lorg/apache/ignite/internal/util/typedef/CI2;, "Lorg/apache/ignite/internal/util/typedef/CI2<Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    if-nez p7, :cond_0

    const/4 v6, 0x1

    move v7, v6

    :goto_0
    if-nez p8, :cond_1

    const/4 v6, 0x1

    :goto_1
    xor-int/2addr v6, v7

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    const/4 v6, 0x0

    move v7, v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1909
    :cond_2
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_3

    invoke-virtual/range {p12 .. p12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVersions()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Cannot be called when there are conflict entries in the batch."

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 1911
    :cond_3
    invoke-virtual/range {p12 .. p12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v19

    .line 1913
    .local v19, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    if-nez p1, :cond_4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->name()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v6, v7, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->hasNearCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_4
    const/4 v4, 0x1

    .line 1915
    .local v4, "checkReaders":Z
    :goto_2
    const/16 v40, 0x0

    .line 1920
    .local v40, "storeErr":Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;
    if-eqz p7, :cond_a

    .line 1922
    :try_start_0
    invoke-virtual/range {p12 .. p12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->fastMap()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v7, 0x0

    new-instance v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$19;

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v8, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$19;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V

    aput-object v8, v6, v7

    move-object/from16 v0, p7

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Map;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v42

    .line 1931
    .local v42, "storeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$20;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v8, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$20;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    const/4 v11, 0x0

    new-array v11, v11, [Lorg/apache/ignite/lang/IgnitePredicate;

    move-object/from16 v0, v42

    invoke-static {v0, v8, v11}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Map;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->putAllToStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Map;)Z
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1941
    :goto_4
    :try_start_2
    sget-object v9, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .line 1963
    .end local v42    # "storeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local v9, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v6

    if-eqz v6, :cond_c

    const/16 v38, 0x1

    .line 1966
    .local v38, "intercept":Z
    :goto_6
    const/16 v37, 0x0

    .local v37, "i":I
    :goto_7
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v37

    if-ge v0, v6, :cond_6

    .line 1967
    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 1969
    .local v5, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_d

    invoke-static {v5}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2107
    .end local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v37    # "i":I
    .end local v38    # "intercept":Z
    :catch_0
    move-exception v34

    .line 2108
    .local v34, "e":Lorg/apache/ignite/IgniteCheckedException;
    if-eqz p7, :cond_5

    invoke-interface/range {p7 .. p7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p8

    .end local p8    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p13

    move-object/from16 v1, p8

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addFailedKeys(Ljava/util/Collection;Ljava/lang/Throwable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 2111
    .end local v34    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_6
    if-eqz v40, :cond_7

    .line 2112
    invoke-virtual/range {v40 .. v40}, Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;->failedKeys()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual/range {v40 .. v40}, Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p13

    invoke-virtual {v0, v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addFailedKeys(Ljava/util/Collection;Ljava/lang/Throwable;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 2114
    :cond_7
    return-object p10

    .line 1913
    .end local v4    # "checkReaders":Z
    .end local v40    # "storeErr":Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;
    .restart local p8    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_2

    .restart local v4    # "checkReaders":Z
    .restart local v40    # "storeErr":Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;
    :cond_9
    move-object/from16 v42, p7

    .line 1922
    goto/16 :goto_3

    .line 1937
    .restart local v42    # "storeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_1
    move-exception v34

    .line 1938
    .local v34, "e":Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;
    move-object/from16 v40, v34

    goto :goto_4

    .line 1945
    .end local v34    # "e":Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;
    .end local v42    # "storeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_a
    :try_start_3
    invoke-virtual/range {p12 .. p12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->fastMap()Z

    move-result v6

    if-eqz v6, :cond_b

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v7, 0x0

    new-instance v8, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$21;

    move-object/from16 v0, p0

    move-object/from16 v1, p12

    invoke-direct {v8, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$21;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;)V

    aput-object v8, v6, v7

    move-object/from16 v0, p8

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v41

    .line 1954
    .local v41, "storeKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :goto_8
    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v6, v7, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->removeAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;)Z
    :try_end_4
    .catch Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1960
    :goto_9
    :try_start_5
    sget-object v9, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    .restart local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    goto/16 :goto_5

    .end local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v41    # "storeKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_b
    move-object/from16 v41, p8

    .line 1945
    goto :goto_8

    .line 1956
    .restart local v41    # "storeKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :catch_2
    move-exception v34

    .line 1957
    .restart local v34    # "e":Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;
    move-object/from16 v40, v34

    goto :goto_9

    .line 1963
    .end local v34    # "e":Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;
    .end local v41    # "storeKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :cond_c
    const/16 v38, 0x0

    goto/16 :goto_6

    .line 1971
    .restart local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v37    # "i":I
    .restart local v38    # "intercept":Z
    :cond_d
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->obsolete()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1972
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_f

    invoke-virtual/range {p12 .. p12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v6, v7, :cond_f

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry can become obsolete only after remove: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 1977
    :cond_e
    if-eqz v40, :cond_10

    invoke-virtual/range {v40 .. v40}, Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;->failedKeys()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v7, v8, v11}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v6

    if-eqz v6, :cond_10

    .line 1966
    :cond_f
    :goto_a
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_7

    .line 1983
    :cond_10
    :try_start_6
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v9, v6, :cond_11

    move-object/from16 v0, p6

    move/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-object v10, v6

    .line 1985
    .local v10, "writeVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_b
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_12

    if-nez v10, :cond_12

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v9, v6, :cond_12

    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "null write value found."

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
    :try_end_6
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2100
    .end local v10    # "writeVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_3
    move-exception v34

    .line 2101
    .local v34, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_7
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_26

    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Entry cannot become obsolete while holding lock."

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1983
    .end local v34    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_11
    const/4 v10, 0x0

    goto :goto_b

    .line 1987
    .restart local v10    # "writeVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_12
    :try_start_8
    invoke-virtual/range {p12 .. p12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->fastMap()Z

    move-result v6

    if-eqz v6, :cond_13

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual/range {p12 .. p12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v11

    invoke-virtual {v6, v7, v8, v11}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v6

    if-eqz v6, :cond_15

    :cond_13
    const/16 v17, 0x1

    .line 1990
    .local v17, "primary":Z
    :goto_c
    const/16 v39, 0x0

    .line 1991
    .local v39, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    const/16 v36, 0x0

    .line 1993
    .local v36, "filteredReaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-eqz v4, :cond_14

    .line 1994
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readers()Ljava/util/Collection;

    move-result-object v39

    .line 1995
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readers()Ljava/util/Collection;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v8, 0x0

    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/ignite/internal/util/typedef/F;->notEqualTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v36

    .line 1998
    :cond_14
    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->locNodeId:Ljava/util/UUID;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v6

    sget-object v14, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-ne v6, v14, :cond_16

    const/16 v18, 0x1

    :goto_d
    const/16 v20, 0x0

    if-eqz p14, :cond_18

    if-eqz v17, :cond_17

    sget-object v21, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_PRIMARY:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    :goto_e
    const-wide/16 v22, -0x1

    const-wide/16 v24, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual/range {p12 .. p12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->subjectId()Ljava/util/UUID;

    move-result-object v29

    move-object/from16 v6, p4

    move-object/from16 v14, p17

    move-object/from16 v30, p16

    invoke-virtual/range {v5 .. v30}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->innerUpdate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/lang/Object;[Ljava/lang/Object;ZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;ZZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZLjava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;

    move-result-object v43

    .line 2024
    .local v43, "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_19

    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->success()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newTtl()J

    move-result-wide v6

    const-wide/16 v12, -0x1

    cmp-long v6, v6, v12

    if-eqz v6, :cond_19

    if-nez p17, :cond_19

    new-instance v6, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "success="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->success()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", newTtl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newTtl()J

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", expiry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 1987
    .end local v17    # "primary":Z
    .end local v36    # "filteredReaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v39    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v43    # "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    :cond_15
    const/16 v17, 0x0

    goto/16 :goto_c

    .line 1998
    .restart local v17    # "primary":Z
    .restart local v36    # "filteredReaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .restart local v39    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_16
    const/16 v18, 0x0

    goto :goto_d

    :cond_17
    sget-object v21, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_BACKUP:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    goto :goto_e

    :cond_18
    sget-object v21, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    goto :goto_e

    .line 2026
    .restart local v43    # "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    :cond_19
    if-eqz v38, :cond_1a

    .line 2027
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v9, v6, :cond_1f

    .line 2028
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v11

    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v12

    invoke-direct {v7, v8, v11, v12}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    invoke-interface {v6, v7}, Lorg/apache/ignite/cache/CacheInterceptor;->onAfterPut(Ljavax/cache/Cache$Entry;)V

    .line 2042
    :cond_1a
    :goto_f
    move-object/from16 v0, p15

    move-object/from16 v1, v43

    move-object/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->access$2800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;Ljava/util/Collection;)V

    .line 2044
    if-nez p10, :cond_1b

    invoke-static/range {v36 .. v36}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 2045
    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p11

    invoke-direct/range {v11 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->createDhtFuture(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;Lorg/apache/ignite/internal/util/typedef/CI2;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    move-result-object p10

    .line 2047
    const/4 v6, 0x1

    move-object/from16 v0, p15

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->access$2900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;Z)V

    .line 2050
    :cond_1b
    if-eqz p10, :cond_1d

    .line 2051
    if-nez p9, :cond_21

    const/16 v23, 0x0

    .line 2054
    .local v23, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_10
    invoke-static/range {p15 .. p15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->access$3000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 2055
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newTtl()J

    move-result-wide v24

    const-wide/16 v26, -0x1

    const/16 v28, 0x0

    move-object/from16 v20, p10

    move-object/from16 v21, v5

    move-object/from16 v22, v10

    invoke-virtual/range {v20 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;->addWriteEntry(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 2062
    :cond_1c
    invoke-static/range {v36 .. v36}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 2063
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newTtl()J

    move-result-wide v30

    const-wide/16 v32, -0x1

    move-object/from16 v25, p10

    move-object/from16 v26, v36

    move-object/from16 v27, v5

    move-object/from16 v28, v10

    move-object/from16 v29, v23

    invoke-virtual/range {v25 .. v33}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;->addNearWriteEntries(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;JJ)V

    .line 2071
    .end local v23    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_1d
    if-eqz p1, :cond_f

    .line 2072
    if-eqz v17, :cond_25

    .line 2073
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->partition()I

    move-result v7

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v7, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 2074
    add-int v26, p2, v37

    .line 2076
    .local v26, "idx":I
    invoke-virtual/range {p12 .. p12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v6, v7, :cond_22

    .line 2077
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newTtl()J

    move-result-wide v28

    const-wide/16 v30, -0x1

    move-object/from16 v25, p13

    move-object/from16 v27, v10

    invoke-virtual/range {v25 .. v31}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addNearValue(ILorg/apache/ignite/internal/processors/cache/CacheObject;JJ)V

    .line 2085
    :goto_11
    if-nez v10, :cond_1e

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->hasValue()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2086
    :cond_1e
    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual/range {p12 .. p12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->messageId()J

    move-result-wide v12

    move-object/from16 v0, v19

    invoke-virtual {v5, v6, v12, v13, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->addReader(Ljava/util/UUID;JLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v35

    .line 2088
    .local v35, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_f

    if-eqz v35, :cond_f

    new-instance v6, Ljava/lang/AssertionError;

    move-object/from16 v0, v35

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 2034
    .end local v26    # "idx":I
    .end local v35    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    :cond_1f
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_20

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v9, v6, :cond_20

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 2037
    :cond_20
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v11

    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->oldValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v12

    invoke-direct {v7, v8, v11, v12}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    invoke-interface {v6, v7}, Lorg/apache/ignite/cache/CacheInterceptor;->onAfterRemove(Ljavax/cache/Cache$Entry;)V

    goto/16 :goto_f

    .line 2051
    :cond_21
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    move-object/from16 v0, p9

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/cache/processor/EntryProcessor;

    move-object/from16 v23, v6

    goto/16 :goto_10

    .line 2083
    .restart local v26    # "idx":I
    :cond_22
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newTtl()J

    move-result-wide v27

    const-wide/16 v29, -0x1

    move-object/from16 v25, p13

    invoke-virtual/range {v25 .. v30}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addNearTtl(IJJ)V

    goto :goto_11

    .line 2091
    .end local v26    # "idx":I
    :cond_23
    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    move-object/from16 v0, v39

    invoke-interface {v0, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 2092
    invoke-interface/range {p5 .. p5}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual/range {p12 .. p12}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->messageId()J

    move-result-wide v12

    invoke-virtual {v5, v6, v12, v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->removeReader(Ljava/util/UUID;J)Z

    goto/16 :goto_a

    .line 2094
    :cond_24
    add-int v6, p2, v37

    move-object/from16 v0, p13

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addSkippedIndex(I)V

    goto/16 :goto_a

    .line 2097
    :cond_25
    add-int v6, p2, v37

    move-object/from16 v0, p13

    invoke-virtual {v0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addSkippedIndex(I)V
    :try_end_8
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_a

    .line 2103
    .end local v10    # "writeVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v17    # "primary":Z
    .end local v36    # "filteredReaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v39    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v43    # "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    .restart local v34    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_26
    :try_start_9
    invoke-virtual/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;->printStackTrace()V
    :try_end_9
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_a
.end method

.method private updateSingle(Lorg/apache/ignite/cluster/ClusterNode;ZLorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;Lorg/apache/ignite/internal/util/typedef/CI2;ZLjava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;
    .locals 58
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "hasNear"    # Z
    .param p3, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    .param p4, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;
    .param p6, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p7, "dhtFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9, "replicate"    # Z
    .param p10, "taskName"    # Ljava/lang/String;
    .param p11, "expiry"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Z",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;",
            "Lorg/apache/ignite/internal/util/typedef/CI2",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;",
            ">;Z",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 1679
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p5, "locked":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .local p8, "completionCb":Lorg/apache/ignite/internal/util/typedef/CI2;, "Lorg/apache/ignite/internal/util/typedef/CI2<Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;>;"
    const/4 v11, 0x0

    .line 1680
    .local v11, "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    const/16 v45, 0x0

    .line 1682
    .local v45, "deleted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v52

    .line 1684
    .local v52, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v19

    .line 1686
    .local v19, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    if-nez p2, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->name()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v6, v7, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->hasNearCache(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v4, 0x1

    .line 1688
    .local v4, "checkReaders":Z
    :goto_0
    const/16 v54, 0x0

    .line 1690
    .local v54, "readersOnly":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v6

    if-eqz v6, :cond_2

    const/16 v28, 0x1

    .line 1693
    .local v28, "intercept":Z
    :goto_1
    const/16 v50, 0x0

    .local v50, "i":I
    move-object/from16 v56, v11

    .end local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .local v56, "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :goto_2
    invoke-interface/range {v52 .. v52}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v50

    if-ge v0, v6, :cond_20

    .line 1694
    move-object/from16 v0, v52

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v51

    check-cast v51, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    .line 1696
    .local v51, "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v9

    .line 1701
    .local v9, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    :try_start_0
    move-object/from16 v0, p5

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 1703
    .local v5, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    if-nez v5, :cond_3

    move-object/from16 v11, v56

    .line 1693
    .end local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v56    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :goto_3
    add-int/lit8 v50, v50, 0x1

    move-object/from16 v56, v11

    .end local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v56    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto :goto_2

    .line 1686
    .end local v4    # "checkReaders":Z
    .end local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v28    # "intercept":Z
    .end local v50    # "i":I
    .end local v51    # "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v54    # "readersOnly":Z
    .end local v56    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1690
    .restart local v4    # "checkReaders":Z
    .restart local v54    # "readersOnly":Z
    :cond_2
    const/16 v28, 0x0

    goto :goto_1

    .line 1706
    .end local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .restart local v28    # "intercept":Z
    .restart local v50    # "i":I
    .restart local v51    # "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v56    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_3
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictVersion(I)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v26

    .line 1707
    .local v26, "newConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictTtl(I)J

    move-result-wide v22

    .line 1708
    .local v22, "newConflictTtl":J
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->conflictExpireTime(I)J

    move-result-wide v24

    .line 1710
    .local v24, "newConflictExpireTime":J
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_4

    move-object/from16 v0, v26

    instance-of v6, v0, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionEx;

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/AssertionError;

    move-object/from16 v0, v26

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    .end local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v22    # "newConflictTtl":J
    .end local v24    # "newConflictExpireTime":J
    .end local v26    # "newConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    :catch_0
    move-exception v47

    move-object/from16 v11, v56

    .line 1860
    .end local v56    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .local v47, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_4
    move-object/from16 v0, p4

    move-object/from16 v1, v51

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addFailedKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1712
    .end local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .end local v47    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v22    # "newConflictTtl":J
    .restart local v24    # "newConflictExpireTime":J
    .restart local v26    # "newConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v56    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_4
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->fastMap()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v12

    invoke-virtual {v6, v7, v8, v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->primary(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_5
    const/16 v17, 0x1

    .line 1715
    .local v17, "primary":Z
    :goto_5
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v9, v6, :cond_e

    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->entryProcessor(I)Ljavax/cache/processor/EntryProcessor;

    move-result-object v10

    .line 1717
    .local v10, "writeVal":Ljava/lang/Object;
    :goto_6
    const/16 v53, 0x0

    .line 1718
    .local v53, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    const/16 v49, 0x0

    .line 1720
    .local v49, "filteredReaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    if-eqz v4, :cond_6

    .line 1721
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readers()Ljava/util/Collection;

    move-result-object v53

    .line 1722
    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readers()Ljava/util/Collection;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v8, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/ignite/internal/util/typedef/F;->notEqualTo(Ljava/lang/Object;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v12

    aput-object v12, v7, v8

    invoke-static {v6, v7}, Lorg/apache/ignite/internal/util/typedef/F;->view(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v49

    .line 1725
    :cond_6
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->locNodeId:Ljava/util/UUID;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->invokeArguments()[Ljava/lang/Object;

    move-result-object v11

    if-eqz v17, :cond_f

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->writeThrough()Z

    move-result v6

    if-eqz v6, :cond_f

    const/4 v12, 0x1

    :goto_7
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->returnValue()Z

    move-result v13

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v6

    sget-object v14, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-ne v6, v14, :cond_10

    const/16 v18, 0x1

    :goto_8
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v20

    if-eqz p9, :cond_12

    if-eqz v17, :cond_11

    sget-object v21, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_PRIMARY:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    :goto_9
    const/16 v27, 0x1

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->subjectId()Ljava/util/UUID;

    move-result-object v29

    move-object/from16 v6, p6

    move-object/from16 v14, p11

    move-object/from16 v30, p10

    invoke-virtual/range {v5 .. v30}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->innerUpdate(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/UUID;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;Ljava/lang/Object;[Ljava/lang/Object;ZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;ZZZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/dr/GridDrType;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;ZZLjava/util/UUID;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;

    move-result-object v57

    .line 1750
    .local v57, "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    if-nez p7, :cond_7

    invoke-static/range {v49 .. v49}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1751
    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p6

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p8

    invoke-direct/range {v11 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->createDhtFuture(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;Lorg/apache/ignite/internal/util/typedef/CI2;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    move-result-object p7

    .line 1753
    const/16 v54, 0x1

    .line 1756
    :cond_7
    if-eqz p7, :cond_b

    .line 1757
    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->sendToDht()Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1758
    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->conflictResolveResult()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;

    move-result-object v43

    .line 1760
    .local v43, "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    if-nez v43, :cond_13

    .line 1761
    const/16 v26, 0x0

    .line 1765
    :cond_8
    :goto_a
    const/16 v33, 0x0

    .line 1767
    .local v33, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->forceTransformBackups()Z

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v9, v6, :cond_9

    .line 1768
    move-object v0, v10

    check-cast v0, Ljavax/cache/processor/EntryProcessor;

    move-object/from16 v33, v0

    .line 1770
    :cond_9
    if-nez v54, :cond_a

    .line 1771
    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v32

    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newTtl()J

    move-result-wide v34

    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->conflictExpireTime()J

    move-result-wide v36

    move-object/from16 v30, p7

    move-object/from16 v31, v5

    move-object/from16 v38, v26

    invoke-virtual/range {v30 .. v38}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;->addWriteEntry(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;JJLorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1779
    :cond_a
    invoke-static/range {v49 .. v49}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 1780
    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v32

    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newTtl()J

    move-result-wide v34

    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->conflictExpireTime()J

    move-result-wide v36

    move-object/from16 v29, p7

    move-object/from16 v30, v49

    move-object/from16 v31, v5

    invoke-virtual/range {v29 .. v37}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;->addNearWriteEntries(Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljavax/cache/processor/EntryProcessor;JJ)V

    .line 1794
    .end local v33    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v43    # "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    :cond_b
    :goto_b
    if-eqz p2, :cond_17

    .line 1795
    if-eqz v17, :cond_1b

    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->sendToDht()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1796
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v6

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->partition()I

    move-result v7

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v7, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->belongs(Lorg/apache/ignite/cluster/ClusterNode;ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 1797
    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->conflictResolveResult()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;

    move-result-object v44

    .line 1800
    .local v44, "ctx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v9, v6, :cond_c

    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    if-eq v10, v6, :cond_15

    .line 1801
    :cond_c
    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v37

    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newTtl()J

    move-result-wide v38

    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->conflictExpireTime()J

    move-result-wide v40

    move-object/from16 v35, p4

    move/from16 v36, v50

    invoke-virtual/range {v35 .. v41}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addNearValue(ILorg/apache/ignite/internal/processors/cache/CacheObject;JJ)V

    .line 1809
    :goto_c
    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 1810
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->messageId()J

    move-result-wide v12

    move-object/from16 v0, v19

    invoke-virtual {v5, v6, v12, v13, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->addReader(Ljava/util/UUID;JLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v48

    .line 1812
    .local v48, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_17

    if-eqz v48, :cond_17

    new-instance v6, Ljava/lang/AssertionError;

    move-object/from16 v0, v48

    invoke-direct {v6, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 1712
    .end local v10    # "writeVal":Ljava/lang/Object;
    .end local v17    # "primary":Z
    .end local v44    # "ctx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
    .end local v48    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Boolean;>;"
    .end local v49    # "filteredReaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v53    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v57    # "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_5

    .line 1715
    .restart local v17    # "primary":Z
    :cond_e
    move-object/from16 v0, p3

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->writeValue(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v10

    goto/16 :goto_6

    .line 1725
    .restart local v10    # "writeVal":Ljava/lang/Object;
    .restart local v49    # "filteredReaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .restart local v53    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_10
    const/16 v18, 0x0

    goto/16 :goto_8

    :cond_11
    sget-object v21, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_BACKUP:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    goto/16 :goto_9

    :cond_12
    sget-object v21, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    goto/16 :goto_9

    .line 1762
    .restart local v43    # "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    .restart local v57    # "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    :cond_13
    invoke-virtual/range {v43 .. v43}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;->isMerge()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1763
    const/16 v26, 0x0

    goto/16 :goto_a

    .line 1788
    .end local v43    # "conflictCtx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;, "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext<**>;"
    :cond_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1789
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry did not pass the filter or conflict resolution (will skip write) [entry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", filter="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 1807
    .restart local v44    # "ctx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
    :cond_15
    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->newTtl()J

    move-result-wide v36

    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->conflictExpireTime()J

    move-result-wide v38

    move-object/from16 v34, p4

    move/from16 v35, v50

    invoke-virtual/range {v34 .. v39}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addNearTtl(IJJ)V

    goto/16 :goto_c

    .line 1815
    .end local v44    # "ctx":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionConflictContext;
    :cond_16
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-static {v0, v6}, Lorg/apache/ignite/internal/util/typedef/F;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1816
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->messageId()J

    move-result-wide v12

    invoke-virtual {v5, v6, v12, v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->removeReader(Ljava/util/UUID;J)Z

    .line 1824
    :cond_17
    :goto_d
    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->removeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    if-eqz v6, :cond_19

    .line 1825
    if-nez v45, :cond_18

    .line 1826
    new-instance v46, Ljava/util/ArrayList;

    invoke-interface/range {v52 .. v52}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v0, v46

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .end local v45    # "deleted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    .local v46, "deleted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    move-object/from16 v45, v46

    .line 1828
    .end local v46    # "deleted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    .restart local v45    # "deleted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    :cond_18
    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->removeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v6

    move-object/from16 v0, v45

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1831
    :cond_19
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v9, v6, :cond_1e

    .line 1832
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_1c

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->returnValue()Z

    move-result v6

    if-eqz v6, :cond_1c

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1818
    :cond_1a
    move-object/from16 v0, p4

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addSkippedIndex(I)V

    goto :goto_d

    .line 1821
    :cond_1b
    move-object/from16 v0, p4

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addSkippedIndex(I)V

    goto :goto_d

    .line 1834
    :cond_1c
    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->computedResult()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v42

    .line 1836
    .local v42, "compRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    if-eqz v42, :cond_21

    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1d

    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_21

    .line 1837
    :cond_1d
    if-nez v56, :cond_22

    .line 1838
    new-instance v11, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v6

    invoke-direct {v11, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(Z)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1840
    .end local v56    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :goto_e
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v14, 0x0

    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual/range {v42 .. v42}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Exception;

    move-object/from16 v13, v51

    invoke-virtual/range {v11 .. v16}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->addEntryProcessResult(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 1859
    :catch_1
    move-exception v47

    goto/16 :goto_4

    .line 1849
    .end local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .end local v42    # "compRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v56    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_1e
    if-nez v56, :cond_21

    .line 1850
    :try_start_3
    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->oldValue()Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v55

    .line 1852
    .local v55, "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    new-instance v11, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v7

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->returnValue()Z

    move-result v8

    if-eqz v8, :cond_1f

    .end local v55    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_f
    invoke-virtual/range {v57 .. v57}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->success()Z

    move-result v8

    move-object/from16 v0, v55

    invoke-direct {v11, v6, v7, v0, v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLjava/lang/Object;Z)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v56    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto/16 :goto_3

    .end local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v55    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v56    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_1f
    const/16 v55, 0x0

    goto :goto_f

    .line 1864
    .end local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v10    # "writeVal":Ljava/lang/Object;
    .end local v17    # "primary":Z
    .end local v22    # "newConflictTtl":J
    .end local v24    # "newConflictExpireTime":J
    .end local v26    # "newConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v49    # "filteredReaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v51    # "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .end local v53    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .end local v55    # "ret":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v57    # "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    :cond_20
    new-instance v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;

    const/4 v7, 0x0

    move-object/from16 v0, v56

    move-object/from16 v1, v45

    move-object/from16 v2, p7

    invoke-direct {v6, v0, v1, v2, v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;)V

    return-object v6

    .restart local v5    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v9    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .restart local v10    # "writeVal":Ljava/lang/Object;
    .restart local v17    # "primary":Z
    .restart local v22    # "newConflictTtl":J
    .restart local v24    # "newConflictExpireTime":J
    .restart local v26    # "newConflictVer":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v49    # "filteredReaders":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .restart local v51    # "k":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .restart local v53    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    .restart local v57    # "updRes":Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    :cond_21
    move-object/from16 v11, v56

    .end local v56    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto/16 :goto_3

    .end local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v42    # "compRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Object;Ljava/lang/Exception;>;"
    .restart local v56    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_22
    move-object/from16 v11, v56

    .end local v56    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v11    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto :goto_e
.end method

.method private updateWithBatch(Lorg/apache/ignite/cluster/ClusterNode;ZLorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;Lorg/apache/ignite/internal/util/typedef/CI2;ZLjava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;
    .locals 81
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "hasNear"    # Z
    .param p3, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    .param p4, "res"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;
    .param p6, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p7, "dhtFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9, "replicate"    # Z
    .param p10, "taskName"    # Ljava/lang/String;
    .param p11, "expiry"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Z",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;",
            "Lorg/apache/ignite/internal/util/typedef/CI2",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;",
            ">;Z",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
        }
    .end annotation

    .prologue
    .line 1276
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p5, "locked":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .local p8, "completionCb":Lorg/apache/ignite/internal/util/typedef/CI2;, "Lorg/apache/ignite/internal/util/typedef/CI2<Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;>;"
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->receiveEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1277
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->returnValue()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v6, v7, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1279
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->loadPreviousValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1281
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->reloadIfNeeded(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v74

    .line 1292
    .local v74, "size":I
    const/16 v33, 0x0

    .line 1294
    .local v33, "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const/16 v35, 0x0

    .line 1296
    .local v35, "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    const/16 v50, 0x0

    .line 1298
    .local v50, "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    const/16 v32, 0x0

    .line 1300
    .local v32, "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    new-instance v41, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;

    const/4 v6, 0x0

    move-object/from16 v0, v41

    invoke-direct {v0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;)V

    .line 1302
    .local v41, "updRes":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;
    new-instance v29, Ljava/util/ArrayList;

    move-object/from16 v0, v29

    move/from16 v1, v74

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1304
    .local v29, "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v71

    .line 1306
    .local v71, "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    const/4 v5, 0x0

    .line 1308
    .local v5, "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    const/16 v28, 0x0

    .line 1310
    .local v28, "firstEntryIdx":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v6

    if-eqz v6, :cond_4

    const/16 v67, 0x1

    .line 1312
    .local v67, "intercept":Z
    :goto_0
    const/16 v66, 0x0

    .local v66, "i":I
    move-object/from16 v70, v5

    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .local v70, "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :goto_1
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v66

    if-ge v0, v6, :cond_1a

    .line 1313
    move-object/from16 v0, p5

    move/from16 v1, v66

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .line 1315
    .local v4, "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    if-nez v4, :cond_5

    move-object/from16 v5, v70

    .line 1312
    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_3
    :goto_2
    add-int/lit8 v66, v66, 0x1

    move-object/from16 v70, v5

    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto :goto_1

    .line 1283
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v28    # "firstEntryIdx":I
    .end local v29    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .end local v32    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .end local v33    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v35    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v41    # "updRes":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;
    .end local v50    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v66    # "i":I
    .end local v67    # "intercept":Z
    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .end local v71    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .end local v74    # "size":I
    :catch_0
    move-exception v20

    .line 1284
    .local v20, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v6

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addFailedKeys(Ljava/util/Collection;Ljava/lang/Throwable;)V

    .line 1286
    new-instance v41, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;

    const/4 v6, 0x0

    move-object/from16 v0, v41

    invoke-direct {v0, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;)V

    .line 1596
    .end local v20    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_3
    return-object v41

    .line 1310
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v28    # "firstEntryIdx":I
    .restart local v29    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .restart local v32    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .restart local v33    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v35    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .restart local v41    # "updRes":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;
    .restart local v50    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v71    # "op":Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;
    .restart local v74    # "size":I
    :cond_4
    const/16 v67, 0x0

    goto :goto_0

    .line 1319
    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v66    # "i":I
    .restart local v67    # "intercept":Z
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v4, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->checkFilter(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1320
    if-eqz p11, :cond_6

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->hasValue()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1321
    invoke-interface/range {p11 .. p11}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->forAccess()J

    move-result-wide v76

    .line 1323
    .local v76, "ttl":J
    const-wide/16 v6, -0x1

    cmp-long v6, v76, v6

    if-eqz v6, :cond_6

    .line 1324
    const/4 v6, 0x0

    move-wide/from16 v0, v76

    invoke-virtual {v4, v6, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->updateTtl(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;J)V

    .line 1326
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v7

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->readers()Ljava/util/Collection;

    move-result-object v8

    move-object/from16 v0, p11

    invoke-interface {v0, v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->ttlUpdated(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Ljava/util/Collection;)V

    .line 1332
    .end local v76    # "ttl":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v6}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1333
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Entry did not pass the filter (will skip write) [entry="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", filter="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->filter()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", res="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1336
    :cond_7
    if-eqz p2, :cond_8

    .line 1337
    move-object/from16 v0, p4

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addSkippedIndex(I)V

    .line 1339
    :cond_8
    add-int/lit8 v28, v28, 0x1

    move-object/from16 v5, v70

    .line 1341
    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto/16 :goto_2

    .line 1344
    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_9
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, v71

    if-ne v0, v6, :cond_11

    .line 1345
    move-object/from16 v0, p3

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->entryProcessor(I)Ljavax/cache/processor/EntryProcessor;

    move-result-object v14

    .line 1347
    .local v14, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->subjectId()Ljava/util/UUID;

    move-result-object v13

    const/16 v16, 0x0

    move-object/from16 v15, p10

    invoke-virtual/range {v4 .. v16}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v24

    .line 1361
    .local v24, "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/16 v25, 0x0

    .line 1362
    .local v25, "oldVal":Ljava/lang/Object;
    const/16 v78, 0x0

    .line 1364
    .local v78, "updatedVal":Ljava/lang/Object;
    new-instance v69, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    move-object/from16 v0, v69

    move-object/from16 v1, v24

    invoke-direct {v0, v6, v7, v1}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1369
    .local v69, "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->invokeArguments()[Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v69

    invoke-interface {v14, v0, v6}, Ljavax/cache/processor/EntryProcessor;->process(Ljavax/cache/processor/MutableEntry;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 1371
    .local v9, "computed":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v69 .. v69}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v78

    .line 1373
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v78

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v75

    .line 1375
    .local v75, "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v9, :cond_21

    .line 1376
    if-nez v70, :cond_20

    .line 1377
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1379
    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v7

    invoke-virtual/range {v69 .. v69}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->key()Ljava/lang/Object;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->addEntryProcessResult(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1391
    .end local v9    # "computed":Ljava/lang/Object;
    .end local v78    # "updatedVal":Ljava/lang/Object;
    :goto_5
    if-nez v75, :cond_d

    .line 1392
    if-eqz v67, :cond_a

    .line 1393
    :try_start_4
    new-instance v20, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v22

    invoke-virtual/range {v69 .. v69}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->key()Ljava/lang/Object;

    move-result-object v23

    invoke-direct/range {v20 .. v25}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    .line 1395
    .local v20, "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforeRemove(Ljavax/cache/Cache$Entry;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v68

    .line 1397
    .local v68, "interceptorRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cancelRemove(Lorg/apache/ignite/lang/IgniteBiTuple;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1402
    .end local v20    # "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    .end local v68    # "interceptorRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    :cond_a
    if-eqz v33, :cond_b

    .line 1403
    const/16 v34, 0x0

    move-object/from16 v26, p0

    move/from16 v27, p2

    move-object/from16 v30, p6

    move-object/from16 v31, p1

    move-object/from16 v36, p7

    move-object/from16 v37, p8

    move-object/from16 v38, p3

    move-object/from16 v39, p4

    move/from16 v40, p9

    move-object/from16 v42, p10

    move-object/from16 v43, p11

    invoke-direct/range {v26 .. v43}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updatePartialBatch(ZILjava/util/List;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List;Ljava/util/Map;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;Lorg/apache/ignite/internal/util/typedef/CI2;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;ZLorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    move-result-object p7

    .line 1422
    move/from16 v28, v66

    .line 1424
    const/16 v33, 0x0

    .line 1425
    const/16 v32, 0x0

    .line 1426
    const/16 v35, 0x0

    .line 1428
    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    .end local v29    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .local v65, "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    move-object/from16 v29, v65

    .line 1432
    .end local v65    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .restart local v29    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    :cond_b
    if-nez v50, :cond_c

    .line 1433
    new-instance v73, Ljava/util/ArrayList;

    invoke-direct/range {v73 .. v74}, Ljava/util/ArrayList;-><init>(I)V

    .end local v50    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .local v73, "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object/from16 v50, v73

    .line 1435
    .end local v73    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v50    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_c
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v64, v35

    .line 1487
    .end local v35    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .local v64, "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :goto_6
    if-nez v64, :cond_1e

    .line 1488
    :try_start_5
    new-instance v35, Ljava/util/HashMap;

    invoke-direct/range {v35 .. v35}, Ljava/util/HashMap;-><init>()V
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1490
    .end local v64    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .restart local v35    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :goto_7
    :try_start_6
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-interface {v0, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1561
    .end local v14    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v24    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v25    # "oldVal":Ljava/lang/Object;
    .end local v69    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v75    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :goto_8
    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 1563
    :catch_1
    move-exception v20

    .line 1564
    .local v20, "e":Lorg/apache/ignite/IgniteCheckedException;
    :goto_9
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addFailedKey(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1382
    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .end local v20    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v14    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v24    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v25    # "oldVal":Ljava/lang/Object;
    .restart local v69    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :catch_2
    move-exception v20

    .line 1383
    .local v20, "e":Ljava/lang/Exception;
    :goto_a
    if-nez v70, :cond_1f

    .line 1384
    :try_start_7
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v6

    invoke-direct {v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(Z)V
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1386
    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :goto_b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v17

    invoke-virtual/range {v69 .. v69}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->key()Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    move-object v15, v5

    invoke-virtual/range {v15 .. v20}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;->addEntryProcessResult(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 1388
    move-object/from16 v75, v24

    .restart local v75    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    goto/16 :goto_5

    .line 1438
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_d
    if-eqz v67, :cond_e

    .line 1439
    new-instance v20, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v21, v0

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v22

    invoke-virtual/range {v69 .. v69}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;->key()Ljava/lang/Object;

    move-result-object v23

    invoke-direct/range {v20 .. v25}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/CacheObject;Ljava/lang/Object;)V

    .line 1441
    .local v20, "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v6

    move-object/from16 v0, v20

    move-object/from16 v1, v78

    invoke-interface {v6, v0, v1}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforePut(Ljavax/cache/Cache$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v79

    .line 1443
    .local v79, "val":Ljava/lang/Object;
    if-eqz v79, :cond_3

    .line 1446
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v79

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v75

    .line 1450
    .end local v20    # "e":Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;
    .end local v79    # "val":Ljava/lang/Object;
    :cond_e
    if-eqz v50, :cond_f

    .line 1451
    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v42, p0

    move/from16 v43, p2

    move/from16 v44, v28

    move-object/from16 v45, v29

    move-object/from16 v46, p6

    move-object/from16 v47, p1

    move-object/from16 v51, v35

    move-object/from16 v52, p7

    move-object/from16 v53, p8

    move-object/from16 v54, p3

    move-object/from16 v55, p4

    move/from16 v56, p9

    move-object/from16 v57, v41

    move-object/from16 v58, p10

    move-object/from16 v59, p11

    invoke-direct/range {v42 .. v59}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updatePartialBatch(ZILjava/util/List;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List;Ljava/util/Map;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;Lorg/apache/ignite/internal/util/typedef/CI2;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;ZLorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    move-result-object p7

    .line 1470
    move/from16 v28, v66

    .line 1472
    const/16 v50, 0x0

    .line 1473
    const/16 v35, 0x0

    .line 1475
    new-instance v65, Ljava/util/ArrayList;

    invoke-direct/range {v65 .. v65}, Ljava/util/ArrayList;-><init>()V

    .end local v29    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .restart local v65    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    move-object/from16 v29, v65

    .line 1478
    .end local v65    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .restart local v29    # "filtered":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    :cond_f
    if-nez v33, :cond_10

    .line 1479
    new-instance v72, Ljava/util/LinkedHashMap;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v72

    move/from16 v1, v74

    invoke-direct {v0, v1, v6}, Ljava/util/LinkedHashMap;-><init>(IF)V
    :try_end_8
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1480
    .end local v33    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .local v72, "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_9
    new-instance v80, Ljava/util/ArrayList;

    move-object/from16 v0, v80

    move/from16 v1, v74

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_9
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_9 .. :try_end_9} :catch_4

    .end local v32    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .local v80, "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    move-object/from16 v32, v80

    .end local v80    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .restart local v32    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    move-object/from16 v33, v72

    .line 1483
    .end local v72    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v33    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_10
    :try_start_a
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v8, 0x0

    move-object/from16 v0, v75

    invoke-static {v0, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    move-object/from16 v0, v32

    move-object/from16 v1, v75

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_a .. :try_end_a} :catch_1

    move-object/from16 v64, v35

    .end local v35    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .restart local v64    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    goto/16 :goto_6

    .line 1492
    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .end local v14    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v24    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v25    # "oldVal":Ljava/lang/Object;
    .end local v64    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v69    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v75    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v35    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_11
    :try_start_b
    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->UPDATE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, v71

    if-ne v0, v6, :cond_16

    .line 1493
    move-object/from16 v0, p3

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->value(I)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v75

    .line 1495
    .restart local v75    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    if-eqz v67, :cond_13

    .line 1496
    const/16 v52, 0x0

    const/16 v53, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->loadPreviousValue()Z

    move-result v54

    const/16 v55, 0x0

    const/16 v56, 0x1

    const/16 v57, 0x1

    const/16 v58, 0x1

    const/16 v59, 0x1

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->subjectId()Ljava/util/UUID;

    move-result-object v60

    const/16 v61, 0x0

    const/16 v63, 0x0

    move-object/from16 v51, v4

    move-object/from16 v62, p10

    invoke-virtual/range {v51 .. v63}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v24

    .line 1510
    .restart local v24    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v10

    move-object/from16 v0, v24

    invoke-direct {v7, v8, v10, v0}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v0, v75

    invoke-interface {v0, v8, v10}, Lorg/apache/ignite/internal/processors/cache/CacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforePut(Ljavax/cache/Cache$Entry;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v79

    .line 1514
    .restart local v79    # "val":Ljava/lang/Object;
    if-nez v79, :cond_12

    move-object/from16 v5, v70

    .line 1515
    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto/16 :goto_2

    .line 1517
    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v79

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->unwrapTemporary(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v75

    .line 1520
    .end local v24    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v79    # "val":Ljava/lang/Object;
    :cond_13
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_14

    if-nez v75, :cond_14

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1563
    .end local v75    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_3
    move-exception v20

    move-object/from16 v5, v70

    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto/16 :goto_9

    .line 1522
    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v75    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :cond_14
    if-nez v33, :cond_15

    .line 1523
    new-instance v72, Ljava/util/LinkedHashMap;

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v72

    move/from16 v1, v74

    invoke-direct {v0, v1, v6}, Ljava/util/LinkedHashMap;-><init>(IF)V
    :try_end_b
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_b .. :try_end_b} :catch_3

    .line 1524
    .end local v33    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v72    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :try_start_c
    new-instance v80, Ljava/util/ArrayList;

    move-object/from16 v0, v80

    move/from16 v1, v74

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_c
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_c .. :try_end_c} :catch_6

    .end local v32    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .restart local v80    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    move-object/from16 v32, v80

    .end local v80    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    .restart local v32    # "writeVals":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/CacheObject;>;"
    move-object/from16 v33, v72

    .line 1527
    .end local v72    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v33    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_15
    :try_start_d
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v8, 0x0

    move-object/from16 v0, v75

    invoke-static {v0, v7, v8}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->value(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    move-object/from16 v0, v32

    move-object/from16 v1, v75

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v5, v70

    .line 1529
    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto/16 :goto_8

    .line 1531
    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .end local v75    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_16
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_17

    sget-object v6, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->DELETE:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-object/from16 v0, v71

    if-eq v0, v6, :cond_17

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1533
    :cond_17
    if-eqz v67, :cond_18

    .line 1534
    const/16 v52, 0x0

    const/16 v53, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->loadPreviousValue()Z

    move-result v54

    const/16 v55, 0x0

    const/16 v56, 0x1

    const/16 v57, 0x1

    const/16 v58, 0x1

    const/16 v59, 0x1

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->subjectId()Ljava/util/UUID;

    move-result-object v60

    const/16 v61, 0x0

    const/16 v63, 0x0

    move-object/from16 v51, v4

    move-object/from16 v62, p10

    invoke-virtual/range {v51 .. v63}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->innerGet(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;ZZZZZZZLjava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v24

    .line 1548
    .restart local v24    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/configuration/CacheConfiguration;->getInterceptor()Lorg/apache/ignite/cache/CacheInterceptor;

    move-result-object v6

    new-instance v7, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v10

    move-object/from16 v0, v24

    invoke-direct {v7, v8, v10, v0}, Lorg/apache/ignite/internal/processors/cache/CacheLazyEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/CacheObject;)V

    invoke-interface {v6, v7}, Lorg/apache/ignite/cache/CacheInterceptor;->onBeforeRemove(Ljavax/cache/Cache$Entry;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v68

    .line 1551
    .restart local v68    # "interceptorRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, v68

    invoke-virtual {v6, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cancelRemove(Lorg/apache/ignite/lang/IgniteBiTuple;)Z

    move-result v6

    if-eqz v6, :cond_18

    move-object/from16 v5, v70

    .line 1552
    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto/16 :goto_2

    .line 1555
    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .end local v24    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v68    # "interceptorRes":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;*>;"
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_18
    if-nez v50, :cond_19

    .line 1556
    new-instance v73, Ljava/util/ArrayList;

    invoke-direct/range {v73 .. v74}, Ljava/util/ArrayList;-><init>(I)V

    .end local v50    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v73    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    move-object/from16 v50, v73

    .line 1558
    .end local v73    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .restart local v50    # "rmvKeys":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_19
    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_d .. :try_end_d} :catch_3

    move-object/from16 v5, v70

    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto/16 :goto_8

    .line 1569
    .end local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_1a
    if-nez v33, :cond_1b

    if-eqz v50, :cond_1d

    :cond_1b
    move-object/from16 v26, p0

    move/from16 v27, p2

    move-object/from16 v30, p6

    move-object/from16 v31, p1

    move-object/from16 v34, v50

    move-object/from16 v36, p7

    move-object/from16 v37, p8

    move-object/from16 v38, p3

    move-object/from16 v39, p4

    move/from16 v40, p9

    move-object/from16 v42, p10

    move-object/from16 v43, p11

    .line 1570
    invoke-direct/range {v26 .. v43}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updatePartialBatch(ZILjava/util/List;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/List;Ljava/util/Map;Ljava/util/Collection;Ljava/util/Map;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;Lorg/apache/ignite/internal/util/typedef/CI2;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;ZLorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    move-result-object p7

    .line 1592
    :cond_1c
    move-object/from16 v0, v41

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->access$2000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;)V

    .line 1594
    move-object/from16 v0, v41

    move-object/from16 v1, v70

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->access$2100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    goto/16 :goto_3

    .line 1590
    :cond_1d
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v6, :cond_1c

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1c

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1563
    .end local v33    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v4    # "entry":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v14    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v24    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v25    # "oldVal":Ljava/lang/Object;
    .restart local v69    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v72    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v75    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    :catch_4
    move-exception v20

    move-object/from16 v33, v72

    .end local v72    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v33    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto/16 :goto_9

    .end local v35    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .restart local v64    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :catch_5
    move-exception v20

    move-object/from16 v35, v64

    .end local v64    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .restart local v35    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    goto/16 :goto_9

    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .end local v14    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v24    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v25    # "oldVal":Ljava/lang/Object;
    .end local v33    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v69    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v72    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_6
    move-exception v20

    move-object/from16 v5, v70

    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    move-object/from16 v33, v72

    .end local v72    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v33    # "putMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    goto/16 :goto_9

    .line 1382
    .restart local v9    # "computed":Ljava/lang/Object;
    .restart local v14    # "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v24    # "old":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v25    # "oldVal":Ljava/lang/Object;
    .restart local v69    # "invokeEntry":Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry;, "Lorg/apache/ignite/internal/processors/cache/CacheInvokeEntry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v78    # "updatedVal":Ljava/lang/Object;
    :catch_7
    move-exception v20

    move-object/from16 v70, v5

    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto/16 :goto_a

    .end local v9    # "computed":Ljava/lang/Object;
    .end local v35    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .end local v78    # "updatedVal":Ljava/lang/Object;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v64    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    :cond_1e
    move-object/from16 v35, v64

    .end local v64    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    .restart local v35    # "entryProcessorMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljavax/cache/processor/EntryProcessor<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;>;"
    goto/16 :goto_7

    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .end local v75    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .local v20, "e":Ljava/lang/Exception;
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_1f
    move-object/from16 v5, v70

    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto/16 :goto_b

    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v9    # "computed":Ljava/lang/Object;
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v75    # "updated":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .restart local v78    # "updatedVal":Ljava/lang/Object;
    :cond_20
    move-object/from16 v5, v70

    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto/16 :goto_4

    .end local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_21
    move-object/from16 v5, v70

    .end local v70    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .restart local v5    # "invokeRes":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    goto/16 :goto_5
.end method

.method private writeThrough()Z
    .locals 1

    .prologue
    .line 604
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->writeThrough()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->configured()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected asyncOp(Lorg/apache/ignite/internal/util/typedef/CO;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/util/typedef/CO",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "op":Lorg/apache/ignite/internal/util/typedef/CO;, "Lorg/apache/ignite/internal/util/typedef/CO<Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->asyncOpAcquire()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    .line 615
    .local v1, "fail":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 645
    :goto_0
    return-object v0

    .line 618
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->lastFut:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;

    .line 620
    .local v3, "holder":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->lock()V

    .line 623
    :try_start_0
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->future()Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 625
    .local v2, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v4

    if-nez v4, :cond_1

    .line 626
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$12;

    invoke-direct {v4, p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$12;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Lorg/apache/ignite/internal/util/typedef/CO;)V

    invoke-direct {v0, v2, v4}, Lorg/apache/ignite/internal/util/future/GridEmbeddedFuture;-><init>(Lorg/apache/ignite/internal/IgniteInternalFuture;Lorg/apache/ignite/lang/IgniteBiClosure;)V

    .line 633
    .local v0, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-virtual {p0, v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->saveFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    goto :goto_0

    .line 638
    .end local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/util/typedef/CO;->apply()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 640
    .restart local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    invoke-virtual {p0, v3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->saveFuture(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    goto :goto_0

    .end local v0    # "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    .end local v2    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$FutureHolder;->unlock()V

    throw v4
.end method

.method public entry(Ljava/lang/Object;)Ljavax/cache/Cache$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
        }
    .end annotation

    .prologue
    .line 257
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->peek(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "forcePrimary"    # Z
    .param p3, "skipTx"    # Z
    .param p4, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "taskName"    # Ljava/lang/String;
    .param p7, "deserializePortable"    # Z
    .param p8, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;ZZ",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "ZZ)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/plugin/security/GridSecurityPermission;->CACHE_READ:Lorg/apache/ignite/plugin/security/GridSecurityPermission;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->checkSecurity(Lorg/apache/ignite/plugin/security/GridSecurityPermission;)V

    .line 293
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    .line 307
    :goto_0
    return-object v0

    .line 296
    :cond_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->keyCheck:Z

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 299
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v9

    .line 301
    .local v9, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->subjectIdPerCall(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)Ljava/util/UUID;

    move-result-object p5

    .line 303
    move-object v4, p5

    .line 305
    .local v4, "subjId0":Ljava/util/UUID;
    if-eqz p8, :cond_2

    const/4 v7, 0x0

    .line 307
    .local v7, "expiryPlc":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_1
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$11;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$11;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/Collection;ZLjava/util/UUID;Ljava/lang/String;ZLjavax/cache/expiry/ExpiryPolicy;Z)V

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->asyncOp(Lorg/apache/ignite/internal/util/typedef/CO;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    goto :goto_0

    .line 305
    .end local v7    # "expiryPlc":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v7

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_1
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 128
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$2;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->setEntryFactory(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;)V

    .line 143
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateReplyClos:Lorg/apache/ignite/internal/util/typedef/CI2;

    .line 169
    return-void
.end method

.method public varargs invoke(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljavax/cache/processor/EntryProcessorResult;
    .locals 2
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/processor/EntryProcessorResult;

    .line 668
    .local v0, "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    if-eqz v0, :cond_0

    .end local v0    # "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    :goto_0
    return-object v0

    .restart local v0    # "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;

    .end local v0    # "res":Ljavax/cache/processor/EntryProcessorResult;, "Ljavax/cache/processor/EntryProcessorResult<TT;>;"
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheInvokeResult;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public varargs invokeAll(Ljava/util/Map;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 753
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->invokeAllAsync(Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public varargs invokeAll(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 676
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public varargs invokeAllAsync(Ljava/util/Map;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<+TK;+",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;>;"
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 761
    const-string v0, "map"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 764
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 766
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 768
    const/4 v9, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    move v7, v6

    move-object v8, v1

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAllAsync(Ljava/util/Set;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<+TK;>;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 725
    const-string v0, "keys"

    const-string v3, "entryProcessor"

    invoke-static {p1, v0, p2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 727
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->validateCacheKeys(Ljava/lang/Iterable;)V

    .line 730
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 732
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$14;

    invoke-direct {v0, p0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$14;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljavax/cache/processor/EntryProcessor;)V

    new-array v3, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {p1, v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->viewAsMap(Ljava/util/Set;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;

    move-result-object v2

    .line 738
    .local v2, "invokeMap":Ljava/util/Map;, "Ljava/util/Map<+TK;Ljavax/cache/processor/EntryProcessor;>;"
    const/4 v9, 0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, v1

    move-object v5, v1

    move v7, v6

    move-object v8, v1

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs invokeAsync(Ljava/lang/Object;Ljavax/cache/processor/EntryProcessor;[Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 11
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljavax/cache/processor/EntryProcessor",
            "<TK;TV;TT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljavax/cache/processor/EntryProcessorResult",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "entryProcessor":Ljavax/cache/processor/EntryProcessor;, "Ljavax/cache/processor/EntryProcessor<TK;TV;TT;>;"
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 684
    const-string v0, "key"

    const-string v3, "entryProcessor"

    invoke-static {p1, v0, p2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->keyCheck:Z

    if-eqz v0, :cond_0

    .line 687
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->validateCacheKey(Ljava/lang/Object;)V

    .line 689
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->denyOnLocalRead()V

    .line 691
    invoke-static {p1, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 694
    .local v2, "invokeMap":Ljava/util/Map;, "Ljava/util/Map<+TK;Ljavax/cache/processor/EntryProcessor;>;"
    const/4 v9, 0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, v1

    move-object v5, v1

    move v7, v6

    move-object v8, v1

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v10

    .line 704
    .local v10, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;Ljavax/cache/processor/EntryProcessorResult<TT;>;>;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$13;

    invoke-direct {v0, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$13;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    invoke-interface {v10, v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public isDhtAtomic()Z
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public localRemoveAll(Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .param p1, "filter"    # Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->keySet([Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removeAllAsync(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public localRemoveAll()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 580
    return-void
.end method

.method protected lockAllAsync(Ljava/util/Collection;JLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;ZZZLorg/apache/ignite/transactions/TransactionIsolation;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 3
    .param p2, "timeout"    # J
    .param p4, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "isInvalidate"    # Z
    .param p6, "isRead"    # Z
    .param p7, "retval"    # Z
    .param p8, "isolation"    # Lorg/apache/ignite/transactions/TransactionIsolation;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    .line 659
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$FinishedLockFuture;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Locks are not supported for CacheAtomicityMode.ATOMIC mode (use CacheAtomicityMode.TRANSACTIONAL instead)"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$FinishedLockFuture;-><init>(Ljava/lang/Throwable;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;)V

    return-object v0
.end method

.method public near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 252
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->near:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;

    return-object v0
.end method

.method public near(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->near:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;

    .line 248
    return-void
.end method

.method public peek(Ljava/lang/Object;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 6
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;",
            ">;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "modes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;>;"
    const/4 v2, 0x0

    .line 263
    const/4 v1, 0x0

    .line 265
    .local v1, "val":Lorg/apache/ignite/internal/util/lang/GridTuple;, "Lorg/apache/ignite/internal/util/lang/GridTuple<TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;->NEAR_ONLY:Lorg/apache/ignite/internal/processors/cache/GridCachePeekMode;

    invoke-interface {p2, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 267
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->tm()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxManager;->txx()Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;

    move-result-object v4

    invoke-virtual {p0, v3, p1, p2, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->peek0(ZLjava/lang/Object;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;)Lorg/apache/ignite/internal/util/lang/GridTuple;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 277
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/lang/GridTuple;->get()Ljava/lang/Object;

    move-result-object v2

    :cond_2
    :goto_0
    return-object v2

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "ignored":Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filter validation failed for key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 2
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->putAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 483
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 484
    return-void
.end method

.method public putAllAsync(Ljava/util/Map;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 489
    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move v7, v6

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->RET2NULL:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public putAllConflict(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 503
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "conflictMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->putAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 504
    return-void
.end method

.method public putAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "conflictMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;>;"
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 508
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->onReceiveCacheEntriesReceived(I)V

    .line 510
    const/4 v9, 0x1

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, p1

    move-object v5, v1

    move v7, v6

    move-object v8, v1

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs putAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/F0;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 390
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->putIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->noValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->putAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs putx(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 2
    .param p3, "cached"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "J[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {p0 .. p6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public putx(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 1
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 336
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public varargs putxAsync(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;J[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p3, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "ttl"    # J
    .param p6, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
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
    .line 360
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/F0;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public putxIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->putxIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public putxIfAbsentAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->noValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs remove(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;
    .locals 1
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 524
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removeAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 567
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removeAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public varargs removeAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 1
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removeAllAsync(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 540
    return-void
.end method

.method public removeAllAsync(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v3, 0x0

    .line 545
    const-string v0, "keys"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removeAllAsync0(Ljava/util/Collection;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->RET2NULL:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->chain(Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAllConflict(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "conflictMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removeAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 591
    return-void
.end method

.method public removeAllConflictAsync(Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "conflictMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 595
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->onReceiveCacheEntriesReceived(I)V

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    move-object v5, v1

    .line 597
    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removeAllAsync0(Ljava/util/Collection;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removeAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removexAsync(Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs removeAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removeAllAsync0(Ljava/util/Collection;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public removex(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method

.method public varargs removex(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Z
    .locals 1
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 553
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removexAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public removexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v3, 0x1

    .line 461
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 463
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v5

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removeAllAsync0(Ljava/util/Collection;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public varargs removexAsync(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .param p2, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    .line 560
    const-string v0, "key"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    move-object v0, p0

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->removeAllAsync0(Ljava/util/Collection;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->replaceAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public replaceAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 419
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->putAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replaceAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    const-string v1, "key"

    const-string v3, "oldVal"

    const-string v5, "newVal"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replacex(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 455
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->replacexAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method

.method public replacex(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 426
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->replacexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public replacexAsync(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->putxAsync(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public replacexAsync(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldVal":Ljava/lang/Object;, "TV;"
    .local p3, "newVal":Ljava/lang/Object;, "TV;"
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 469
    invoke-static {p1, p3}, Lorg/apache/ignite/internal/util/typedef/F;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->equalsValArray(Ljava/lang/Object;)[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v8

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move v7, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 174
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->start()V

    .line 176
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    .line 178
    .local v0, "m":Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dht()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;->metrics0()Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->delegate(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;)V

    .line 181
    :cond_0
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->metrics:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    .line 183
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    .line 185
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->start()V

    .line 187
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    const-class v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$4;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$4;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 193
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    const-class v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$5;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$5;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 199
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    const-class v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$6;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$6;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 205
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    const-class v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateRequest;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$7;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$7;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 211
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    const-class v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateResponse;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$8;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$8;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 217
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    const-class v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicDeferredUpdateResponse;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$9;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$9;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 224
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->near:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearAtomicCache;

    if-nez v1, :cond_1

    .line 225
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    const-class v3, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetResponse;

    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$10;

    invoke-direct {v4, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$10;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;)V

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 232
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->disconnectLsnr:Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addDisconnectListener(Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;)V

    .line 233
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    .line 237
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->pendingResponses:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;

    .line 238
    .local v0, "buf":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;->access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;)V

    goto :goto_0

    .line 240
    .end local v0    # "buf":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$DeferredResponseBuffer;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>.DeferredResponseBuffer;"
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->disconnectLsnr:Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->removeDisconnectListener(Lorg/apache/ignite/internal/managers/communication/GridDisconnectListener;)V

    .line 241
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2684
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryPutIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 375
    const-string v0, "key"

    const-string/jumbo v1, "val"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    invoke-static {p1, p2}, Lorg/apache/ignite/internal/util/F0;->asMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->noValArray()[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move-result-object v8

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move v9, v7

    invoke-direct/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateAllAsync0(Ljava/util/Map;Ljava/util/Map;[Ljava/lang/Object;Ljava/util/Map;Ljava/util/Map;ZZ[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public updateAllAsyncInternal(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/util/typedef/CI2;)V
    .locals 4
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Lorg/apache/ignite/internal/util/typedef/CI2",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1046
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p3, "completionCb":Lorg/apache/ignite/internal/util/typedef/CI2;, "Lorg/apache/ignite/internal/util/typedef/CI2<Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->request(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    .line 1048
    .local v0, "forceFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/lang/Object;>;"
    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateAllAsyncInternal0(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/util/typedef/CI2;)V

    .line 1057
    :goto_0
    return-void

    .line 1051
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$17;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$17;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/util/typedef/CI2;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    goto :goto_0
.end method

.method public updateAllAsyncInternal0(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/util/typedef/CI2;)V
    .locals 29
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Lorg/apache/ignite/internal/util/typedef/CI2",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1071
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache<TK;TV;>;"
    .local p3, "completionCb":Lorg/apache/ignite/internal/util/typedef/CI2;, "Lorg/apache/ignite/internal/util/typedef/CI2<Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;>;"
    new-instance v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->futureVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-direct {v5, v2, v0, v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;-><init>(ILjava/util/UUID;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1075
    .local v5, "res":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v23

    .line 1077
    .local v23, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->returnValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v2

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-eq v2, v4, :cond_0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1079
    :cond_0
    const/4 v13, 0x0

    .line 1081
    .local v13, "dhtFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
    const/16 v25, 0x0

    .line 1083
    .local v25, "remap":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->task()Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->taskNameHash()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->resolveTaskName(I)Ljava/lang/String;

    move-result-object v16

    .line 1085
    .local v16, "taskName":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1090
    .local v17, "expiry":Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->lockEntries(Ljava/util/List;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/List;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 1091
    .local v11, "locked":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    const/16 v18, 0x0

    .line 1094
    .local v18, "deleted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readLock()V
    :try_end_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1097
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->stopping()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1098
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to perform cache operation (cache is stopped): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->addFailedKeys(Ljava/util/Collection;Ljava/lang/Throwable;)V

    .line 1101
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v5}, Lorg/apache/ignite/internal/util/typedef/CI2;->apply(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1196
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V
    :try_end_3
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1205
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->unlockEntries(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1208
    if-eqz v18, :cond_1b

    .line 1209
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_4
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1217
    .end local v11    # "locked":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .end local v18    # "deleted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    :catch_0
    move-exception v22

    .line 1218
    .local v22, "ignore":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v2

    sget-object v4, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->PRIMARY:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-eq v2, v4, :cond_17

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1210
    .end local v22    # "ignore":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .restart local v11    # "locked":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .restart local v18    # "deleted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    :cond_1
    :try_start_5
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1212
    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1213
    .local v20, "e":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v6, v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_5
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 1108
    .end local v20    # "e":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAtomicWriteOrderMode()Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    move-result-object v2

    sget-object v4, Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;->CLOCK:Lorg/apache/ignite/cache/CacheAtomicWriteOrderMode;

    if-ne v2, v4, :cond_e

    .line 1110
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->node(Ljava/util/UUID;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v24

    .line 1112
    .local v24, "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-nez v24, :cond_7

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Node originated update request left grid: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1196
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V
    :try_end_7
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1205
    :try_start_8
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->unlockEntries(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1208
    if-eqz v18, :cond_1b

    .line 1209
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1210
    :cond_5
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1212
    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1213
    .restart local v20    # "e":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v6, v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_8
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    .line 1118
    .end local v20    # "e":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->checkClearForceTransformBackups(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Ljava/util/List;)V

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v4}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->cacheNearNode(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/String;)Z

    move-result v8

    .line 1122
    .local v8, "hasNear":Z
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->updateVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    .line 1124
    .local v3, "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    if-nez v3, :cond_8

    .line 1126
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->next(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v3

    .line 1128
    if-eqz v8, :cond_8

    .line 1129
    invoke-virtual {v5, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->nearVersion(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 1132
    :cond_8
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_9

    if-nez v3, :cond_9

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got null version for update request: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1196
    .end local v3    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v8    # "hasNear":Z
    .end local v24    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :catchall_0
    move-exception v2

    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    throw v2
    :try_end_a
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1199
    :catch_1
    move-exception v19

    .line 1200
    .local v19, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_b
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_11

    new-instance v2, Ljava/lang/AssertionError;

    const-string v4, "Entry should not become obsolete while holding lock."

    invoke-direct {v2, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1205
    .end local v19    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :catchall_1
    move-exception v2

    move-object v6, v2

    :try_start_c
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->unlockEntries(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1208
    if-eqz v18, :cond_16

    .line 1209
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_14

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_c
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_c .. :try_end_c} :catch_0

    .line 1134
    .restart local v3    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v8    # "hasNear":Z
    .restart local v24    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_9
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using cache version for update request on primary node [ver="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", req="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x5d

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1138
    :cond_a
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->createDhtFuture(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;Lorg/apache/ignite/internal/util/typedef/CI2;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    move-result-object v13

    .line 1140
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->expiryPolicy(Ljavax/cache/expiry/ExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;

    move-result-object v17

    .line 1142
    const/16 v26, 0x0

    .line 1144
    .local v26, "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_d

    invoke-direct/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->writeThrough()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->isLocalStore()Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->dr()Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrManager;->receiveEnabled()Z

    move-result v2

    if-nez v2, :cond_d

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v15

    move-object/from16 v6, p0

    move-object/from16 v7, v24

    move-object/from16 v9, p2

    move-object v10, v5

    move-object v12, v3

    move-object/from16 v14, p3

    invoke-direct/range {v6 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateWithBatch(Lorg/apache/ignite/cluster/ClusterNode;ZLorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;Lorg/apache/ignite/internal/util/typedef/CI2;ZLjava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;

    move-result-object v27

    .line 1162
    .local v27, "updRes":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;)Ljava/util/Collection;

    move-result-object v18

    .line 1163
    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->dhtFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    move-result-object v13

    .line 1165
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->operation()Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    move-result-object v2

    sget-object v4, Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;->TRANSFORM:Lorg/apache/ignite/internal/processors/cache/GridCacheOperation;

    if-ne v2, v4, :cond_b

    .line 1166
    invoke-virtual/range {v27 .. v27}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->invokeResults()Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v26

    .line 1186
    .end local v27    # "updRes":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;
    :cond_b
    :goto_2
    if-nez v26, :cond_c

    .line 1187
    new-instance v26, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .end local v26    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/cluster/ClusterNode;->isLocal()Z

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-direct {v0, v2, v4, v6, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLjava/lang/Object;Z)V

    .line 1189
    .restart local v26    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_c
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->returnValue(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1196
    .end local v3    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v8    # "hasNear":Z
    .end local v24    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v26    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :goto_3
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V
    :try_end_e
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 1205
    :try_start_f
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->unlockEntries(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1208
    if-eqz v18, :cond_19

    .line 1209
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_f

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_f
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_f .. :try_end_f} :catch_0

    .line 1169
    .restart local v3    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .restart local v8    # "hasNear":Z
    .restart local v24    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v26    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    :cond_d
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v15

    move-object/from16 v6, p0

    move-object/from16 v7, v24

    move-object/from16 v9, p2

    move-object v10, v5

    move-object v12, v3

    move-object/from16 v14, p3

    invoke-direct/range {v6 .. v17}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->updateSingle(Lorg/apache/ignite/cluster/ClusterNode;ZLorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;Ljava/util/List;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;Lorg/apache/ignite/internal/util/typedef/CI2;ZLjava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;

    move-result-object v28

    .line 1181
    .local v28, "updRes":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult<TK;TV;>;"
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;->access$1700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v26

    .line 1182
    invoke-static/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;->access$1800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;)Ljava/util/Collection;

    move-result-object v18

    .line 1183
    invoke-virtual/range {v28 .. v28}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;->dhtFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v13

    goto :goto_2

    .line 1193
    .end local v3    # "ver":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .end local v8    # "hasNear":Z
    .end local v24    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v26    # "retVal":Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .end local v28    # "updRes":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult<TK;TV;>;"
    :cond_e
    const/16 v25, 0x1

    goto :goto_3

    .line 1210
    :cond_f
    :try_start_11
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1212
    :cond_10
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1213
    .restart local v20    # "e":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v6, v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_11
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_11 .. :try_end_11} :catch_0

    goto :goto_4

    .line 1202
    .end local v20    # "e":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .restart local v19    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_11
    :try_start_12
    invoke-virtual/range {v19 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 1205
    :try_start_13
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->unlockEntries(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 1208
    if-eqz v18, :cond_19

    .line 1209
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_12

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1210
    :cond_12
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1212
    :cond_13
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1213
    .restart local v20    # "e":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v6, v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    goto :goto_5

    .line 1210
    .end local v19    # "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    .end local v20    # "e":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_14
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->deferredDelete()Z

    move-result v2

    if-nez v2, :cond_15

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1212
    :cond_15
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 1213
    .restart local v20    # "e":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    invoke-virtual/range {v20 .. v20}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-virtual {v7, v2, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    goto :goto_6

    .end local v20    # "e":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    :cond_16
    throw v6
    :try_end_13
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_13 .. :try_end_13} :catch_0

    .line 1220
    .end local v11    # "locked":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    .end local v18    # "deleted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    .restart local v22    # "ignore":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught invalid partition exception for cache entry (will remap update request): "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1223
    :cond_18
    const/16 v25, 0x1

    .line 1226
    .end local v22    # "ignore":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    :cond_19
    if-eqz v25, :cond_1c

    .line 1227
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->$assertionsDisabled:Z

    if-nez v2, :cond_1a

    if-eqz v13, :cond_1a

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1229
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateRequest;->keys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridNearAtomicUpdateResponse;->remapKeys(Ljava/util/List;)V

    .line 1231
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v5}, Lorg/apache/ignite/internal/util/typedef/CI2;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1242
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;->sendTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    .line 1243
    :cond_1b
    return-void

    .line 1235
    :cond_1c
    if-eqz v13, :cond_1d

    .line 1236
    invoke-virtual {v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;->map()V

    goto :goto_7

    .line 1239
    :cond_1d
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-interface {v0, v1, v5}, Lorg/apache/ignite/internal/util/typedef/CI2;->apply(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_7
.end method
