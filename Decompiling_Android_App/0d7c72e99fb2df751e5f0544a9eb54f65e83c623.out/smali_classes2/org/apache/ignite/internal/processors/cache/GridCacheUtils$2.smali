.class final Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$2;
.super Ljava/lang/Object;
.source "GridCacheUtils.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$2;->apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;
    .locals 1
    .param p1, "p"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;

    .prologue
    .line 114
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;->state()Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtPartitionState;

    move-result-object v0

    return-object v0
.end method
