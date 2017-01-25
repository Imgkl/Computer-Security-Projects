.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;
.super Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;
.source "GridCacheAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalClearKeySetCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private keys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5648
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;-><init>()V

    .line 5650
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 5657
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable<TK;TV;>;"
    .local p2, "keys":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;-><init>(Ljava/lang/String;)V

    .line 5659
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;->keys:Ljava/util/Set;

    .line 5660
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/Set;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;

    .prologue
    .line 5638
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 5664
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v0, Lorg/apache/ignite/internal/IgniteEx;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;->cacheName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteEx;->cachex(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;->keys:Ljava/util/Set;

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/processors/cache/GridCache;->clearLocallyAll(Ljava/util/Set;)V

    .line 5666
    const/4 v0, 0x0

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
    .line 5678
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;->readExternal(Ljava/io/ObjectInput;)V

    .line 5680
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;->keys:Ljava/util/Set;

    .line 5681
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
    .line 5671
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;, "Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable<TK;TV;>;"
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearCallable;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 5673
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalClearKeySetCallable;->keys:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 5674
    return-void
.end method
