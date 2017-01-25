.class public Lorg/apache/ignite/internal/GridPluginComponent;
.super Ljava/lang/Object;
.source "GridPluginComponent.java"

# interfaces
.implements Lorg/apache/ignite/internal/GridComponent;


# instance fields
.field private final plugin:Lorg/apache/ignite/plugin/PluginProvider;


# direct methods
.method public constructor <init>(Lorg/apache/ignite/plugin/PluginProvider;)V
    .locals 0
    .param p1, "plugin"    # Lorg/apache/ignite/plugin/PluginProvider;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/ignite/internal/GridPluginComponent;->plugin:Lorg/apache/ignite/plugin/PluginProvider;

    .line 40
    return-void
.end method


# virtual methods
.method public collectDiscoveryData(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public discoveryDataType()Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDiscoveryDataReceived(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 0
    .param p1, "joiningNodeId"    # Ljava/util/UUID;
    .param p2, "rmtNodeId"    # Ljava/util/UUID;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 83
    return-void
.end method

.method public onKernalStart()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPluginComponent;->plugin:Lorg/apache/ignite/plugin/PluginProvider;

    invoke-interface {v0}, Lorg/apache/ignite/plugin/PluginProvider;->onIgniteStart()V

    .line 63
    return-void
.end method

.method public onKernalStop(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPluginComponent;->plugin:Lorg/apache/ignite/plugin/PluginProvider;

    invoke-interface {v0, p1}, Lorg/apache/ignite/plugin/PluginProvider;->onIgniteStop(Z)V

    .line 68
    return-void
.end method

.method public plugin()Lorg/apache/ignite/plugin/PluginProvider;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPluginComponent;->plugin:Lorg/apache/ignite/plugin/PluginProvider;

    return-object v0
.end method

.method public printMemoryStats()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public stop(Z)V
    .locals 1
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/GridPluginComponent;->plugin:Lorg/apache/ignite/plugin/PluginProvider;

    invoke-interface {v0, p1}, Lorg/apache/ignite/plugin/PluginProvider;->stop(Z)V

    .line 58
    return-void
.end method

.method public validateNode(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;
    .locals 5
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/GridPluginComponent;->plugin:Lorg/apache/ignite/plugin/PluginProvider;

    invoke-interface {v1, p1}, Lorg/apache/ignite/plugin/PluginProvider;->validateNewNode(Lorg/apache/ignite/cluster/ClusterNode;)V
    :try_end_0
    .catch Lorg/apache/ignite/plugin/PluginValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v1, 0x0

    .line 93
    :goto_0
    return-object v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lorg/apache/ignite/plugin/PluginValidationException;
    new-instance v1, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;

    invoke-virtual {v0}, Lorg/apache/ignite/plugin/PluginValidationException;->nodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/ignite/plugin/PluginValidationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/plugin/PluginValidationException;->remoteMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
