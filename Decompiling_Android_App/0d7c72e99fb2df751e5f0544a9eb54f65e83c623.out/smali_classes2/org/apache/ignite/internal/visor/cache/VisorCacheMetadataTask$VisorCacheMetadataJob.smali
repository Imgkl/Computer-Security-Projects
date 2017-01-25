.class Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$VisorCacheMetadataJob;
.super Lorg/apache/ignite/internal/visor/VisorJob;
.source "VisorCacheMetadataTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorCacheMetadataJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/visor/VisorJob",
        "<",
        "Ljava/lang/String;",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "debug"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/VisorJob;-><init>(Ljava/lang/Object;Z)V

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$1;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$VisorCacheMetadataJob;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 46
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$VisorCacheMetadataJob;->run(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;

    move-result-object v0

    return-object v0
.end method

.method protected run(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;
    .locals 6
    .param p1, "cacheName"    # Ljava/lang/String;

    .prologue
    .line 61
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$VisorCacheMetadataJob;->ignite:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v3, p1}, Lorg/apache/ignite/internal/IgniteEx;->cachex(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    .line 63
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;

    .line 66
    .local v2, "queries":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;->sqlMetadata()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/F;->first(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;

    return-object v3

    .line 69
    .end local v2    # "queries":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueriesEx<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_0
    new-instance v3, Lorg/apache/ignite/IgniteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cache not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->escapeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->convertException(Lorg/apache/ignite/IgniteCheckedException;)Lorg/apache/ignite/IgniteException;

    move-result-object v3

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheMetadataTask$VisorCacheMetadataJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
