.class Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;
.super Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;
.source "IgniteCacheObjectProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->toCacheKeyObject0(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;Ljava/lang/Object;[B)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/Object;
    .param p3, "x1"    # [B

    .prologue
    .line 117
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;->this$0:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;

    invoke-direct {p0, p2, p3}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;-><init>(Ljava/lang/Object;[B)V

    return-void
.end method


# virtual methods
.method public prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 6
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    .prologue
    .line 124
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->processor()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;->val:Ljava/lang/Object;

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->immutable(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 125
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;->valBytes:[B

    if-nez v3, :cond_0

    .line 126
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->processor()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;->val:Ljava/lang/Object;

    invoke-interface {v3, p1, v4}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->marshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;)[B

    move-result-object v3

    iput-object v3, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;->valBytes:[B

    .line 128
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->p2pEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;->val:Ljava/lang/Object;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/IgniteUtils;->detectClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 131
    .local v1, "ldr":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->processor()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;->valBytes:[B

    invoke-interface {v3, p1, v4, v1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    .line 135
    .local v2, "val":Ljava/lang/Object;
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;->valBytes:[B

    invoke-direct {v3, v2, v4}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;-><init>(Ljava/lang/Object;[B)V

    .line 138
    .end local v1    # "ldr":Ljava/lang/ClassLoader;
    .end local v2    # "val":Ljava/lang/Object;
    :goto_1
    return-object v3

    .line 128
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;->val:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    .line 138
    :cond_2
    new-instance v3, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;->val:Ljava/lang/Object;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;->valBytes:[B

    invoke-direct {v3, v4, v5}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;-><init>(Ljava/lang/Object;[B)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v3, Lorg/apache/ignite/IgniteException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to marshal object: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$1;->val:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .param p2, "cpy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;",
            "Z)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
