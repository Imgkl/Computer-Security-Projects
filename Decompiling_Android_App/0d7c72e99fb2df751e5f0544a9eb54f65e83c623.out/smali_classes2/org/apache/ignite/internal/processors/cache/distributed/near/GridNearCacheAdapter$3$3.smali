.class Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$3;
.super Ljava/lang/Object;
.source "GridNearCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;->apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtLocalPartition;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;)V
    .locals 0

    .prologue
    .line 372
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$3;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 372
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3.3;"
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$3;->apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;)Z
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;

    .prologue
    .line 374
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/near/GridNearCacheAdapter$3.3;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;->obsoleteOrDeleted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
