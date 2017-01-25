.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;
.super Ljava/lang/Object;
.source "VisorCacheQueryMetrics.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private avgTime:D

.field private execs:I

.field private fails:I

.field private maxTime:J

.field private minTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/cache/query/QueryMetrics;)Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;
    .locals 4
    .param p0, "m"    # Lorg/apache/ignite/cache/query/QueryMetrics;

    .prologue
    .line 52
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;-><init>()V

    .line 54
    .local v0, "qm":Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;
    invoke-interface {p0}, Lorg/apache/ignite/cache/query/QueryMetrics;->minimumTime()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->minTime:J

    .line 55
    invoke-interface {p0}, Lorg/apache/ignite/cache/query/QueryMetrics;->maximumTime()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->maxTime:J

    .line 56
    invoke-interface {p0}, Lorg/apache/ignite/cache/query/QueryMetrics;->averageTime()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->avgTime:D

    .line 57
    invoke-interface {p0}, Lorg/apache/ignite/cache/query/QueryMetrics;->executions()I

    move-result v1

    iput v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->execs:I

    .line 58
    invoke-interface {p0}, Lorg/apache/ignite/cache/query/QueryMetrics;->fails()I

    move-result v1

    iput v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->fails:I

    .line 60
    return-object v0
.end method


# virtual methods
.method public averageTime()D
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->avgTime:D

    return-wide v0
.end method

.method public executions()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->execs:I

    return v0
.end method

.method public fails()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->fails:I

    return v0
.end method

.method public maximumTime()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->maxTime:J

    return-wide v0
.end method

.method public minimumTime()J
    .locals 2

    .prologue
    .line 67
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;->minTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheQueryMetrics;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
