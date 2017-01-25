.class final Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"

# interfaces
.implements Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->and(Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f1:Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;

.field final synthetic val$f2:Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;)V
    .locals 0

    .prologue
    .line 1845
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12;->val$f1:Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12;->val$f2:Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forSpace(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiPredicate;
    .locals 3
    .param p1, "spaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1847
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12;->val$f1:Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;

    invoke-interface {v2, p1}, Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;->forSpace(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-result-object v0

    .line 1848
    .local v0, "fltr1":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12;->val$f2:Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;

    invoke-interface {v2, p1}, Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;->forSpace(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiPredicate;

    move-result-object v1

    .line 1850
    .local v1, "fltr2":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    if-nez v0, :cond_0

    .line 1856
    .end local v1    # "fltr2":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    :goto_0
    return-object v1

    .line 1853
    .restart local v1    # "fltr2":Lorg/apache/ignite/lang/IgniteBiPredicate;, "Lorg/apache/ignite/lang/IgniteBiPredicate<TK;TV;>;"
    :cond_0
    if-nez v1, :cond_1

    move-object v1, v0

    .line 1854
    goto :goto_0

    .line 1856
    :cond_1
    new-instance v2, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12$1;

    invoke-direct {v2, p0, v0, v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12$1;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$12;Lorg/apache/ignite/lang/IgniteBiPredicate;Lorg/apache/ignite/lang/IgniteBiPredicate;)V

    move-object v1, v2

    goto :goto_0
.end method
