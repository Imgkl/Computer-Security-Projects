.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->backupsFilter(Z)Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)V
    .locals 0

    .prologue
    .line 1806
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.11;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forSpace(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiPredicate;
    .locals 3
    .param p1, "spaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1808
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager.11;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$2000(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    .line 1810
    .local v1, "ctx":Lorg/apache/ignite/internal/GridKernalContext;
    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->internalCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    .line 1812
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->context()Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->isReplicated()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->configuration()Lorg/apache/ignite/configuration/CacheConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getBackups()I

    move-result v2

    if-nez v2, :cond_1

    .line 1813
    :cond_0
    const/4 v2, 0x0

    .line 1815
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11$1;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$11;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;Lorg/apache/ignite/internal/GridKernalContext;)V

    goto :goto_0
.end method
