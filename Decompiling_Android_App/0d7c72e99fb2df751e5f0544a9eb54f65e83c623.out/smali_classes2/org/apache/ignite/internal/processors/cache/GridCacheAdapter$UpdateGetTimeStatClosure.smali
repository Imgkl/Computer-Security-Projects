.class public Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateGetTimeStatClosure;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UpdateGetTimeStatClosure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V
    .locals 0
    .param p1, "metrics"    # Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;
    .param p2, "start"    # J

    .prologue
    .line 6301
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateGetTimeStatClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateGetTimeStatClosure<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V

    .line 6302
    return-void
.end method


# virtual methods
.method protected updateTimeStat()V
    .locals 6

    .prologue
    .line 6306
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateGetTimeStatClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateGetTimeStatClosure<TT;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateGetTimeStatClosure;->metrics:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateGetTimeStatClosure;->start:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;->addGetTimeNanos(J)V

    .line 6307
    return-void
.end method