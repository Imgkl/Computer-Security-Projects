.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$4;
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
        "Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;)V
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$4;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader.4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$4;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$MessageHandler;-><init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onMessage(Lorg/apache/ignite/cluster/ClusterNode;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 148
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$4;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader.4;"
    check-cast p2, Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$4;->onMessage(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;)V

    return-void
.end method

.method protected onMessage(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;

    .prologue
    .line 150
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$4;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader.4;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$4;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    # invokes: Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->processAffinityAssignmentRequest(Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;)V
    invoke-static {v0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->access$900(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/cluster/ClusterNode;Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtAffinityAssignmentRequest;)V

    .line 151
    return-void
.end method
