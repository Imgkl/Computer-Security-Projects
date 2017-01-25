.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;
.super Ljava/lang/Object;
.source "GridDhtAtomicCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateBatchResult"
.end annotation


# instance fields
.field private deleted:Ljava/util/Collection;
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

.field private dhtFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

.field private invokeRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

.field private readersOnly:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$1;

    .prologue
    .line 2738
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;

    .prologue
    .line 2738
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->deleted()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    .prologue
    .line 2738
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->dhtFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;)V

    return-void
.end method

.method static synthetic access$2100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .prologue
    .line 2738
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->invokeResult(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V

    return-void
.end method

.method static synthetic access$2800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .param p2, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    .param p3, "x3"    # Ljava/util/Collection;

    .prologue
    .line 2738
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->addDeleted(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$2900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;
    .param p1, "x1"    # Z

    .prologue
    .line 2738
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->readersOnly(Z)V

    return-void
.end method

.method static synthetic access$3000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;

    .prologue
    .line 2738
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->readersOnly()Z

    move-result v0

    return v0
.end method

.method private addDeleted(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;Ljava/util/Collection;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .param p2, "updRes"    # Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2759
    .local p3, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;>;"
    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->removeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2760
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->deleted:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 2761
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->deleted:Ljava/util/Collection;

    .line 2763
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->deleted:Ljava/util/Collection;

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheUpdateAtomicResult;->removeVersion()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2765
    :cond_1
    return-void
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
    .line 2771
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->deleted:Ljava/util/Collection;

    return-object v0
.end method

.method private dhtFuture(Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;)V
    .locals 0
    .param p1, "dhtFut"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2799
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->dhtFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    .line 2800
    return-void
.end method

.method private invokeResult(Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;)V
    .locals 0
    .param p1, "invokeRes"    # Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .prologue
    .line 2785
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->invokeRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    .line 2786
    return-void
.end method

.method private readersOnly(Z)V
    .locals 0
    .param p1, "readersOnly"    # Z

    .prologue
    .line 2813
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->readersOnly:Z

    .line 2814
    return-void
.end method

.method private readersOnly()Z
    .locals 1

    .prologue
    .line 2806
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->readersOnly:Z

    return v0
.end method


# virtual methods
.method public dhtFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;
    .locals 1

    .prologue
    .line 2778
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->dhtFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicUpdateFuture;

    return-object v0
.end method

.method invokeResults()Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;
    .locals 1

    .prologue
    .line 2792
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/atomic/GridDhtAtomicCache$UpdateBatchResult;->invokeRes:Lorg/apache/ignite/internal/processors/cache/GridCacheReturn;

    return-object v0
.end method
