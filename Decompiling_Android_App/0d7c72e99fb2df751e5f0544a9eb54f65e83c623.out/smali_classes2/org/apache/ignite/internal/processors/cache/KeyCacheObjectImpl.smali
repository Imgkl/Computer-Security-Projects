.class public Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;
.super Lorg/apache/ignite/internal/processors/cache/CacheObjectAdapter;
.source "KeyCacheObjectImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/cache/CacheObjectAdapter;",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObject;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheObjectAdapter;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[B)V
    .locals 1
    .param p1, "val"    # Ljava/lang/Object;
    .param p2, "valBytes"    # [B

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/CacheObjectAdapter;-><init>()V

    .line 42
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->valBytes:[B

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 26
    check-cast p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->compareTo(Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;)I
    .locals 2
    .param p1, "other"    # Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;

    .prologue
    .line 51
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Comparable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 52
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Comparable;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 54
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Comparable;

    iget-object v1, p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0x5a

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 125
    instance-of v1, p1, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 130
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 128
    check-cast v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;

    .line 130
    .local v0, "other":Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public finishUnmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .param p2, "ldr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 117
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->valBytes:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->valBytes:[B

    invoke-interface {v0, p1, v1, p2}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    .line 121
    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public internal()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    instance-of v0, v0, Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;

    return v0
.end method

.method public prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    .prologue
    .line 93
    return-object p0
.end method

.method public prepareMarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)V
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->valBytes:[B

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->marshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->valBytes:[B

    .line 112
    :cond_0
    return-void
.end method

.method public value(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Z)Ljava/lang/Object;
    .locals 4
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .param p2, "cpy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;",
            "Z)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 75
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->needCopy(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x1

    .line 77
    :goto_0
    if-eqz p2, :cond_1

    .line 79
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->processor()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->valBytes:[B

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 88
    :goto_1
    return-object v1

    .line 75
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    const-string v2, "Failed to unmarshal object."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 88
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    goto :goto_1
.end method

.method public valueBytes(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)[B
    .locals 2
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->valBytes:[B

    if-nez v0, :cond_0

    .line 60
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->processor()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->val:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->marshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->valBytes:[B

    .line 62
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/KeyCacheObjectImpl;->valBytes:[B

    return-object v0
.end method
