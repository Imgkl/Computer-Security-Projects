.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$3;
.super Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$MessageHandler;
.source "GridDhtPreloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader",
        "<TK;TV;>.MessageHandler<",
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)V
    .locals 1

    .prologue
    .line 141
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader.3;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$MessageHandler;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 141
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader.3;"
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$3;->onMessage(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;)V

    return-void
.end method

.method public onMessage(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;

    .prologue
    .line 143
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$3;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader.3;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$3;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->processForceKeyResponse(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;)V
    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->access$800(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysResponse;)V

    .line 144
    return-void
.end method
