.class public Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;
.super Ljava/lang/Object;
.source "VisorExecutorServiceConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private igfsPoolSize:I

.field private mgmtPoolSize:I

.field private p2pPoolSz:I

.field private pubPoolSize:I

.field private restPoolSz:I

.field private sysPoolSz:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;
    .locals 3
    .param p0, "c"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    .line 55
    new-instance v1, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;

    invoke-direct {v1}, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;-><init>()V

    .line 57
    .local v1, "cfg":Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPublicThreadPoolSize()I

    move-result v2

    iput v2, v1, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;->pubPoolSize:I

    .line 58
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getSystemThreadPoolSize()I

    move-result v2

    iput v2, v1, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;->sysPoolSz:I

    .line 59
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getManagementThreadPoolSize()I

    move-result v2

    iput v2, v1, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;->mgmtPoolSize:I

    .line 60
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingThreadPoolSize()I

    move-result v2

    iput v2, v1, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;->p2pPoolSz:I

    .line 61
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIgfsThreadPoolSize()I

    move-result v2

    iput v2, v1, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;->igfsPoolSize:I

    .line 63
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v0

    .line 65
    .local v0, "cc":Lorg/apache/ignite/configuration/ConnectorConfiguration;
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getThreadPoolSize()I

    move-result v2

    iput v2, v1, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;->restPoolSz:I

    .line 68
    :cond_0
    return-object v1
.end method


# virtual methods
.method public igfsThreadPoolSize()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;->igfsPoolSize:I

    return v0
.end method

.method public managementThreadPoolSize()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;->mgmtPoolSize:I

    return v0
.end method

.method public peerClassLoadingThreadPoolSize()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;->p2pPoolSz:I

    return v0
.end method

.method public publicThreadPoolSize()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;->pubPoolSize:I

    return v0
.end method

.method public restThreadPoolSize()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;->restPoolSz:I

    return v0
.end method

.method public systemThreadPoolSize()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;->sysPoolSz:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorExecutorServiceConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
