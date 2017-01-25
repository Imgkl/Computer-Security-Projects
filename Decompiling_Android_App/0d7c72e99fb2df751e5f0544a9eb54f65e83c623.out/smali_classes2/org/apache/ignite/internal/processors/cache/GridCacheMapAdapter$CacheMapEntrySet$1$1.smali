.class Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;
.super Ljava/lang/Object;
.source "GridCacheMapAdapter.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;

.field final synthetic val$e:Ljavax/cache/Cache$Entry;

.field val0:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;Ljavax/cache/Cache$Entry;)V
    .locals 0

    .prologue
    .line 194
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;->this$2:Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;->val$e:Ljavax/cache/Cache$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 198
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;->val$e:Ljavax/cache/Cache$Entry;

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

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

    .prologue
    .line 202
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;->val0:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;->val$e:Ljavax/cache/Cache$Entry;

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;->val0:Ljava/lang/Object;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 206
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1.1;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    const-string v1, "val"

    invoke-static {p1, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;->this$2:Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;

    iget-object v1, v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->prj:Lorg/apache/ignite/internal/processors/cache/CacheProjection;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;->access$100(Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter;)Lorg/apache/ignite/internal/processors/cache/CacheProjection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;->val$e:Ljavax/cache/Cache$Entry;

    invoke-interface {v2}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {v1, v2, p1, v3}, Lorg/apache/ignite/internal/processors/cache/CacheProjection;->put(Ljava/lang/Object;Ljava/lang/Object;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)Ljava/lang/Object;

    .line 211
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;->val0:Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;->val$e:Ljavax/cache/Cache$Entry;

    invoke-interface {v1}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e1":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    const-string v2, "Failed to set entry value."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
