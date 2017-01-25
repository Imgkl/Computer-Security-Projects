.class Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;
.super Ljava/util/AbstractSet;
.source "GridCacheConcurrentMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Set0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private clone:Z

.field private ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

.field private forcedFlags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field private map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

.field private prjPerCall:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1789
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1815
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1817
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 2
    .param p1, "map"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .prologue
    .line 1823
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1824
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1826
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    .line 1827
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 1829
    iget-object v0, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 1831
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->prjPerCall:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 1832
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forcedFlags()[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->forcedFlags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 1833
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    sget-object v1, Lorg/apache/ignite/internal/processors/cache/CacheFlag;->CLONE:Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->hasFlag(Lorg/apache/ignite/internal/processors/cache/CacheFlag;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->clone:Z

    .line 1834
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "x1"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;

    .prologue
    .line 1790
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    return-void
.end method

.method static synthetic access$2000(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;)Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    .prologue
    .line 1790
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 1942
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeySet;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeySet;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->clearLocally0(Ljava/util/Collection;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    .line 1943
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    const/4 v2, 0x0

    .line 1902
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    if-nez v3, :cond_1

    .line 1909
    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v1, p1

    .line 1905
    check-cast v1, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 1907
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    .line 1909
    .local v0, "cur":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method containsKey(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    .line 1869
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->toCacheKeyObject(Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    .line 1871
    .local v0, "cacheKey":Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->peekEx(Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;)Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v1

    .line 1874
    .local v1, "e":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->obsolete()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->deleted()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->lockedByThread()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z
    :try_end_0
    .catch Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 1879
    :cond_1
    :goto_0
    return v3

    .line 1878
    :catch_0
    move-exception v2

    .line 1879
    .local v2, "ignore":Lorg/apache/ignite/internal/processors/cache/GridCacheEntryRemovedException;
    goto :goto_0
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 1888
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    const-string v2, "value"

    invoke-static {p1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->valueIterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1891
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1893
    .local v1, "v0":Ljava/lang/Object;, "TV;"
    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/typedef/F;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1894
    const/4 v2, 0x1

    .line 1897
    .end local v1    # "v0":Ljava/lang/Object;, "TV;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 6
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
    .line 1845
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->prjPerCall:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->forcedFlags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V

    return-object v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1937
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->publicSize()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    const/4 v4, -0x1

    .line 1838
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;II)V

    return-object v0
.end method

.method keyIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 1852
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1953
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 1954
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .line 1955
    return-void
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 1964
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cache()Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;->map()Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1914
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    instance-of v0, p1, Ljavax/cache/Cache$Entry;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->removeKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeKey(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 1923
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteKernal;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/IgniteKernal;->getCache(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v1

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/CU;->empty()[Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/apache/ignite/internal/processors/cache/GridCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1925
    :catch_0
    move-exception v0

    .line 1926
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to remove cache entry for key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public size()I
    .locals 2

    .prologue
    .line 1932
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;->publicSize()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->size(Ljava/util/Iterator;[Lorg/apache/ignite/lang/IgnitePredicate;)I

    move-result v0

    goto :goto_0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1859
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->map:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->clone:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1947
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1948
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Set0;->filter:[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1949
    return-void
.end method
