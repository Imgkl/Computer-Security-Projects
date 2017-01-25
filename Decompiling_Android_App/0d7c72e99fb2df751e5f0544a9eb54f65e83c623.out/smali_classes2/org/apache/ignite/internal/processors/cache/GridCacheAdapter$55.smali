.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$55;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncInOp;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->removeAllConflict(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter",
        "<TK;TV;>.SyncInOp;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$drMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;ZLjava/util/Map;)V
    .locals 0
    .param p2, "x0"    # Z

    .prologue
    .line 3380
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$55;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.55;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$55;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$55;->val$drMap:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$SyncInOp;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Z)V

    return-void
.end method


# virtual methods
.method public inOp(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V
    .locals 2
    .param p1, "tx"    # Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 3382
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$55;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.55;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$55;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$55;->val$drMap:Ljava/util/Map;

    invoke-virtual {p1, v0, v1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;->removeAllDrAsync(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Map;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 3383
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3386
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$55;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.55;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeAllConflict [drMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$55;->val$drMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
