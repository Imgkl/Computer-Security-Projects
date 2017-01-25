.class Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$VisorCacheMetricsCollectorJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorCacheMetricsCollectorTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorCacheMetricsCollectorJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Lorg/apache/ignite/lang/IgniteBiTuple;Z)V
    .locals 0
    .param p2, "debug"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 87
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/lang/IgniteBiTuple;ZLorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/lang/IgniteBiTuple;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$1;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$VisorCacheMetricsCollectorJob;-><init>(Lorg/apache/ignite/lang/IgniteBiTuple;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 74
    check-cast p1, Lorg/apache/ignite/lang/IgniteBiTuple;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$VisorCacheMetricsCollectorJob;->run(Lorg/apache/ignite/lang/IgniteBiTuple;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected run(Lorg/apache/ignite/lang/IgniteBiTuple;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "arg":Lorg/apache/ignite/lang/IgniteBiTuple;, "Lorg/apache/ignite/lang/IgniteBiTuple<Ljava/lang/Boolean;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get1()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$VisorCacheMetricsCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v4, v5}, Lorg/apache/ignite/internal/IgniteEx;->cachesx([Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v1

    .line 95
    .local v1, "caches":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/cache/GridCache<**>;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 96
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v3

    .line 98
    .local v3, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCache;

    .line 99
    .local v0, "c":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<**>;"
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->from(Lorg/apache/ignite/internal/processors/cache/GridCache;)Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 91
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<**>;"
    .end local v1    # "caches":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/cache/GridCache<**>;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;>;"
    :cond_0
    iget-object v5, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$VisorCacheMetricsCollectorJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-virtual {p1}, Lorg/apache/ignite/lang/IgniteBiTuple;->get2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v5, v4}, Lorg/apache/ignite/internal/IgniteEx;->cachex(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/F;->asList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 104
    .restart local v1    # "caches":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/ignite/internal/processors/cache/GridCache<**>;>;"
    :cond_1
    const/4 v3, 0x0

    :cond_2
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetricsCollectorTask$VisorCacheMetricsCollectorJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
