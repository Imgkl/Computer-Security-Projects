.class public Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;
.super Ljava/lang/Object;
.source "GridCacheRestMetrics.java"


# instance fields
.field private hits:I

.field private misses:I

.field private reads:I

.field private writes:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .param p1, "reads"    # I
    .param p2, "writes"    # I
    .param p3, "hits"    # I
    .param p4, "misses"    # I

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->reads:I

    .line 50
    iput p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->writes:I

    .line 51
    iput p3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->hits:I

    .line 52
    iput p4, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->misses:I

    .line 53
    return-void
.end method


# virtual methods
.method public getHits()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->hits:I

    return v0
.end method

.method public getMisses()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->misses:I

    return v0
.end method

.method public getReads()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->reads:I

    return v0
.end method

.method public getWrites()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->writes:I

    return v0
.end method

.method public map()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lorg/apache/ignite/internal/util/GridLeanMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridLeanMap;-><init>(I)V

    .line 135
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const-string v1, "reads"

    iget v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->reads:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "writes"

    iget v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->writes:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "hits"

    iget v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->hits:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "misses"

    iget v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->misses:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-object v0
.end method

.method public setHits(I)V
    .locals 0
    .param p1, "hits"    # I

    .prologue
    .line 106
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->hits:I

    .line 107
    return-void
.end method

.method public setMisses(I)V
    .locals 0
    .param p1, "misses"    # I

    .prologue
    .line 124
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->misses:I

    .line 125
    return-void
.end method

.method public setReads(I)V
    .locals 0
    .param p1, "reads"    # I

    .prologue
    .line 70
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->reads:I

    .line 71
    return-void
.end method

.method public setWrites(I)V
    .locals 0
    .param p1, "writes"    # I

    .prologue
    .line 88
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->writes:I

    .line 89
    return-void
.end method
