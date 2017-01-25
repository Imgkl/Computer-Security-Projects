.class Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$GridCacheScanSwapEntry;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"

# interfaces
.implements Ljavax/cache/Cache$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridCacheScanSwapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final e:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager",
            "<TK;TV;>.Abstract",
            "LazySwapEntry;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager",
            "<TK;TV;>.Abstract",
            "LazySwapEntry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2545
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$GridCacheScanSwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.GridCacheScanSwapEntry;"
    .local p2, "e":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.AbstractLazySwapEntry;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$GridCacheScanSwapEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2546
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$GridCacheScanSwapEntry;->e:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;

    .line 2547
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2556
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$GridCacheScanSwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.GridCacheScanSwapEntry;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$GridCacheScanSwapEntry;->e:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->key()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2551
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$GridCacheScanSwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.GridCacheScanSwapEntry;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$GridCacheScanSwapEntry;->e:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public unwrap(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 2561
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$GridCacheScanSwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.GridCacheScanSwapEntry;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2562
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2564
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
