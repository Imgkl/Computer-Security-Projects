.class public abstract Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
.super Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;
.source "GridDhtCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;,
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntryIterator;,
        Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private multiTxFuts:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;",
            ">;"
        }
    .end annotation
.end field

.field private multiTxHolder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;",
            ">;>;"
        }
    .end annotation
.end field

.field protected preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCachePreloader",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxHolder:Ljava/lang/ThreadLocal;

    .line 63
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 70
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getStartSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;I)V

    .line 60
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxHolder:Ljava/lang/ThreadLocal;

    .line 63
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 78
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    .line 79
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V
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
    .line 88
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;)V

    .line 60
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxHolder:Ljava/lang/ThreadLocal;

    .line 63
    new-instance v0, Lorg/jsr166/ConcurrentHashMap8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxFuts:Ljava/util/concurrent/ConcurrentMap;

    .line 90
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;

    invoke-direct {v0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopologyImpl;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    .line 91
    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->processTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;)V

    return-void
.end method

.method static synthetic access$1000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZLjavax/cache/expiry/ExpiryPolicy;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;
    .param p1, "x1"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4, "x4"    # Lorg/apache/ignite/lang/IgniteBiPredicate;
    .param p5, "x5"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p6, "x6"    # Z
    .param p7, "x7"    # Ljavax/cache/expiry/ExpiryPolicy;

    .prologue
    .line 49
    invoke-direct/range {p0 .. p7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->loadEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZLjavax/cache/expiry/ExpiryPolicy;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    return-object v0
.end method

.method private loadEntry(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZLjavax/cache/expiry/ExpiryPolicy;)V
    .locals 15
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "val"    # Ljava/lang/Object;
    .param p3, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p4    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p6, "replicate"    # Z
    .param p7, "plc"    # Ljavax/cache/expiry/ExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Object;",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Z",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 433
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .local p4, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    if-eqz p4, :cond_1

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v5

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v8}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-interface {v0, v5, v1}, Lorg/apache/ignite/lang/IgniteBiPredicate;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->partition(Ljava/lang/Object;)I

    move-result v8

    sget-object v9, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v10, 0x1

    invoke-interface {v5, v8, v9, v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v14

    .line 441
    .local v14, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->reserve()Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_9

    .line 442
    const/4 v3, 0x0

    .line 445
    .local v3, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_start_1
    invoke-static/range {p7 .. p7}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->ttlForLoad(Ljavax/cache/expiry/ExpiryPolicy;)J
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 447
    .local v6, "ttl":J
    const-wide/16 v8, -0x2

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 465
    if-eqz v3, :cond_2

    .line 466
    :try_start_2
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 468
    :cond_2
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V
    :try_end_2
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 474
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v6    # "ttl":J
    .end local v14    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :catch_0
    move-exception v2

    .line 475
    .local v2, "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 476
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring entry for partition that does not belong [key="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", val="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", err="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    .end local v2    # "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    .restart local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .restart local v6    # "ttl":J
    .restart local v14    # "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_3
    :try_start_3
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    move-result-object v4

    .line 452
    .local v4, "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v3

    .line 454
    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    if-eqz p6, :cond_5

    sget-object v12, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_LOAD:Lorg/apache/ignite/internal/processors/dr/GridDrType;

    :goto_1
    move-object/from16 v5, p3

    move-object/from16 v11, p5

    invoke-interface/range {v3 .. v12}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->initialValue(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/dr/GridDrType;)Z
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 465
    if-eqz v3, :cond_4

    .line 466
    :try_start_4
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 468
    :cond_4
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V
    :try_end_4
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 454
    :cond_5
    :try_start_5
    sget-object v12, Lorg/apache/ignite/internal/processors/dr/GridDrType;->DR_NONE:Lorg/apache/ignite/internal/processors/dr/GridDrType;
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 457
    .end local v4    # "cacheVal":Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .end local v6    # "ttl":J
    :catch_1
    move-exception v2

    .line 458
    .local v2, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_6
    new-instance v5, Lorg/apache/ignite/IgniteException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to put cache value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 465
    .end local v2    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_6

    .line 466
    :try_start_7
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v8, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 468
    :cond_6
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    throw v5
    :try_end_7
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_7 .. :try_end_7} :catch_0

    .line 460
    :catch_2
    move-exception v13

    .line 461
    .local v13, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :try_start_8
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 462
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got removed entry during loadCache (will ignore): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 465
    :cond_7
    if-eqz v3, :cond_8

    .line 466
    :try_start_9
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 468
    :cond_8
    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->release()V

    goto/16 :goto_0

    .line 471
    .end local v3    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .end local v13    # "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    :cond_9
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 472
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Will node load entry into cache (partition is invalid): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0
.end method

.method private processTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;)V
    .locals 6
    .param p1, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;

    .prologue
    .line 742
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;->keys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;->keys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;->versions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;->ttl()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->updateTtl(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/List;Ljava/util/List;J)V

    .line 745
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;->nearKeys()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 746
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;

    move-result-object v1

    .line 748
    .local v1, "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 750
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;->nearKeys()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;->nearVersions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;->ttl()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->updateTtl(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/List;Ljava/util/List;J)V

    .line 752
    .end local v1    # "near":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter<TK;TV;>;"
    :cond_2
    return-void
