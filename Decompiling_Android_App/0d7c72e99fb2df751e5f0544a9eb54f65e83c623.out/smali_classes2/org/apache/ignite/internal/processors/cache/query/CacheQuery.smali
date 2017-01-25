.class public interface abstract Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
.super Ljava/lang/Object;
.source "CacheQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract enableDedup(Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract execute(Lorg/apache/ignite/lang/IgniteClosure;[Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TR;>;"
        }
    .end annotation
.end method

.method public varargs abstract execute(Lorg/apache/ignite/lang/IgniteReducer;[Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/lang/IgniteReducer",
            "<TT;TR;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TR;>;"
        }
    .end annotation
.end method

.method public varargs abstract execute([Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture;
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQueryFuture",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract includeBackups(Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract keepAll(Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract metrics()Lorg/apache/ignite/cache/query/QueryMetrics;
.end method

.method public abstract pageSize(I)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract projection(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/cluster/ClusterGroup;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract resetMetrics()V
.end method

.method public abstract timeout(J)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TT;>;"
        }
    .end annotation
.end method
