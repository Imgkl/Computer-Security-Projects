.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$6;
.super Ljava/lang/Object;
.source "GridDhtPreloader.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->onInitialExchangeComplete(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;J)V
    .locals 0

    .prologue
    .line 233
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$6;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader.6;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$6;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 235
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$6;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader.6;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->access$1100(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed rebalancing in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->access$1200(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->config()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[cache="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$6;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    # getter for: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->access$1300(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$6;->val$start:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->log(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 237
    return-void
.end method
