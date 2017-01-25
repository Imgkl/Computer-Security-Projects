.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$16;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;
.source "GridCacheSwapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheapIterator(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 1699
    .local p2, "x0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected partitionIterator(I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .locals 2
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<+",
            "Ljava/util/Map$Entry",
            "<[B[B>;>;"
        }
    .end annotation

    .prologue
    .line 1701
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$16;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->iterator(Ljava/lang/String;I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v0

    return-object v0
.end method
