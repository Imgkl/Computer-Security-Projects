.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$15;
.super Lorg/apache/ignite/internal/util/typedef/CX1;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->getAllAsync(Ljava/util/Collection;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

.field final synthetic val$keys:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 1925
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$15;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.15;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$15;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$15;->val$keys:Ljava/util/Collection;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1925
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$15;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.15;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$15;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1927
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$15;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter.15;"
    .local p1, "f":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Ljava/util/Map<TK;TV;>;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$15;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$15;->val$keys:Ljava/util/Collection;

    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Ljava/util/Collection;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
