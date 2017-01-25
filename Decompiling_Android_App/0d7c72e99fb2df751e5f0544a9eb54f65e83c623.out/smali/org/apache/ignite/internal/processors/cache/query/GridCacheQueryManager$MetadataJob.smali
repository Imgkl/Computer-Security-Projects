.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetadataJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteCallable",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;",
        ">;>;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;

    .prologue
    .line 1886
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1885
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;->call()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$CacheSqlMetadata;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1896
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v2, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    .line 1898
    .local v1, "ctx":Lorg/apache/ignite/internal/GridKernalContext;
    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->caches()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob$1;

    invoke-direct {v3, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob$1;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;)V

    const/4 v4, 0x1

    new-array v4, v4, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob$2;

    invoke-direct {v6, p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob$2;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;)V

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/F;->viewReadOnly(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;

    move-result-object v0

    .line 1912
    .local v0, "cacheNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob$3;

    invoke-direct {v2, p0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob$3;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$MetadataJob;Lorg/apache/ignite/internal/GridKernalContext;)V

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/F;->transform(Ljava/util/Collection;Lorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;

    move-result-object v2

    return-object v2
.end method
