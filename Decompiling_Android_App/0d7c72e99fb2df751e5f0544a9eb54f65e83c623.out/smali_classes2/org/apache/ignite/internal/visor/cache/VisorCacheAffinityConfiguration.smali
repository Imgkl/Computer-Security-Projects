.class public Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;
.super Ljava/lang/Object;
.source "VisorCacheAffinityConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private excludeNeighbors:Ljava/lang/Boolean;

.field private function:Ljava/lang/String;

.field private mapper:Ljava/lang/String;

.field private partitionedBackups:I

.field private partitions:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/CacheConfiguration;)Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;
    .locals 5
    .param p0, "ccfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinity()Lorg/apache/ignite/cache/affinity/AffinityFunction;

    move-result-object v0

    .line 59
    .local v0, "aff":Lorg/apache/ignite/cache/affinity/AffinityFunction;
    const/4 v2, 0x0

    .line 61
    .local v2, "excludeNeighbors":Ljava/lang/Boolean;
    instance-of v4, v0, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 62
    check-cast v3, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;

    .line 64
    .local v3, "hashAffFunc":Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
    invoke-virtual {v3}, Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;->isExcludeNeighbors()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 67
    .end local v3    # "hashAffFunc":Lorg/apache/ignite/cache/affinity/rendezvous/RendezvousAffinityFunction;
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;

    invoke-direct {v1}, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;-><init>()V

    .line 69
    .local v1, "cfg":Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;
    invoke-static {v0}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;->function:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getAffinityMapper()Lorg/apache/ignite/cache/affinity/AffinityKeyMapper;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;->mapper:Ljava/lang/String;

    .line 71
    invoke-interface {v0}, Lorg/apache/ignite/cache/affinity/AffinityFunction;->partitions()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;->partitions:Ljava/lang/Integer;

    .line 72
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/CacheConfiguration;->getBackups()I

    move-result v4

    iput v4, v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;->partitionedBackups:I

    .line 73
    iput-object v2, v1, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;->excludeNeighbors:Ljava/lang/Boolean;

    .line 75
    return-object v1
.end method


# virtual methods
.method public excludeNeighbors()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;->excludeNeighbors:Ljava/lang/Boolean;

    return-object v0
.end method

.method public function()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;->function:Ljava/lang/String;

    return-object v0
.end method

.method public mapper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;->mapper:Ljava/lang/String;

    return-object v0
.end method

.method public partitionedBackups()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;->partitionedBackups:I

    return v0
.end method

.method public partitions()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;->partitions:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-class v0, Lorg/apache/ignite/internal/visor/cache/VisorCacheAffinityConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
