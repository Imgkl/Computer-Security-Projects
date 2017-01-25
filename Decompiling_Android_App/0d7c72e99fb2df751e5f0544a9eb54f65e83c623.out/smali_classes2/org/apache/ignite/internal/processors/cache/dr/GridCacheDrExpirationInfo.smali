.class public Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrExpirationInfo;
.super Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;
.source "GridCacheDrExpirationInfo.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private expireTime:J

.field private ttl:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;JJ)V
    .locals 1
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .param p2, "ver"    # Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;
    .param p3, "ttl"    # J
    .param p5, "expireTime"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrInfo;-><init>(Lorg/apache/ignite/internal/processors/cache/CacheObject;Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersion;)V

    .line 55
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrExpirationInfo;->ttl:J

    .line 56
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrExpirationInfo;->expireTime:J

    .line 57
    return-void
.end method


# virtual methods
.method public expireTime()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrExpirationInfo;->expireTime:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-class v0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrExpirationInfo;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ttl()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/cache/dr/GridCacheDrExpirationInfo;->ttl:J

    return-wide v0
.end method
