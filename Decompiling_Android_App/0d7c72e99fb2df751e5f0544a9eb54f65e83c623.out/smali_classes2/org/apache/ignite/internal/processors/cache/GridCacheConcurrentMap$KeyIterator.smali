.class Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;
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
    name = "KeyIterator"
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
        "<TK;>;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
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
    .line 2157
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2159
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V
    .locals 6
    .param p1, "map"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "filter"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator<TK;TV;>;"
    const/4 v4, -0x1

    .line 2165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2166
    new-instance v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    const/4 v2, 0x0

    move-object v1, p1

    move-object v3, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;Z[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;II)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    .line 2167
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;
    .param p2, "x1"    # [Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$1;

    .prologue
    .line 2147
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap;[Lorg/apache/ignite/internal/processors/cache/CacheEntryPredicate;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 2171
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 2176
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->next()Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;->key()Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    # getter for: Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->ctx:Lorg/apache/ignite/internal/processors/cache/GridCacheContext;
    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->access$1800(Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;)Lorg/apache/ignite/internal/processors/cache/GridCacheContext;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheContext;->cacheObjectContext()Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;->value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;

    move-result-object v0

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
    .line 2192
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    .line 2193
    return-void
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 2181
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;->remove()V

    .line 2182
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
    .line 2186
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;, "Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$KeyIterator;->it:Lorg/apache/ignite/internal/processors/cache/GridCacheConcurrentMap$Iterator0;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 2187
    return-void
.end method
