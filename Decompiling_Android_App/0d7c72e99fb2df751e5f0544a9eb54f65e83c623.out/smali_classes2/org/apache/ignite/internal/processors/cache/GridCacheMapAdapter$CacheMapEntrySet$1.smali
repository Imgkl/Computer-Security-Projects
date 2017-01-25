.class Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;
.super Ljava/lang/Object;
.source "GridCacheMapAdapter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;)V
    .locals 1

    .prologue
    .line 184
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet.1;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;->this$1:Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;->entrySet:Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;->access$200(Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 188
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 184
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet.1;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet.1;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 194
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;Ljavax/cache/Cache$Entry;)V

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 223
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;, "Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet.1;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheMapAdapter$CacheMapEntrySet$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 224
    return-void
.end method
