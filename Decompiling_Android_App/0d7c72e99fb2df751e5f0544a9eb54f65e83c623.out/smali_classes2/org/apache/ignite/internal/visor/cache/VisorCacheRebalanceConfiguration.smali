.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;
.super Ljava/lang/Object;
.source "VisorCacheRebalanceConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private batchSize:I

.field private mode:Lorg/apache/ignite/cache/CacheRebalanceMode;

.field private partitionedDelay:J

.field private threadPoolSize:I

.field private throttle:J

.field private timeout:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;
    .locals 4
    .param p0, "ccfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 56
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;-><init>()V

    .line 58
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceMode()Lorg/apache/ignite/cache/CacheRebalanceMode;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;->mode:Lorg/apache/ignite/cache/CacheRebalanceMode;

    .line 59
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceBatchSize()I

    move-result v1

    iput v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;->batchSize:I

    .line 60
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceThreadPoolSize()I

    move-result v1

    iput v1, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;->threadPoolSize:I

    .line 61
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceDelay()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;->partitionedDelay:J

    .line 62
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceThrottle()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;->throttle:J

    .line 63
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getRebalanceTimeout()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;->timeout:J

    .line 65
    return-object v0
.end method


# virtual methods
.method public batchSize()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;->batchSize:I

    return v0
.end method

.method public mode()Lorg/apache/ignite/cache/CacheRebalanceMode;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;->mode:Lorg/apache/ignite/cache/CacheRebalanceMode;

    return-object v0
.end method

.method public partitionedDelay()J
    .locals 2

    .prologue
    .line 93
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;->partitionedDelay:J

    return-wide v0
.end method

.method public threadPoolSize()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;->threadPoolSize:I

    return v0
.end method

.method public throttle()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;->throttle:J

    return-wide v0
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;->timeout:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheRebalanceConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
