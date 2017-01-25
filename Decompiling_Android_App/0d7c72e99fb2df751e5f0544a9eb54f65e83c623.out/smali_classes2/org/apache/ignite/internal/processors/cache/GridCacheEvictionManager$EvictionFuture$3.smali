.class Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$3;
.super Ljava/lang/Object;
.source "GridCacheEvictionManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->complete(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;)V
    .locals 0

    .prologue
    .line 1935
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$3;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1935
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$3;->apply(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/util/UUID;)Z
    .locals 1
    .param p1, "e"    # Ljava/util/UUID;

    .prologue
    .line 1937
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$3;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->access$2400(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->error()Z

    move-result v0

    return v0
.end method
