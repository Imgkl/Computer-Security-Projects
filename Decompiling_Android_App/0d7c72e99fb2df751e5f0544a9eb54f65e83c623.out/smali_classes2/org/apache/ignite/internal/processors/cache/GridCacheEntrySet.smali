.class public Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;
.super Ljava/util/AbstractSet;
.source "GridCacheEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


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

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
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
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)V
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
    .line 48
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet<TK;TV;>;"
    .local p1, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p2, "c":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    .local p3, "filter":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<Ljavax/cache/Cache$Entry<TK;TV;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 49
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Ljava/util/HashSet;-><init>(IF)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->set:Ljava/util/Set;

    .line 51
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 53
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 54
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    .line 56
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

    .line 57
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 58
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->set:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    :cond_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clear"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet<TK;TV;>;"
    const/4 v1, 0x0

    .line 102
    instance-of v2, p1, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;

    if-nez v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 105
    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 107
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v2}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->set:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->set:Ljava/util/Set;

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/F;->identity()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Ljava/lang/Iterable;Lorg/apache/ignite/lang/IgniteClosure;[Lorg/apache/ignite/lang/IgnitePredicate;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet<TK;TV;>;"
    const/4 v2, 0x0

    .line 75
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/cache/CacheEntryImpl;

    if-nez v3, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    .line 78
    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 80
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v3}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->set:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteKernal;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/IgniteKernal;->getCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v2

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljavax/cache/Cache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v2, 0x1

    goto :goto_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "ex":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    invoke-direct {v2, v1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public size()I
    .locals 2

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;, "Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->set:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheEntrySet;->filter:[Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Collection;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    return v0
.end method
