.class public Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;
.super Lorg/apache/ignite/internal/util/GridSerializableSet;
.source "GridCacheKeySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridSerializableSet",
        "<TK;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final filter:[Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Ljava/util/Collection",
            "<+",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    .local p3, "filter":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableSet;-><init>()V

    .line 52
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->map:Ljava/util/Map;

    .line 54
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 56
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 57
    if-nez p3, :cond_1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty()[Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object p3

    .end local p3    # "filter":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    :cond_1
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    .line 59
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 60
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    if-eqz v0, :cond_2

    .line 61
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 98
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 100
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->cacheEntry2Key()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 80
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    :cond_0
    const/4 v1, 0x0

    .line 87
    :goto_0
    return v1

    .line 83
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->map:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteEx;->cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v1

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteCache;->remove(Ljava/lang/Object;)Z

    .line 87
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 92
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheKeySet;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    return v0
.end method
