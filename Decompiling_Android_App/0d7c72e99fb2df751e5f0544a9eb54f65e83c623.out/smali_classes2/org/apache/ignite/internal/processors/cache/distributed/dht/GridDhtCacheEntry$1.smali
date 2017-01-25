.class final Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$1;
.super Ljava/lang/Object;
.source "GridDhtCacheEntry.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry;
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
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 46
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$1;->apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;)Ljava/util/UUID;
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    .prologue
    .line 48
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->nodeId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
