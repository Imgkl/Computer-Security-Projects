.class public abstract Lorg/apache/ignite/internal/processors/GridProcessorAdapter;
.super Ljava/lang/Object;
.source "GridProcessorAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/GridProcessor;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final ctx:Lorg/apache/ignite/internal/GridKernalContext;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field protected final log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 1
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-boolean v0, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;->log:Lorg/apache/ignite/IgniteLogger;

    .line 51
    return-void
.end method


# virtual methods
.method protected final assertParameter(ZLjava/lang/String;)V
    .locals 3
    .param p1, "cond"    # Z
    .param p2, "condDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grid configuration parameter invalid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    return-void
.end method

.method public collectDiscoveryData(Ljava/util/UUID;)Ljava/lang/Object;
    .locals 1
    .param p1, "nodeId"    # Ljava/util/UUID;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public discoveryDataType()Lorg/apache/ignite/internal/GridComponent$DiscoveryDataExchangeType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDiscoveryDataReceived(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/Object;)V
    .locals 0
    .param p1, "joiningNodeId"    # Ljava/util/UUID;
    .param p2, "rmtNodeId"    # Ljava/util/UUID;
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 76
    return-void
.end method

.method public onKernalStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public onKernalStop(Z)V
    .locals 0
    .param p1, "cancel"    # Z

    .prologue
    .line 61
    return-void
.end method

.method public printMemoryStats()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 81
    return-void
.end method

.method public stop(Z)V
    .locals 0
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-class v0, Lorg/apache/ignite/internal/processors/GridProcessorAdapter;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validateNode(Lorg/apache/ignite/cluster/ClusterNode;)Lorg/apache/ignite/spi/IgniteSpiNodeValidationResult;
    .locals 1
    .param p1, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method
