.class public abstract Lorg/apache/ignite/cache/store/CacheStoreAdapter;
.super Ljava/lang/Object;
.source "CacheStoreAdapter.java"

# interfaces
.implements Lorg/apache/ignite/cache/store/CacheStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/store/CacheStore",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/apache/ignite/cache/store/CacheStoreAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/cache/store/CacheStoreAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheStoreAdapter<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheStoreAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    sget-boolean v2, Lorg/apache/ignite/cache/store/CacheStoreAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 80
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 81
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/ignite/cache/store/CacheStoreAdapter;->delete(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public loadAll(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+TK;>;)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheStoreAdapter<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    sget-boolean v4, Lorg/apache/ignite/cache/store/CacheStoreAdapter;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 56
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v2, "loaded":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 59
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lorg/apache/ignite/cache/store/CacheStoreAdapter;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 61
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_1

    .line 62
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 65
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_2
    return-object v2
.end method

.method public varargs loadCache(Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;)V
    .locals 0
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheStoreAdapter<TK;TV;>;"
    .local p1, "clo":Lorg/apache/ignite/lang/IgniteBiInClosure;, "Lorg/apache/ignite/lang/IgniteBiInClosure<TK;TV;>;"
    return-void
.end method

.method public sessionEnd(Z)V
    .locals 0
    .param p1, "commit"    # Z

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheStoreAdapter<TK;TV;>;"
    return-void
.end method

.method public writeAll(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/cache/Cache$Entry",
            "<+TK;+TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lorg/apache/ignite/cache/store/CacheStoreAdapter;, "Lorg/apache/ignite/cache/store/CacheStoreAdapter<TK;TV;>;"
    .local p1, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/cache/Cache$Entry<+TK;+TV;>;>;"
    sget-boolean v2, Lorg/apache/ignite/cache/store/CacheStoreAdapter;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 72
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache$Entry;

    .line 73
    .local v0, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    invoke-virtual {p0, v0}, Lorg/apache/ignite/cache/store/CacheStoreAdapter;->write(Ljavax/cache/Cache$Entry;)V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<+TK;+TV;>;"
    :cond_1
    return-void
.end method
