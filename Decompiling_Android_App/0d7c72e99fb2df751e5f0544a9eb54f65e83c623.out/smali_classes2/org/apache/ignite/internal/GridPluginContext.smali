.class public Lorg/apache/ignite/internal/GridPluginContext;
.super Ljava/lang/Object;
.source "GridPluginContext.java"

# interfaces
.implements Lorg/apache/ignite/plugin/PluginContext;


# instance fields
.field private final cfg:Lorg/apache/ignite/plugin/PluginConfiguration;

.field private final ctx:Lorg/apache/ignite/internal/GridKernalContext;

.field private igniteCfg:Lorg/apache/ignite/configuration/IgniteConfiguration;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/plugin/PluginConfiguration;Lorg/apache/ignite/configuration/IgniteConfiguration;)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p2, "cfg"    # Lorg/apache/ignite/plugin/PluginConfiguration;
    .param p3, "igniteCfg"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lorg/apache/ignite/internal/GridPluginContext;->cfg:Lorg/apache/ignite/plugin/PluginConfiguration;

    .line 47
    iput-object p1, p0, Lorg/apache/ignite/internal/GridPluginContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 48
    iput-object p3, p0, Lorg/apache/ignite/internal/GridPluginContext;->igniteCfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    .line 49
    return-void
.end method


# virtual methods
.method public configuration()Lorg/apache/ignite/plugin/PluginConfiguration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lorg/apache/ignite/plugin/PluginConfiguration;",
            ">()TC;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPluginContext;->cfg:Lorg/apache/ignite/plugin/PluginConfiguration;

    return-object v0
.end method

.method public deregisterPort(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "proto"    # Lorg/apache/ignite/spi/IgnitePortProtocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/spi/IgnitePortProtocol;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPluginContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->deregisterPort(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V

    .line 89
    return-void
.end method

.method public deregisterPorts(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPluginContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->deregisterPorts(Ljava/lang/Class;)V

    .line 94
    return-void
.end method

.method public grid()Lorg/apache/ignite/Ignite;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPluginContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->grid()Lorg/apache/ignite/internal/IgniteEx;

    move-result-object v0

    return-object v0
.end method

.method public igniteConfiguration()Lorg/apache/ignite/configuration/IgniteConfiguration;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPluginContext;->igniteCfg:Lorg/apache/ignite/configuration/IgniteConfiguration;

    return-object v0
.end method

.method public localNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPluginContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v0

    return-object v0
.end method

.method public log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/ignite/IgniteLogger;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPluginContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0, p1}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    return-object v0
.end method

.method public nodes()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPluginContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->allNodes()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "proto"    # Lorg/apache/ignite/spi/IgnitePortProtocol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/ignite/spi/IgnitePortProtocol;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPluginContext;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->ports()Lorg/apache/ignite/internal/processors/port/GridPortProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/port/GridPortProcessor;->registerPort(ILorg/apache/ignite/spi/IgnitePortProtocol;Ljava/lang/Class;)V

    .line 84
    return-void
.end method
