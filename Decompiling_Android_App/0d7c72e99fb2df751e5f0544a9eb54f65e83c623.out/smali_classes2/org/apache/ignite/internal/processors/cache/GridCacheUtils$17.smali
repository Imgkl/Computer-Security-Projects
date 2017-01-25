.class final Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$17;
.super Ljava/lang/Object;
.source "GridCacheUtils.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheUtils;->cacheKey2Entry(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)Lorg/apache/ignite/lang/IgniteClosure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<TK;",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$17;->val$ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$17;->apply(Ljava/lang/Object;)Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public apply(Ljava/lang/Object;)Ljavax/cache/Cache$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 413
    .local p1, "k":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheUtils$17;->val$ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->entry(Ljava/lang/Object;)Ljavax/cache/Cache$Entry;
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 416
    :goto_0
    return-object v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "ignored":Lorg/apache/ignite/internal/processors/cache/distributed/dht/GridDhtInvalidPartitionException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 421
    const-string v0, "Key-to-entry transformer."

    return-object v0
.end method
