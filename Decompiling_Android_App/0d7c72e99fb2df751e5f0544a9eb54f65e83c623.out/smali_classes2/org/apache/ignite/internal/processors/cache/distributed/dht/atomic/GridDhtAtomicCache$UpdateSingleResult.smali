.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;
.super Ljava/lang/Object;
.source "GridDhtAtomicCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateSingleResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final deleted:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dhtFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

.field private final retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;)V
    .locals 0
    .param p1, "retVal"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .param p3, "dhtFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;>;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2707
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult<TK;TV;>;"
    .local p2, "deleted":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2708
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .line 2709
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;->deleted:Ljava/util/Collection;

    .line 2710
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;->dhtFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    .line 2711
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .param p2, "x1"    # Ljava/util/Collection;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;

    .prologue
    .line 2690
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;)Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;

    .prologue
    .line 2690
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;->returnValue()Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;

    .prologue
    .line 2690
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;->deleted()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private deleted()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2724
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;->deleted:Ljava/util/Collection;

    return-object v0
.end method

.method private returnValue()Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1

    .prologue
    .line 2717
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;->retVal:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method


# virtual methods
.method public dhtFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
    .locals 1

    .prologue
    .line 2731
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateSingleResult;->dhtFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    return-object v0
.end method
