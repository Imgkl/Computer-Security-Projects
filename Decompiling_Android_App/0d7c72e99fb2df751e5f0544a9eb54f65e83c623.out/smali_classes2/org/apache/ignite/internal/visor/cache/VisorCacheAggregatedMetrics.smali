.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;
.super Ljava/lang/Object;
.source "VisorCacheAggregatedMetrics.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient avgHits:Ljava/lang/Double;

.field private transient avgMisses:Ljava/lang/Double;

.field private transient avgQryTime:Ljava/lang/Double;

.field private transient avgReads:Ljava/lang/Double;

.field private transient avgSize:Ljava/lang/Double;

.field private transient avgWrites:Ljava/lang/Double;

.field private final cacheName:Ljava/lang/String;

.field private transient execsQry:Ljava/lang/Integer;

.field private transient failsQry:Ljava/lang/Integer;

.field private transient maxHits:Ljava/lang/Long;

.field private transient maxMisses:Ljava/lang/Long;

.field private transient maxQryTime:Ljava/lang/Long;

.field private transient maxReads:Ljava/lang/Long;

.field private transient maxSize:Ljava/lang/Integer;

.field private transient maxWrites:Ljava/lang/Long;

.field private final metrics:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private transient minHits:Ljava/lang/Long;

.field private transient minMisses:Ljava/lang/Long;

.field private transient minQryTime:Ljava/lang/Long;

.field private transient minReads:Ljava/lang/Long;

.field private transient minSize:Ljava/lang/Integer;

.field private transient minWrites:Ljava/lang/Long;

.field private transient totalQryTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    .line 107
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->cacheName:Ljava/lang/String;

    .line 108
    return-void
.end method


# virtual methods
.method public averageHits()D
    .locals 6

    .prologue
    .line 186
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgHits:Ljava/lang/Double;

    if-nez v2, :cond_1

    .line 187
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgHits:Ljava/lang/Double;

    .line 189
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 190
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgHits:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->hits()J

    move-result-wide v4

    long-to-double v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgHits:Ljava/lang/Double;

    goto :goto_0

    .line 192
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgHits:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgHits:Ljava/lang/Double;

    .line 195
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgHits:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public averageMisses()D
    .locals 6

    .prologue
    .line 230
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgMisses:Ljava/lang/Double;

    if-nez v2, :cond_1

    .line 231
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgMisses:Ljava/lang/Double;

    .line 233
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 234
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgMisses:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->misses()J

    move-result-wide v4

    long-to-double v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgMisses:Ljava/lang/Double;

    goto :goto_0

    .line 236
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgMisses:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgMisses:Ljava/lang/Double;

    .line 239
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgMisses:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public averageQueryTime()D
    .locals 6

    .prologue
    .line 362
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgQryTime:Ljava/lang/Double;

    if-nez v2, :cond_1

    .line 363
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgQryTime:Ljava/lang/Double;

    .line 365
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 366
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgQryTime:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->queryMetrics()Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->averageTime()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgQryTime:Ljava/lang/Double;

    goto :goto_0

    .line 368
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgQryTime:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgQryTime:Ljava/lang/Double;

    .line 371
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgQryTime:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public averageReads()D
    .locals 6

    .prologue
    .line 274
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgReads:Ljava/lang/Double;

    if-nez v2, :cond_1

    .line 275
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgReads:Ljava/lang/Double;

    .line 277
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 278
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgReads:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->reads()J

    move-result-wide v4

    long-to-double v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgReads:Ljava/lang/Double;

    goto :goto_0

    .line 280
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgReads:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgReads:Ljava/lang/Double;

    .line 283
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgReads:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public averageSize()D
    .locals 6

    .prologue
    .line 142
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgSize:Ljava/lang/Double;

    if-nez v2, :cond_1

    .line 143
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgSize:Ljava/lang/Double;

    .line 145
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 146
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgSize:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->keySize()I

    move-result v4

    int-to-double v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgSize:Ljava/lang/Double;

    goto :goto_0

    .line 148
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgSize:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgSize:Ljava/lang/Double;

    .line 151
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgSize:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public averageWrites()D
    .locals 6

    .prologue
    .line 318
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgWrites:Ljava/lang/Double;

    if-nez v2, :cond_1

    .line 319
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgWrites:Ljava/lang/Double;

    .line 321
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 322
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgWrites:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->writes()J

    move-result-wide v4

    long-to-double v4, v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgWrites:Ljava/lang/Double;

    goto :goto_0

    .line 324
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgWrites:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object v4, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgWrites:Ljava/lang/Double;

    .line 327
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->avgWrites:Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    return-wide v2
.end method

