.class Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$RebuildIndexes;
.super Ljava/lang/Object;
.source "GridCacheQueryCommandHandler.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RebuildIndexes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteCallable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cacheName:Ljava/lang/String;

.field private clsName:Ljava/lang/String;

.field private g:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "clsName"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$RebuildIndexes;->cacheName:Ljava/lang/String;

    .line 398
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$RebuildIndexes;->clsName:Ljava/lang/String;

    .line 399
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$1;

    .prologue
    .line 378
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$RebuildIndexes;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$RebuildIndexes;->clsName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$RebuildIndexes;->g:Lorg/apache/ignite/Ignite;

    check-cast v0, Lorg/apache/ignite/internal/IgniteKernal;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$RebuildIndexes;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->getCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;->rebuildAllIndexes()Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 408
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 406
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$RebuildIndexes;->g:Lorg/apache/ignite/Ignite;

    check-cast v0, Lorg/apache/ignite/internal/IgniteKernal;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$RebuildIndexes;->cacheName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/IgniteKernal;->getCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->queries()Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheQueryCommandHandler$RebuildIndexes;->clsName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/CacheQueries;->rebuildIndexes(Ljava/lang/String;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    goto :goto_0
.end method
