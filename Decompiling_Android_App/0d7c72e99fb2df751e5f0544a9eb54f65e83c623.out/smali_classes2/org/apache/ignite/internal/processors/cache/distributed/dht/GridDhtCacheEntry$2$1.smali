.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$2$1;
.super Ljava/lang/Object;
.source "GridDhtCacheEntry.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPlainRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$2;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$2;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$2;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 451
    monitor-enter p0

    .line 453
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$2$1;->this$1:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$2;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$2;->val$reader0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtCacheEntry$ReaderId;->resetTxFuture()Lorg/apache/ignite/internal/processors/cache/GridCacheMultiTxFuture;

    .line 454
    monitor-exit p0

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
