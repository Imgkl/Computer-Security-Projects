.class public Lorg/apache/ignite/internal/processors/igfs/IgfsHelperImpl;
.super Ljava/lang/Object;
.source "IgfsHelperImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/igfs/IgfsHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isIgfsBlockKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 52
    instance-of v0, p1, Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    return v0
.end method

.method public preProcessCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 31
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v0

    .line 33
    .local v0, "evictPlc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    instance-of v1, v0, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionFilter()Lorg/apache/ignite/cache/eviction/EvictionFilter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lorg/apache/ignite/cache/eviction/igfs/IgfsEvictionFilter;

    invoke-direct {v1}, Lorg/apache/ignite/cache/eviction/igfs/IgfsEvictionFilter;-><init>()V

    invoke-virtual {p1, v1}, Lorg/apache/ignite/configuration/CacheConfiguration;->setEvictionFilter(Lorg/apache/ignite/cache/eviction/EvictionFilter;)V

    .line 35
    :cond_0
    return-void
.end method

.method public validateCacheConfiguration(Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 5
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionPolicy()Lorg/apache/ignite/cache/eviction/EvictionPolicy;

    move-result-object v1

    .line 41
    .local v1, "evictPlc":Lorg/apache/ignite/cache/eviction/EvictionPolicy;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lorg/apache/ignite/cache/eviction/igfs/IgfsPerBlockLruEvictionPolicy;

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getEvictionFilter()Lorg/apache/ignite/cache/eviction/EvictionFilter;

    move-result-object v0

    .line 44
    .local v0, "evictFilter":Lorg/apache/ignite/cache/eviction/EvictionFilter;
    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/apache/ignite/cache/eviction/igfs/IgfsEvictionFilter;

    if-nez v2, :cond_0

    .line 45
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Eviction filter cannot be set explicitly when using IgfsPerBlockLruEvictionPolicy:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    .end local v0    # "evictFilter":Lorg/apache/ignite/cache/eviction/EvictionFilter;
    :cond_0
    return-void
.end method
