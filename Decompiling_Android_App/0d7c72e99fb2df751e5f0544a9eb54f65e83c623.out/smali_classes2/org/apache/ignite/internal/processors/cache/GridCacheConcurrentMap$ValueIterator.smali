.class Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;
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
    name = "ValueIterator"
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
        "<TV;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
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

.field private it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2082
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2084
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)V
    .locals 6
    .param p1, "map"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p3, "ctx"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p4, "clone"    # Z

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator<TK;TV;>;"
    const/4 v4, -0x1

    .line 2096
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2097
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    const/4 v2, 0x1

    move-object v1, p1

    move-object v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;II)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    .line 2099
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 2100
    iput-boolean p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->clone:Z

    .line 2101
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;ZLorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "x1"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;

    .prologue
    .line 2066
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheContext;Z)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 2105
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 2110
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator<TK;TV;>;"
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->next()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    .line 2113
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->currentValue()Ljava/lang/Object;

    move-result-object v1

    .line 2116
    .local v1, "val":Ljava/lang/Object;, "TV;"
    :try_start_0
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->clone:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cloneValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .end local v1    # "val":Ljava/lang/Object;, "TV;"
    :cond_0
    return-object v1

    .line 2118
    .restart local v1    # "val":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    .line 2119
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Lorg/apache/ignite/IgniteException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

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
    .line 2138
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    .line 2139
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    .line 2140
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->clone:Z

    .line 2141
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 2125
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->remove()V

    .line 2126
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
    .line 2130
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2131
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2132
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$ValueIterator;->clone:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 2133
    return-void
.end method
