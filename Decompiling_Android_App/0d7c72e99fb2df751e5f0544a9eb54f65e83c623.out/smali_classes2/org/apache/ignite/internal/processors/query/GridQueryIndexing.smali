.class public interface abstract Lorg/apache/ignite/internal/processors/query/GridQueryIndexing;
.super Ljava/lang/Object;
.source "GridQueryIndexing.java"


# virtual methods
.method public abstract backupFilter()Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
.end method

.method public abstract onSwap(Ljava/lang/String;Ljava/lang/Object;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract onUnswap(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;[B)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract query(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;",
            "Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract queryFields(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;",
            ")",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract queryText(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;",
            "Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;",
            ")",
            "Lorg/apache/ignite/internal/util/lang/GridCloseableIterator",
            "<",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<TK;TV;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract queryTwoStep(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlFieldsQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/cache/query/SqlFieldsQuery;",
            ")",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract queryTwoStep(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/cache/query/SqlQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/cache/query/SqlQuery;",
            ")",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract queryTwoStep(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<**>;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;",
            ")",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract rebuildIndexes(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract registerCache(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract registerType(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;)Z
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract remove(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract size(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)J
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract start(Lorg/apache/ignite/internal/GridKernalContext;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract store(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;Ljava/lang/Object;Ljava/lang/Object;[BJ)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract unregisterCache(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/CacheConfiguration",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract unregisterType(Ljava/lang/String;Lorg/apache/ignite/internal/processors/query/GridQueryTypeDescriptor;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
