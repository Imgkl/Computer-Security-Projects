.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;
.super Ljava/lang/Object;
.source "VisorCacheEvictionConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private evictSynchronized:Z

.field private filter:Ljava/lang/String;

.field private maxOverflowRatio:F

.field private plc:Ljava/lang/String;

.field private plcMaxSize:Ljava/lang/Integer;

.field private syncConcurrencyLvl:I

.field private syncKeyBufSize:I

.field private syncTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;
    .locals 4
    .param p0, "ccfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 65
    new-instance v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;-><init>()V

    .line 67
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v1

    .line 69
    .local v1, "plc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->plc:Ljava/lang/String;

    .line 70
    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->evictionPolicyMaxSize(Lorg/apache/ignite/cache/eviction/EvictionPolicy;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->plcMaxSize:Ljava/lang/Integer;

    .line 71
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionFilter()Lorg/apache/ignite/cache/eviction/EvictionFilter;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->filter:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictSynchronizedConcurrencyLevel()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->syncConcurrencyLvl:I

    .line 73
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictSynchronizedTimeout()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->syncTimeout:J

    .line 74
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictSynchronizedKeyBufferSize()I

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->syncKeyBufSize:I

    .line 75
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->isEvictSynchronized()Z

    move-result v2

    iput-boolean v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->evictSynchronized:Z

    .line 76
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictMaxOverflowRatio()F

    move-result v2

    iput v2, v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->maxOverflowRatio:F

    .line 78
    return-object v0
.end method


# virtual methods
.method public evictSynchronized()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->evictSynchronized:Z

    return v0
.end method

.method public filter()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public maxOverflowRatio()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->maxOverflowRatio:F

    return v0
.end method

.method public policy()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->plc:Ljava/lang/String;

    return-object v0
.end method

.method public policyMaxSize()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->plcMaxSize:Ljava/lang/Integer;

    return-object v0
.end method

.method public synchronizedConcurrencyLevel()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->syncConcurrencyLvl:I

    return v0
.end method

.method public synchronizedKeyBufferSize()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->syncKeyBufSize:I

    return v0
.end method

.method public synchronizedTimeout()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;->syncTimeout:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheEvictionConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
