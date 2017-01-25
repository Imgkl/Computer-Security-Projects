.class public Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
.super Ljava/lang/Object;
.source "GridCacheDrInfo.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

.field private ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V
    .locals 1
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_1
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 57
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

    .line 58
    return-void
.end method


# virtual methods
.method public expireTime()J
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    return-wide v0
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
    .line 90
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 91
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 78
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public value()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method

.method public version()Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->ver:Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;

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
    .line 95
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 96
    :cond_0
    return-void
.end method
