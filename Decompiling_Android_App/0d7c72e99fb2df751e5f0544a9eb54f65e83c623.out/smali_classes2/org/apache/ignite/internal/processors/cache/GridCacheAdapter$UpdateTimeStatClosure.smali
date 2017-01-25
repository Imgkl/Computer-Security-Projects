.class public abstract Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "UpdateTimeStatClosure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field protected final metrics:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

.field protected final start:J


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;J)V
    .locals 0
    .param p1, "metrics"    # Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;
    .param p2, "start"    # J

    .prologue
    .line 6264
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6265
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure;->metrics:Lorg/apache/ignite/internal/processors/cache/CacheMetricsImpl;

    .line 6266
    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure;->start:J

    .line 6267
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 6253
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure<TT;>;"
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 6272
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure<TT;>;"
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<TT;>;"
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6273
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 6275
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$UpdateTimeStatClosure;->updateTimeStat()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6281
    :cond_0
    :goto_0
    return-void

    .line 6278
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected abstract updateTimeStat()V
.end method