.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public execsQuery()I
    .locals 4

    .prologue
    .line 402
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->execsQry:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 403
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->execsQry:Ljava/lang/Integer;

    .line 405
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 406
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->execsQry:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->queryMetrics()Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->executions()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->execsQry:Ljava/lang/Integer;

    goto :goto_0

    .line 409
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->execsQry:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public failsQuery()I
    .locals 4

    .prologue
    .line 416
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->failsQry:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 417
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->failsQry:Ljava/lang/Integer;

    .line 419
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 420
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->failsQry:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->queryMetrics()Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->fails()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->failsQry:Ljava/lang/Integer;

    goto :goto_0

    .line 423
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->failsQry:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public maximumHits()J
    .locals 6

    .prologue
    .line 202
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxHits:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 203
    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxHits:Ljava/lang/Long;

    .line 205
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 206
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxHits:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->hits()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxHits:Ljava/lang/Long;

    goto :goto_0

    .line 209
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxHits:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public maximumMisses()J
    .locals 6

    .prologue
    .line 246
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxMisses:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 247
    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxMisses:Ljava/lang/Long;

    .line 249
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 250
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxMisses:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->misses()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxMisses:Ljava/lang/Long;

    goto :goto_0

    .line 253
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxMisses:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public maximumQueryTime()J
    .locals 6

    .prologue
    .line 378
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxQryTime:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 379
    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxQryTime:Ljava/lang/Long;

    .line 381
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 382
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxQryTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->queryMetrics()Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->maximumTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxQryTime:Ljava/lang/Long;

    goto :goto_0

    .line 385
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxQryTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public maximumReads()J
    .locals 6

    .prologue
    .line 290
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxReads:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 291
    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxReads:Ljava/lang/Long;

    .line 293
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 294
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxReads:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->reads()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxReads:Ljava/lang/Long;

    goto :goto_0

    .line 297
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxReads:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public maximumSize()I
    .locals 4

    .prologue
    .line 158
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxSize:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 159
    const/high16 v2, -0x80000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxSize:Ljava/lang/Integer;

    .line 161
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 162
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->keySize()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxSize:Ljava/lang/Integer;

    goto :goto_0

    .line 165
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public maximumWrites()J
    .locals 6

    .prologue
    .line 334
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxWrites:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 335
    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxWrites:Ljava/lang/Long;

    .line 337
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 338
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxWrites:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->writes()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxWrites:Ljava/lang/Long;

    goto :goto_0

    .line 341
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->maxWrites:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public metrics()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    return-object v0
.end method

.method public minimumHits()J
    .locals 6

    .prologue
    .line 172
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minHits:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 173
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minHits:Ljava/lang/Long;

    .line 175
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 176
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minHits:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->hits()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minHits:Ljava/lang/Long;

    goto :goto_0

    .line 179
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minHits:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public minimumMisses()J
    .locals 6

    .prologue
    .line 216
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minMisses:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 217
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minMisses:Ljava/lang/Long;

    .line 219
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 220
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minMisses:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->misses()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minMisses:Ljava/lang/Long;

    goto :goto_0

    .line 223
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minMisses:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public minimumQueryTime()J
    .locals 6

    .prologue
    .line 348
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minQryTime:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 349
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minQryTime:Ljava/lang/Long;

    .line 351
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 352
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minQryTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->queryMetrics()Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->minimumTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minQryTime:Ljava/lang/Long;

    goto :goto_0

    .line 355
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minQryTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public minimumReads()J
    .locals 6

    .prologue
    .line 260
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minReads:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 261
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minReads:Ljava/lang/Long;

    .line 263
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 264
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minReads:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->reads()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minReads:Ljava/lang/Long;

    goto :goto_0

    .line 267
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minReads:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public minimumSize()I
    .locals 4

    .prologue
    .line 128
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minSize:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 129
    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minSize:Ljava/lang/Integer;

    .line 131
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 132
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->keySize()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minSize:Ljava/lang/Integer;

    goto :goto_0

    .line 135
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minSize:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method public minimumWrites()J
    .locals 6

    .prologue
    .line 304
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minWrites:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 305
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minWrites:Ljava/lang/Long;

    .line 307
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;

    .line 308
    .local v1, "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minWrites:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;->writes()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minWrites:Ljava/lang/Long;

    goto :goto_0

    .line 311
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "metric":Lorg/apache/ignite/internal/visor/cache/VisorCacheMetrics;
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->minWrites:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    return-wide v2
.end method

.method public nodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->metrics:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalQueryTime()J
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->totalQryTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 393
    invoke-virtual {p0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->averageQueryTime()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->execsQuery()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->totalQryTime:Ljava/lang/Long;

    .line 395
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAggregatedMetrics;->totalQryTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
