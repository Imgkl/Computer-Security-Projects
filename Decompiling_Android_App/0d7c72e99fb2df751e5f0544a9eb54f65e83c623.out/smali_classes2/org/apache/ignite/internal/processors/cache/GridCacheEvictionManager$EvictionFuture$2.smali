.class Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$2;
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
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;)V
    .locals 0

    .prologue
    .line 1928
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$2;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1928
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$2;->apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;)Z
    .locals 1
    .param p1, "res"    # Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;

    .prologue
    .line 1930
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionResponse;->error()Z

    move-result v0

    return v0
.end method
