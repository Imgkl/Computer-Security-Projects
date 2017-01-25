.class Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$10;
.super Ljava/lang/Object;
.source "GridDhtPreloader.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;->request(Ljava/util/Collection;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtFuture;
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
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

.field final synthetic val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;)V
    .locals 0

    .prologue
    .line 520
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$10;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader.10;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$10;->this$0:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$10;->val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 520
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$10;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader.10;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$10;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$10;, "Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader.10;"
    .local p1, "syncFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtPreloader$10;->val$fut:Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/distributed/dht/preloader/GridDhtForceKeysFuture;->init()V

    .line 523
    return-void
.end method
