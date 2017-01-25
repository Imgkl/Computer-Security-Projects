.class Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;
.super Ljava/lang/Object;
.source "GridCacheAdapter.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalSizeCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cacheName:Ljava/lang/String;

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private primaryOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5780
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "cacheName"    # Ljava/lang/String;
    .param p2, "primaryOnly"    # Z

    .prologue
    .line 5786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5787
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;->cacheName:Ljava/lang/String;

    .line 5788
    iput-boolean p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;->primaryOnly:Z

    .line 5789
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$1;

    .prologue
    .line 5761
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 5793
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v1, Lorg/apache/ignite/internal/IgniteEx;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;->cacheName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/IgniteEx;->cachex(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v0

    .line 5795
    .local v0, "cache":Lorg/apache/ignite/internal/processors/cache/GridCache;, "Lorg/apache/ignite/internal/processors/cache/GridCache<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;->primaryOnly:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->primarySize()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Lorg/apache/ignite/internal/processors/cache/GridCache;->size()I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 5760
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;->apply(Ljava/lang/Object;)Ljava/lang/Integer;

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
    .line 5806
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;->cacheName:Ljava/lang/String;

    .line 5807
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;->primaryOnly:Z

    .line 5808
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
    .line 5800
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;->cacheName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 5801
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheAdapter$GlobalSizeCallable;->primaryOnly:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 5802
    return-void
.end method
