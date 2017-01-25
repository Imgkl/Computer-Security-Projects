.class Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$4;
.super Ljava/lang/Object;
.source "GridCacheProcessor.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy",
        "<**>;",
        "Lorg/apache/ignite/internal/processors/cache/GridCache",
        "<**>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)V
    .locals 0

    .prologue
    .line 2174
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$4;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2174
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$4;->apply(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;)Lorg/apache/ignite/internal/processors/cache/GridCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy",
            "<**>;)",
            "Lorg/apache/ignite/internal/processors/cache/GridCache",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 2176
    .local p1, "entries":Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;, "Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy<**>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/IgniteCacheProxy;->legacyProxy()Lorg/apache/ignite/internal/processors/cache/GridCacheProxyImpl;

    move-result-object v0

    return-object v0
.end method
