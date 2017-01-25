.class Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$2;
.super Lorg/apache/ignite/internal/processors/cache/CacheObjectByteArrayImpl;
.source "IgniteCacheObjectProcessorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;->toCacheObject0(Ljava/lang/Object;Z)Lorg/apache/ignite/internal/processors/cache/CacheObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;[B)V
    .locals 0
    .param p2, "x0"    # [B

    .prologue
    .line 211
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$2;->this$0:Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl;

    invoke-direct {p0, p2}, Lorg/apache/ignite/internal/processors/cache/CacheObjectByteArrayImpl;-><init>([B)V

    return-void
.end method


# virtual methods
.method public prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 3
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    .prologue
    .line 217
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$2;->val:[B

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessorImpl$2;->val:[B

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 219
    .local v0, "valCpy":[B
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/CacheObjectByteArrayImpl;

    invoke-direct {v1, v0}, Lorg/apache/ignite/internal/processors/cache/CacheObjectByteArrayImpl;-><init>([B)V

    return-object v1
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
    .line 213
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lorg/apache/ignite/internal/processors/cache/CacheObjectByteArrayImpl;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
