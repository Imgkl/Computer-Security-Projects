.class public Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryErrorFuture;
.super Lorg/apache/ignite/internal/util/future/GridFinishedFuture;
.source "GridCacheQueryErrorFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/future/GridFinishedFuture",
        "<",
        "Ljava/util/Collection",
        "<TT;>;>;",
        "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "err"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryErrorFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryErrorFuture<TT;>;"
    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/util/future/GridFinishedFuture;-><init>(Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryErrorFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryErrorFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryErrorFuture;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryErrorFuture<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
