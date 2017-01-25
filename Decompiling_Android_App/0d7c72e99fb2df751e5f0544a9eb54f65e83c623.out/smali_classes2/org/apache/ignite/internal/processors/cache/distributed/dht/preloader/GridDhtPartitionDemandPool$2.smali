.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;
.super Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.source "GridDhtPartitionDemandPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;->addAssignments(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloaderAssignments;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

.field final synthetic val$exchFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;JLorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 359
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool.2;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;->val$exchFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 2

    .prologue
    .line 361
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool.2;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;->val$exchFut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2$1;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionDemandPool$2;)V

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPartitionsExchangeFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 366
    return-void
.end method
