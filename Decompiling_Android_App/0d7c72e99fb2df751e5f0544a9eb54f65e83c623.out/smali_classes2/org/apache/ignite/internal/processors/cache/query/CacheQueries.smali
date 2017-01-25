.class public interface abstract Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;
.super Ljava/lang/Object;
.source "CacheQueries.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createFullTextQuery(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract createFullTextQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract createScanQuery(Lorg/apache/ignite/lang/IgniteBiPredicate;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .param p1    # Lorg/apache/ignite/lang/IgniteBiPredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;)",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract createSqlFieldsQuery(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract createSqlQuery(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract createSqlQuery(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/CacheQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/processors/cache/query/CacheQuery",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract metrics()Lorg/apache/ignite/cache/query/QueryMetrics;
.end method

.method public abstract rebuildAllIndexes()Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract rebuildIndexes(Ljava/lang/Class;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract rebuildIndexes(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract resetMetrics()V
.end method
