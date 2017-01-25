.class abstract Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;
.super Ljava/lang/Object;
.source "GridCacheQueryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractLazySwapEntry"
.end annotation


# instance fields
.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

.field private val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)V
    .locals 0

    .prologue
    .line 2262
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.AbstractLazySwapEntry;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$1;

    .prologue
    .line 2262
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.AbstractLazySwapEntry;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;-><init>(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)V

    return-void
.end method


# virtual methods
.method abstract expireTime()J
.end method

.method key()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2285
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.AbstractLazySwapEntry;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->key:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2286
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->key:Ljava/lang/Object;

    .line 2290
    :goto_0
    return-object v1

    .line 2288
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$2200(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->keyBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject([B)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->this$0:Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;

    # getter for: Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->cctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;->access$2100(Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->key:Ljava/lang/Object;

    .line 2290
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->key:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2292
    :catch_0
    move-exception v0

    .line 2293
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected abstract keyBytes()[B
.end method

.method abstract timeToLive()J
.end method

.method protected abstract unmarshalValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method value()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 2302
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;, "Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager<TK;TV;>.AbstractLazySwapEntry;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->val:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2303
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->val:Ljava/lang/Object;

    .line 2307
    :goto_0
    return-object v1

    .line 2305
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->unmarshalValue()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->val:Ljava/lang/Object;

    .line 2307
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/GridCacheQueryManager$AbstractLazySwapEntry;->val:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2309
    :catch_0
    move-exception v0

    .line 2310
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method abstract version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
.end method
