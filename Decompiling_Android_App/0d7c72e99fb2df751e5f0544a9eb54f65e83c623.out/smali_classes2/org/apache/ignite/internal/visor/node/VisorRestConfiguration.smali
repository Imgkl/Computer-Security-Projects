.class public Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;
.super Ljava/lang/Object;
.source "VisorRestConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private accessibleFolders:[Ljava/lang/String;

.field private jettyHost:Ljava/lang/String;

.field private jettyPath:Ljava/lang/String;

.field private jettyPort:Ljava/lang/Integer;

.field private restEnabled:Z

.field private tcpHost:Ljava/lang/String;

.field private tcpPort:Ljava/lang/Integer;

.field private tcpSslCtxFactory:Ljava/lang/String;

.field private tcpSslEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;
    .locals 5
    .param p0, "c"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    .line 69
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;-><init>()V

    .line 71
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getConnectorConfiguration()Lorg/apache/ignite/configuration/ConnectorConfiguration;

    move-result-object v1

    .line 73
    .local v1, "clnCfg":Lorg/apache/ignite/configuration/ConnectorConfiguration;
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 75
    .local v2, "restEnabled":Z
    :goto_0
    iput-boolean v2, v0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->restEnabled:Z

    .line 77
    if-eqz v2, :cond_0

    .line 78
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->isSslEnabled()Z

    move-result v3

    iput-boolean v3, v0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->tcpSslEnabled:Z

    .line 79
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getJettyPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->jettyPath:Ljava/lang/String;

    .line 80
    const-string v3, "IGNITE_JETTY_HOST"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->jettyHost:Ljava/lang/String;

    .line 81
    const-string v3, "IGNITE_JETTY_PORT"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->intValue(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->jettyPort:Ljava/lang/Integer;

    .line 82
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->tcpHost:Ljava/lang/String;

    .line 83
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->tcpPort:Ljava/lang/Integer;

    .line 84
    invoke-virtual {v1}, Lorg/apache/ignite/configuration/ConnectorConfiguration;->getSslContextFactory()Lorg/apache/ignite/internal/client/ssl/GridSslContextFactory;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->tcpSslCtxFactory:Ljava/lang/String;

    .line 87
    :cond_0
    return-object v0

    .line 73
    .end local v2    # "restEnabled":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public accessibleFolders()[Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->accessibleFolders:[Ljava/lang/String;

    return-object v0
.end method

.method public jettyHost()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->jettyHost:Ljava/lang/String;

    return-object v0
.end method

.method public jettyPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->jettyPath:Ljava/lang/String;

    return-object v0
.end method

.method public jettyPort()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->jettyPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public restEnabled()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->restEnabled:Z

    return v0
.end method

.method public tcpHost()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->tcpHost:Ljava/lang/String;

    return-object v0
.end method

.method public tcpPort()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->tcpPort:Ljava/lang/Integer;

    return-object v0
.end method

.method public tcpSslContextFactory()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->tcpSslCtxFactory:Ljava/lang/String;

    return-object v0
.end method

.method public tcpSslEnabled()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;->tcpSslEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorRestConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
