.class public Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;
.super Ljava/lang/Object;
.source "DynamicCacheDescriptor.java"


# instance fields
.field private cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private cancelled:Z

.field private deploymentId:Lorg/apache/ignite/lang/IgniteUuid;

.field private locCfg:Z

.field private volatile rmtCfgs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/configuration/CacheConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z

.field private staticCfg:Z


# direct methods
.method public constructor <init>(Lorg/apache/ignite/configuration/CacheConfiguration;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "cacheCfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;
    .param p2, "deploymentId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    .line 58
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->deploymentId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 59
    return-void
.end method


# virtual methods
.method public addRemoteConfiguration(Ljava/util/UUID;Lorg/apache/ignite/configuration/CacheConfiguration;)V
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "cfg"    # Lorg/apache/ignite/configuration/CacheConfiguration;

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->rmtCfgs:Ljava/util/Map;

    .line 154
    .local v0, "cfgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/configuration/CacheConfiguration;>;"
    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "cfgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/configuration/CacheConfiguration;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0    # "cfgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/configuration/CacheConfiguration;>;"
    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->rmtCfgs:Ljava/util/Map;

    .line 157
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void
.end method

.method public cacheConfiguration()Lorg/apache/ignite/configuration/CacheConfiguration;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    return-object v0
.end method

.method public cancelled()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cancelled:Z

    return v0
.end method

.method public clearRemoteConfigurations()V
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->rmtCfgs:Ljava/util/Map;

    .line 165
    return-void
.end method

.method public deploymentId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->deploymentId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public deploymentId(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "deploymentId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 72
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->deploymentId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 73
    return-void
.end method

.method public locallyConfigured(Z)V
    .locals 0
    .param p1, "locCfg"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->locCfg:Z

    .line 87
    return-void
.end method

.method public locallyConfigured()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->locCfg:Z

    return v0
.end method

.method public onCancelled()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cancelled:Z

    .line 128
    return-void
.end method

.method public onStart()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 107
    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->started:Z

    if-nez v1, :cond_0

    .line 108
    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->started:Z

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remoteConfiguration(Ljava/util/UUID;)Lorg/apache/ignite/configuration/CacheConfiguration;
    .locals 2
    .param p1, "nodeId"    # Ljava/util/UUID;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->rmtCfgs:Ljava/util/Map;

    .line 144
    .local v0, "cfgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/configuration/CacheConfiguration;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/configuration/CacheConfiguration;

    goto :goto_0
.end method

.method public staticallyConfigured(Z)V
    .locals 0
    .param p1, "staticCfg"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->staticCfg:Z

    .line 101
    return-void
.end method

.method public staticallyConfigured()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->staticCfg:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 169
    const-class v0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;

    const-string v1, "cacheName"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/DynamicCacheDescriptor;->cacheCfg:Lorg/apache/ignite/configuration/CacheConfiguration;

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/CacheConfiguration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
