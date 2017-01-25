.class Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$8;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;
.source "GridCacheSwapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offHeapKeyIterator(ZZLorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 1329
    .local p2, "x0":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$8;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$PartitionsKeyIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected partitionIterator(I)Ljava/util/Iterator;
    .locals 3
    .param p1, "part"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1333
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$8;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$8;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->offheap:Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$600(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager$8;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->spaceName:Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lorg/apache/ignite/internal/processors/offheap/GridOffHeapProcessor;->iterator(Ljava/lang/String;I)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;

    move-result-object v1

    # invokes: Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->keyIterator(Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;
    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;->access$700(Lorg/apache/ignite/internal/processors/cache/GridCacheSwapManager;Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
