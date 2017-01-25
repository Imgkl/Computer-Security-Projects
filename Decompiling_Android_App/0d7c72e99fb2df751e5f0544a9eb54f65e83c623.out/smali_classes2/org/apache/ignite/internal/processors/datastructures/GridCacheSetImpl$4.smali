.class Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$4;
.super Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;
.source "GridCacheSetImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->iterator0()Lorg/apache/ignite/internal/util/lang/GridCloseableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter",
        "<TT;",
        "Ljava/util/Map$Entry",
        "<TT;*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;)V
    .locals 0

    .prologue
    .line 357
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$4;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.4;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$4;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheIteratorConverter;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 357
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$4;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.4;"
    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$4;->convert(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected convert(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TT;*>;)TT;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$4;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.4;"
    .local p1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;*>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "this":Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$4;, "Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl.4;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl$4;->this$0:Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/datastructures/GridCacheSetImpl;->remove(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method
