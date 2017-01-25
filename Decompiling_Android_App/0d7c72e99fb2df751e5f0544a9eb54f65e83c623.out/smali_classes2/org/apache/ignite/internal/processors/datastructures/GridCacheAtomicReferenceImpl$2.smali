.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$2;
.super Ljava/lang/Object;
.source "GridCacheAtomicReferenceImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)V
    .locals 0

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$2;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$2;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl.2;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;

    .line 73
    .local v0, "ref":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue<TT;>;"
    if-nez v0, :cond_0

    .line 74
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find atomic reference with given name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->name:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicReferenceValue;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method