.end method

.method private updateTtl(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/List;Ljava/util/List;J)V
    .locals 8
    .param p4, "ttl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
            "<TK;TV;>;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 764
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .local p1, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<TK;TV;>;"
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    .local p3, "vers":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;>;"
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    invoke-static {p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 765
    :cond_0
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 767
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 769
    .local v3, "size":I
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isSwapOrOffheapEnabled()Z

    move-result v4

    .line 771
    .local v4, "swap":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_6

    .line 773
    const/4 v1, 0x0

    .line 776
    .local v1, "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v4, :cond_4

    .line 777
    :try_start_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 779
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v1, v5, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->unswap(ZZ)Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 784
    :goto_1
    if-eqz v1, :cond_2

    .line 785
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    invoke-interface {v1, v5, p4, p5}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->updateTtl(Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    :cond_2
    if-eqz v1, :cond_3

    .line 789
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v5

    sget-object v6, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v5, v1, v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 771
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 782
    :cond_4
    :try_start_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    invoke-virtual {p1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    .line 788
    :catchall_0
    move-exception v5

    if-eqz v1, :cond_5

    .line 789
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->evicts()Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;

    move-result-object v6

    sget-object v7, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    invoke-virtual {v6, v1, v7}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager;->touch(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    :cond_5
    throw v5
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v6, "Failed to unswap entry."

    invoke-interface {v5, v6, v0}, Lorg/apache/ignite/IgniteLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 796
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v1    # "entry":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :cond_6
    return-void
.end method


# virtual methods
.method public beginMultiUpdate()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 193
    .local v5, "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;>;"
    if-eqz v5, :cond_0

    .line 194
    new-instance v6, Lorg/apache/ignite/IgniteCheckedException;

    const-string v7, "Nested multi-update locks are not supported"

    invoke-direct {v6, v7}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 196
    :cond_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readLock()V

    .line 204
    :try_start_0
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->localNodeId()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    .line 206
    .local v1, "lockId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    .line 208
    .local v4, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;

    const/4 v6, 0x0

    invoke-direct {v0, v4, v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;-><init>(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$1;)V

    .line 210
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;

    .line 212
    .local v2, "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;
    sget-boolean v6, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-eqz v2, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .end local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;
    .end local v1    # "lockId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v2    # "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;
    .end local v4    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    invoke-interface {v7}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    throw v6

    .line 214
    .restart local v0    # "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;
    .restart local v1    # "lockId":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v2    # "old":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;
    .restart local v4    # "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->topologyVersionFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    move-result-object v3

    .line 216
    .local v3, "topFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxHolder:Ljava/lang/ThreadLocal;

    invoke-static {v1, v3}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    invoke-interface {v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    .line 222
    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;->get()Ljava/lang/Object;

    .line 224
    return-object v4
.end method

.method public dhtPreloader()Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    instance-of v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    return-object v0
.end method

.method public endMultiUpdate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 235
    .local v2, "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;>;"
    if-nez v2, :cond_0

    .line 236
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    const-string v4, "Multi-update was not started or released twice."

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 238
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readLock()V

    .line 241
    :try_start_0
    invoke-virtual {v2}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteUuid;

    .line 243
    .local v0, "lockId":Lorg/apache/ignite/lang/IgniteUuid;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;

    .line 245
    .local v1, "multiFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxHolder:Ljava/lang/ThreadLocal;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 248
    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;->onDone(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    invoke-interface {v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    .line 253
    return-void

    .line 251
    .end local v0    # "lockId":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v1    # "multiFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->readUnlock()V

    throw v3
.end method

.method public entry(Ljava/lang/Object;)Ljavax/cache/Cache$Entry;
    .locals 1
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
    .line 293
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->entry(Ljava/lang/Object;)Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
        }
    .end annotation

    .prologue
    .line 312
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    return-object v0
.end method

.method public entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "touch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    return-object v0
.end method

.method public entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZZ)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .locals 10
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p3, "allowDetached"    # Z
    .param p4, "touch"    # Z

    .prologue
    .line 348
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    if-eqz p3, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->localNode(Ljava/lang/Object;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V

    .line 356
    :goto_0
    return-object v0

    .line 348
    :cond_0
    invoke-virtual {p0, p1, p4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Z)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v9

    .line 353
    .local v9, "e":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    if-nez p3, :cond_1

    .line 354
    throw v9

    .line 356
    :cond_1
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v8}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/colocated/GridDhtDetachedCacheEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;ILorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntry;JI)V

    goto :goto_0
.end method

.method public entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
        }
    .end annotation

    .prologue
    .line 321
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    return-object v0
.end method

.method public entryExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .param p2, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
        }
    .end annotation

    .prologue
    .line 331
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->entryEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    return-object v0
.end method

.method public entrySet(I)Ljava/util/Set;
    .locals 2
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 806
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$PartitionEntrySet;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;ILorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$1;)V

    return-object v0
.end method

.method public getAllAsync(Ljava/util/Collection;ZZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Ljava/util/UUID;Ljava/lang/String;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 11
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
    .line 515
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move v8, p2

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->getAllAsync(Ljava/util/Collection;ZLorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;ZLjava/util/UUID;Ljava/lang/String;ZZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method getDhtAllAsync(Ljava/util/Collection;ZLjava/util/UUID;Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 10
    .param p2, "readThrough"    # Z
    .param p3, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "taskName"    # Ljava/lang/String;
    .param p5, "expiry"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;Z",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            "Z)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Lorg/apache/ignite/internal/processors/cache/CacheObject;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 555
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->getAllAsync0(Ljava/util/Collection;ZZLjava/util/UUID;Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;ZZ)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public getDhtAsync(Ljava/util/UUID;JLjava/util/LinkedHashMap;ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;ILorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;
    .locals 14
    .param p1, "reader"    # Ljava/util/UUID;
    .param p2, "msgId"    # J
    .param p5, "readThrough"    # Z
    .param p6, "reload"    # Z
    .param p7, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .param p8, "subjId"    # Ljava/util/UUID;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9, "taskNameHash"    # I
    .param p10, "expiry"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11, "skipVals"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "J",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            "Ljava/lang/Boolean;",
            ">;ZZ",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            "Ljava/util/UUID;",
            "I",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;",
            "Z)",
            "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .local p4, "keys":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Ljava/lang/Boolean;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    const/4 v8, 0x0

    move-wide/from16 v2, p2

    move-object v4, p1

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;JLjava/util/UUID;Ljava/util/LinkedHashMap;ZZLorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalEx;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;ILorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)V

    .line 601
    .local v0, "fut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture<TK;TV;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtGetFuture;->init()V

    .line 603
    return-object v0
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 95
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->setEntryFactory(Lorg/apache/ignite/internal/processors/cache/GridCacheMapEntryFactory;)V

    .line 102
    return-void
.end method

.method public localEntriesIterator(ZZ)Ljava/util/Iterator;
    .locals 7
    .param p1, "primary"    # Z
    .param p2, "backup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 926
    sget-boolean v5, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 928
    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 929
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->entries0()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->keepPortable()Z

    move-result v6

    if-nez v6, :cond_1

    :goto_0
    invoke-virtual {p0, v5, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->iterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;

    move-result-object v3

    .line 993
    :goto_1
    return-object v3

    :cond_1
    move v3, v4

    .line 929
    goto :goto_0

    .line 931
    :cond_2
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v2

    .line 933
    .local v2, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->currentLocalPartitions()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 935
    .local v1, "partIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$7;

    invoke-direct {v0, p0, v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$7;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Ljava/util/Iterator;ZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)V

    .line 993
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;>;"
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->keepPortable()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->iterator(Ljava/util/Iterator;Z)Ljava/util/Iterator;

    move-result-object v3

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method public localLoad(Ljava/util/Collection;Ljavax/cache/expiry/ExpiryPolicy;)V
    .locals 9
    .param p2, "plc"    # Ljavax/cache/expiry/ExpiryPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->isLocalStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->localLoad(Ljava/util/Collection;Ljavax/cache/expiry/ExpiryPolicy;)V

    .line 385
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->nextForLoad(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    .line 372
    .local v2, "ver0":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v4

    .line 374
    .local v4, "replicate":Z
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    .line 376
    .local v3, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    if-eqz p2, :cond_1

    move-object v5, p2

    .line 378
    .local v5, "plc0":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheKeysView(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v6

    .line 380
    .local v6, "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$3;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZLjavax/cache/expiry/ExpiryPolicy;)V

    invoke-virtual {v7, v8, v6, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadAllFromStore(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteBiInClosure;)Z

    goto :goto_0

    .line 376
    .end local v5    # "plc0":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v6    # "keys0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;>;"
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v5

    goto :goto_1
.end method

.method public localLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V
    .locals 10
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .local p1, "p":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->isLocalStore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->localLoadCache(Lorg/apache/ignite/lang/IgniteBiPredicate;[Ljava/lang/Object;)V

    .line 415
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->shared()Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSharedContext;->versions()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionManager;->nextForLoad(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    move-result-object v2

    .line 398
    .local v2, "ver0":Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isDrEnabled()Z

    move-result v5

    .line 400
    .local v5, "replicate":Z
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v4

    .line 402
    .local v4, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v8

    .line 404
    .local v8, "prj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v7

    .line 406
    .local v7, "plc0":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_1
    if-eqz v7, :cond_2

    move-object v6, v7

    .line 408
    .local v6, "plc":Ljavax/cache/expiry/ExpiryPolicy;
    :goto_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->store()Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;

    move-result-object v9

    new-instance v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$4;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;ZLjavax/cache/expiry/ExpiryPolicy;)V

    invoke-virtual {v9, v0, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheStoreManager;->loadCache(Lorg/apache/ignite/internal/util/lang/GridInClosure3;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 404
    .end local v6    # "plc":Ljavax/cache/expiry/ExpiryPolicy;
    .end local v7    # "plc0":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 406
    .restart local v7    # "plc0":Ljavax/cache/expiry/ExpiryPolicy;
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->expiry()Ljavax/cache/expiry/ExpiryPolicy;

    move-result-object v6

    goto :goto_2
.end method

.method public multiUpdateFinishFuture(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 4
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 262
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    const/4 v0, 0x0

    .line 264
    .local v0, "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxFuts:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;

    .line 265
    .local v2, "multiFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;
    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;->access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;)Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->compareTo(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 266
    if-nez v0, :cond_1

    .line 267
    new-instance v0, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;

    .end local v0    # "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;>;"
    invoke-direct {v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;-><init>()V

    .line 269
    .restart local v0    # "fut":Lorg/apache/ignite/internal/util/future/GridCompoundFuture;, "Lorg/apache/ignite/internal/util/future/GridCompoundFuture<Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/Object;>;"
    :cond_1
    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->add(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    goto :goto_0

    .line 273
    .end local v2    # "multiFut":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$MultiUpdateFuture;
    :cond_2
    if-eqz v0, :cond_3

    .line 274
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridCompoundFuture;->markInitialized()V

    .line 276
    :cond_3
    return-object v0
.end method

.method public multiUpdateTopologyFuture()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->multiTxHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteBiTuple;

    .line 181
    .local v0, "tup":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTopologyFuture;

    goto :goto_0
.end method

.method public abstract near()Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 6
    .param p1, "entry"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 903
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->isDht()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 905
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->partition()I

    move-result v3

    sget-object v4, Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;->NONE:Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->localPartition(ILorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    move-result-object v1

    .line 910
    .local v1, "part":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    if-eqz v1, :cond_1

    .line 912
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->onDeferredDelete(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :cond_1
    :goto_0
    return-void

    .line 914
    :catch_0
    move-exception v0

    .line 915
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to enqueue deleted entry [key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ver="

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

.method public onKernalStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->onKernalStart()V

    .line 131
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->onKernalStart()V

    .line 132
    return-void
.end method

.method public onKernalStop()V
    .locals 1

    .prologue
    .line 136
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->onKernalStop()V

    .line 138
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->onKernalStop()V

    .line 140
    :cond_0
    return-void
.end method

.method public peekExx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
    .locals 1
    .param p1, "key"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    return-object v0
.end method

.method public preloader()Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/processors/cache/GridCachePreloader",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    return-object v0
.end method

.method public primarySize()I
    .locals 5

    .prologue
    .line 483
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    const/4 v2, 0x0

    .line 485
    .local v2, "sum":I
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinity()Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAffinityManager;->affinityTopologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v3

    .line 487
    .local v3, "topVer":Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->currentLocalPartitions()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .line 488
    .local v1, "p":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    invoke-virtual {v1, v3}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->primary(Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 489
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->publicSize()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_0

    .line 492
    .end local v1    # "p":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;
    :cond_1
    return v2
.end method

.method public printMemoryStats()V
    .locals 2

    .prologue
    .line 144
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->printMemoryStats()V

    .line 146
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    const/16 v1, 0x400

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;->printMemoryStats(I)V

    .line 147
    return-void
.end method

.method protected processNearGetRequest(Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;)V
    .locals 20
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "req"    # Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;

    .prologue
    .line 611
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    sget-boolean v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 613
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;->accessTtl()J

    move-result-wide v18

    .line 615
    .local v18, "ttl":J
    invoke-static/range {v18 .. v19}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;->forAccess(J)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;

    move-result-object v14

    .line 617
    .local v14, "expiryPlc":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;->messageId()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;->keys()Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;->readThrough()Z

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;->reload()Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;->topologyVersion()Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;->subjectId()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;->taskNameHash()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;->skipValues()Z

    move-result v15

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v15}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->getDhtAsync(Ljava/util/UUID;JLjava/util/LinkedHashMap;ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Ljava/util/UUID;ILorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;Z)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;

    move-result-object v16

    .line 629
    .local v16, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Collection<Lorg/apache/ignite/internal/processors/cache/GridCacheEntryInfo;>;>;"
    new-instance v4, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v2, v14}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$5;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearGetRequest;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$CacheExpiryPolicy;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 664
    return-void
.end method

.method public reload(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->reload(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 534
    :goto_0
    return-object v1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendTtlUpdateRequest(Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V
    .locals 2
    .param p1, "expiryPlc"    # Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 670
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;->entries()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->closures()Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$6;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;Lorg/apache/ignite/internal/processors/cache/IgniteCacheExpiryPolicy;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->runLocalSafe(Ljava/lang/Runnable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 736
    :cond_0
    return-void
.end method

.method public splitClearLocally()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheClearAllRunnable",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 897
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->affinityNode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->splitClearLocally()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->start()V

    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->io()Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheId()I

    move-result v1

    const-class v2, Lorg/apache/ignite/internal/processors/cache/distributed/GridCacheTtlUpdateRequest;

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$2;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter$2;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;)V

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheIoManager;->addHandler(ILjava/lang/Class;Lorg/apache/ignite/lang/IgniteBiInClosure;)V

    .line 113
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    const/4 v1, 0x0

    .line 117
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->stop()V

    .line 119
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;->stop()V

    .line 123
    :cond_0
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->preldr:Lorg/apache/ignite/internal/processors/cache/GridCachePreloader;

    .line 124
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 811
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/cache/distributed/GridDistributedCacheAdapter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topology()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;
    .locals 1

    .prologue
    .line 158
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->top:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionTopology;

    return-object v0
.end method

.method public unlockAll(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
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

    .prologue
    .line 801
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 802
    :cond_0
    return-void
.end method
