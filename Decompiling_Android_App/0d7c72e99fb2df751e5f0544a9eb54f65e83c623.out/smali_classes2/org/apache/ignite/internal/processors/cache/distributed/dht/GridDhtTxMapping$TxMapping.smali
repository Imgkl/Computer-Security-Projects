.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
.super Ljava/lang/Object;
.source "GridDhtTxMapping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TxMapping"
.end annotation


# instance fields
.field private final backups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private final primary:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Iterable;)V
    .locals 1
    .param p1, "primary"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, "backups":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->primary:Ljava/util/UUID;

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->backups:Ljava/util/Set;

    .line 158
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->add(Ljava/lang/Iterable;)V

    .line 159
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Iterable;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x1"    # Ljava/lang/Iterable;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$1;

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;-><init>(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;)Ljava/util/UUID;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->primary:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->add(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->backups:Ljava/util/Set;

    return-object v0
.end method

.method private add(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "backups":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 166
    .local v1, "n":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtTxMapping$TxMapping;->backups:Ljava/util/Set;

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v1    # "n":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_0
    return-void
.end method
