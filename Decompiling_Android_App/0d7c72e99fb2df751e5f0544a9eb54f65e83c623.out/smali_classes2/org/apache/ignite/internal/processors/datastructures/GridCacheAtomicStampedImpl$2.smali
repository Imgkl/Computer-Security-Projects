.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$2;
.super Ljava/lang/Object;
.source "GridCacheAtomicStampedImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<TT;TS;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)V
    .locals 0

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$2;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$2;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl.2;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$2;->call()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method public call()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TT;TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$2;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl.2;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;

    .line 75
    .local v0, "stmp":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue<TT;TS;>;"
    if-nez v0, :cond_0

    .line 76
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find atomic stamped with given name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->name:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicStampedValue;->get()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v1

    return-object v1
.end method
