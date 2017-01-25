.class Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;
.super Ljava/lang/Object;
.source "GridCacheConcurrentMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private forcedFlags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

.field private it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private prjPerCall:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1992
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1994
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;[Lorg/apache/ignite/internal/processors/cache/CacheFlag;)V
    .locals 6
    .param p1, "map"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p5, "forcedFlags"    # [Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;",
            "[",
            "Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheContext",
            "<TK;TV;>;",
            "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl",
            "<TK;TV;>;[",
            "Lorg/apache/ignite/internal/processors/cache/CacheFlag;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator<TK;TV;>;"
    .local p3, "ctx":Lorg/apache/ignite/internal/processors/cache/GridCacheContext;, "Lorg/apache/ignite/internal/processors/cache/GridCacheContext<TK;TV;>;"
    .local p4, "prjPerCall":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    const/4 v4, -0x1

    .line 2008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2009
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;II)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    .line 2011
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 2012
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->prjPerCall:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 2013
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->forcedFlags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 2014
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 2018
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1973
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->next()Ljavax/cache/Cache$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljavax/cache/Cache$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/Cache$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 2023
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall()Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    move-result-object v1

    .line 2025
    .local v1, "oldPrj":Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;, "Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->prjPerCall:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 2027
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->forcedFlags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    move-result-object v0

    .line 2030
    .local v0, "oldFlags":[Lorg/apache/ignite/internal/processors/cache/CacheFlag;
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->next()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->wrapLazyValue()Ljavax/cache/Cache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2033
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 2034
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    return-object v2

    .line 2033
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->projectionPerCall(Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;)V

    .line 2034
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->forceFlags([Lorg/apache/ignite/internal/processors/cache/CacheFlag;)[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    throw v2
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
    .line 2054
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    .line 2055
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 2056
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->prjPerCall:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    .line 2057
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    check-cast v0, [Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->forcedFlags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    .line 2058
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 2040
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->remove()V

    .line 2041
    return-void
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
    .line 2045
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2046
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2047
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->prjPerCall:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionImpl;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2048
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$EntryIterator;->forcedFlags:[Lorg/apache/ignite/internal/processors/cache/CacheFlag;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2049
    return-void
.end method
