.class public Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;
.super Lorg/apache/ignite/internal/processors/cache/CacheObjectAdapter;
.source "CacheObjectImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->$assertionsDisabled:Z

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
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    .line 46
    return-void
.end method


# virtual methods
.method public directType()B
    .locals 1

    .prologue
    .line 105
    const/16 v0, 0x59

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 117
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 97
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->unmarshalValues()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->processor()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    invoke-interface {v0, p1, v1, p2}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    .line 101
    :cond_1
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 112
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public prepareForCache(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;

    .prologue
    .line 124
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
    .line 89
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->cacheObjects()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->marshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    .line 93
    :cond_1
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
    .line 51
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->needCopy(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p2, 0x1

    .line 54
    :goto_0
    if-eqz p2, :cond_4

    .line 55
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    if-nez v1, :cond_2

    .line 56
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    const-string v2, "Failed to unmarshal object."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 51
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 58
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->processor()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    invoke-interface {v1, p1, v2}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->marshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    .line 61
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->processor()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_1
    invoke-interface {v2, p1, v3, v1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    .line 76
    :goto_2
    return-object v1

    .line 61
    :cond_3
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_1

    .line 65
    :cond_4
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 66
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    goto :goto_2

    .line 68
    :cond_5
    sget-boolean v1, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 70
    :cond_6
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->processor()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->unmarshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;[BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 76
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    goto :goto_2
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
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;->processor()Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->val:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Lorg/apache/ignite/internal/processors/cacheobject/IgniteCacheObjectProcessor;->marshal(Lorg/apache/ignite/internal/processors/cache/CacheObjectContext;Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheObjectImpl;->valBytes:[B

    return-object v0
.end method
