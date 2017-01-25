.class public Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;
.super Lorg/apache/ignite/internal/util/GridSerializableCollection;
.source "GridCacheValueCollection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/GridSerializableCollection",
        "<TV;>;"
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
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 5
    .param p3    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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
    .line 52
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;, "Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    .local p3, "filter":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSerializableCollection;-><init>()V

    .line 53
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->map:Ljava/util/Map;

    .line 55
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 57
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 58
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    .line 60
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 61
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 62
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 64
    .end local v0    # "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 121
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;, "Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 152
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;, "Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection<TK;TV;>;"
    const-string v2, "o"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 155
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    const/4 v2, 0x1

    .line 158
    .end local v0    # "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;, "Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->map:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->cacheEntry2Get()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v4

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/ignite/lang/IgnitePredicate;

    const/4 v7, 0x0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->cacheHasPeekValue()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/apache/ignite/internal/util/F0;->and([Lorg/apache/ignite/lang/IgnitePredicate;[Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->vararg(Lorg/apache/ignite/lang/IgnitePredicate;)[Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection$1;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 126
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;, "Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection<TK;TV;>;"
    const-string v3, "o"

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    const/4 v2, 0x0

    .line 130
    .local v2, "rmv":Z
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 133
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 136
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/IgniteEx;->cache(Ljava/lang/String;)Lorg/apache/ignite/IgniteCache;

    move-result-object v3

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/ignite/IgniteCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    const/4 v2, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    :cond_1
    return v2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 147
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;, "Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheValueCollection;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    return v0
.end method
