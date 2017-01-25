.class Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$1;
.super Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;
.source "GridCacheEvictionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->registerTimeoutObject()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;J)V
    .locals 0
    .param p2, "x0"    # J

    .prologue
    .line 1768
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObjectAdapter;-><init>(J)V

    return-void
.end method


# virtual methods
.method public onTimeout()V
    .locals 2

    .prologue
    .line 1770
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;->access$2300(Lorg/apache/ignite/internal/processors/cache/GridCacheEvictionManager$EvictionFuture;Z)V

    .line 1771
    return-void
.end method
