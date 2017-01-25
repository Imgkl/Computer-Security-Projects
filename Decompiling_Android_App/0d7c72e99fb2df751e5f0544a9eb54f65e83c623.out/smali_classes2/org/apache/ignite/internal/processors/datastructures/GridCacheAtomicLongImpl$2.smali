.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$2;
.super Ljava/lang/Object;
.source "GridCacheAtomicLongImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->atomicView:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$100(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->key:Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$000(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Lorg/apache/ignite/internal/processors/datastructures/GridCacheInternalKey;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;

    .line 73
    .local v0, "val":Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;
    if-nez v0, :cond_0

    .line 74
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to find atomic long with given name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$2;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;

    # getter for: Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->name:Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;->access$200(Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 76
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongValue;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheAtomicLongImpl$2;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
