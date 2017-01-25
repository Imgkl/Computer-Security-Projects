.class public interface abstract Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;
.super Ljava/lang/Object;
.source "GridCacheQueriesEx.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/query/CacheQueries",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract createSpiQuery()Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<TR;>;"
        }
    .end annotation
.end method

.method public abstract createSqlFieldsQuery(Ljava/lang/String;Z)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract execute(Ljava/lang/String;Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;)Lorg/apache/ignite/cache/query/QueryCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheTwoStepQuery;",
            ")",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end method

.method public varargs abstract executeTwoStepQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/ignite/cache/query/QueryCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/ignite/cache/query/QueryCursor",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract sqlMetadata()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
