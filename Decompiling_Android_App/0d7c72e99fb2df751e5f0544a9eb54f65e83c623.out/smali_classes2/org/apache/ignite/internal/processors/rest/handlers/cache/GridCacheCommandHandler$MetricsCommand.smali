.class Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$MetricsCommand;
.super Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheCommand;
.source "GridCacheCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetricsCommand"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1024
    const-class v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$MetricsCommand;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1024
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheCommand;-><init>(Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;

    .prologue
    .line 1024
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$MetricsCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 1024
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/GridKernalContext;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$MetricsCommand;->applyx(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/processors/cache/CacheProjection;Lorg/apache/ignite/internal/GridKernalContext;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1030
    .local p1, "c":Lorg/apache/ignite/internal/processors/cache/CacheProjection;, "Lorg/apache/ignite/internal/processors/cache/CacheProjection<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->cache()Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->metrics()Lorg/apache/ignite/cache/CacheMetrics;

    move-result-object v0

    .line 1032
    .local v0, "metrics":Lorg/apache/ignite/cache/CacheMetrics;
    sget-boolean v1, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$MetricsCommand;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1034
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;

    new-instance v2, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;

    invoke-interface {v0}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheGets()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-interface {v0}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheRemovals()J

    move-result-wide v4

    invoke-interface {v0}, Lorg/apache/ignite/cache/CacheMetrics;->getCachePuts()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v4, v4

    invoke-interface {v0}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheHits()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-interface {v0}, Lorg/apache/ignite/cache/CacheMetrics;->getCacheMisses()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;-><init>(IIII)V

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method
