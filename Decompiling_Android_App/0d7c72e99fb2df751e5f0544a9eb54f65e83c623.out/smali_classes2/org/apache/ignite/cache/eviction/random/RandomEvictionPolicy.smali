.class public Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;
.super Ljava/lang/Object;
.source "RandomEvictionPolicy.java"

# interfaces
.implements Lorg/apache/ignite/cache/eviction/EvictionPolicy;
.implements Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicyMBean;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/cache/eviction/EvictionPolicy",
        "<TK;TV;>;",
        "Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicyMBean;",
        "Ljava/io/Externalizable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private volatile max:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const v0, 0x186a0

    iput v0, p0, Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;->max:I

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const v0, 0x186a0

    iput v0, p0, Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;->max:I

    .line 57
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "max > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 59
    iput p1, p0, Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;->max:I

    .line 60
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMaxSize()I
    .locals 1

    .prologue
    .line 68
    .local p0, "this":Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;->max:I

    return v0
.end method

.method public onEntryAccessed(ZLorg/apache/ignite/cache/eviction/EvictableEntry;)V
    .locals 5
    .param p1, "rmv"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy<TK;TV;>;"
    .local p2, "entry":Lorg/apache/ignite/cache/eviction/EvictableEntry;, "Lorg/apache/ignite/cache/eviction/EvictableEntry<TK;TV;>;"
    invoke-interface {p2}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->isCached()Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    :cond_0
    return-void

    .line 88
    :cond_1
    const-class v4, Lorg/apache/ignite/IgniteCache;

    invoke-interface {p2, v4}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/IgniteCache;

    .line 90
    .local v0, "cache":Lorg/apache/ignite/IgniteCache;, "Lorg/apache/ignite/IgniteCache<TK;TV;>;"
    const/4 v4, 0x0

    new-array v4, v4, [Lorg/apache/ignite/cache/CachePeekMode;

    invoke-interface {v0, v4}, Lorg/apache/ignite/IgniteCache;->size([Lorg/apache/ignite/cache/CachePeekMode;)I

    move-result v3

    .line 92
    .local v3, "size":I
    iget v2, p0, Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;->max:I

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 93
    invoke-interface {v0}, Lorg/apache/ignite/IgniteCache;->randomEntry()Ljavax/cache/Cache$Entry;

    move-result-object v1

    .line 95
    .local v1, "e":Ljavax/cache/Cache$Entry;, "Ljavax/cache/Cache$Entry<TK;TV;>;"
    if-eqz v1, :cond_2

    .line 96
    const-class v4, Lorg/apache/ignite/cache/eviction/EvictableEntry;

    invoke-interface {v1, v4}, Ljavax/cache/Cache$Entry;->unwrap(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/ignite/cache/eviction/EvictableEntry;

    invoke-interface {v4}, Lorg/apache/ignite/cache/eviction/EvictableEntry;->evict()Z

    .line 92
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
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
    .line 107
    .local p0, "this":Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy<TK;TV;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;->max:I

    .line 108
    return-void
.end method

.method public setMaxSize(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy<TK;TV;>;"
    if-lez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "max > 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 79
    iput p1, p0, Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;->max:I

    .line 80
    return-void

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy<TK;TV;>;"
    const-class v0, Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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
    .line 102
    .local p0, "this":Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;, "Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy<TK;TV;>;"
    iget v0, p0, Lorg/apache/ignite/cache/eviction/random/RandomEvictionPolicy;->max:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 103
    return-void
.end method
