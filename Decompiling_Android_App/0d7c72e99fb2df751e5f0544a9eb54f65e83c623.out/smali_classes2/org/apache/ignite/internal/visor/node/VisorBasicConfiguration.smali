.class public Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;
.super Ljava/lang/Object;
.source "VisorBasicConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private daemon:Z

.field private deployMode:Ljava/lang/Object;

.field private discoStartupDelay:J

.field private ggHome:Ljava/lang/String;

.field private gridName:Ljava/lang/String;

.field private jmxRemote:Z

.field private locHost:Ljava/lang/String;

.field private log:Ljava/lang/String;

.field private mBeanSrv:Ljava/lang/String;

.field private marsh:Ljava/lang/String;

.field private netTimeout:J

.field private noAscii:Z

.field private noDiscoOrder:Z

.field private noShutdownHook:Z

.field private nodeId:Ljava/util/UUID;

.field private progName:Ljava/lang/String;

.field private quiet:Z

.field private restart:Z

.field private successFile:Ljava/lang/String;

.field private updateNtf:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/internal/IgniteEx;Lorg/apache/ignite/configuration/IgniteConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;
    .locals 6
    .param p0, "ignite"    # Lorg/apache/ignite/internal/IgniteEx;
    .param p1, "c"    # Lorg/apache/ignite/configuration/IgniteConfiguration;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 105
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;-><init>()V

    .line 107
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->gridName:Ljava/lang/String;

    .line 108
    const-string v1, "IGNITE_HOME"

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getIgniteHome()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->ggHome:Ljava/lang/String;

    .line 109
    const-string v1, "IGNITE_LOCAL_HOST"

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getLocalHost()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->locHost:Ljava/lang/String;

    .line 110
    invoke-interface {p0}, Lorg/apache/ignite/internal/IgniteEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->nodeId:Ljava/util/UUID;

    .line 111
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->marsh:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->deployMode:Ljava/lang/Object;

    .line 113
    const-string v1, "IGNITE_DAEMON"

    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isDaemon()Z

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->boolValue(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->daemon:Z

    .line 114
    invoke-interface {p0}, Lorg/apache/ignite/internal/IgniteEx;->isJmxRemoteEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->jmxRemote:Z

    .line 115
    invoke-interface {p0}, Lorg/apache/ignite/internal/IgniteEx;->isRestartEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->restart:Z

    .line 116
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->netTimeout:J

    .line 117
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getGridLogger()Lorg/apache/ignite/IgniteLogger;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->log:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDiscoveryStartupDelay()J

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->discoStartupDelay:J

    .line 119
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->mBeanSrv:Ljava/lang/String;

    .line 120
    const-string v1, "IGNITE_NO_ASCII"

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->boolValue(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->noAscii:Z

    .line 121
    const-string v1, "IGNITE_NO_DISCO_ORDER"

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->boolValue(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->noDiscoOrder:Z

    .line 122
    const-string v1, "IGNITE_NO_SHUTDOWN_HOOK"

    invoke-static {v1, v4}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->boolValue(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->noShutdownHook:Z

    .line 123
    const-string v1, "IGNITE_PROG_NAME"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->progName:Ljava/lang/String;

    .line 124
    const-string v1, "IGNITE_QUIET"

    invoke-static {v1, v5}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->boolValue(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->quiet:Z

    .line 125
    const-string v1, "IGNITE_SUCCESS_FILE"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->successFile:Ljava/lang/String;

    .line 126
    const-string v1, "IGNITE_UPDATE_NOTIFIER"

    invoke-static {v1, v5}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->boolValue(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->updateNtf:Z

    .line 128
    return-object v0
.end method


# virtual methods
.method public daemon()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->daemon:Z

    return v0
.end method

.method public deploymentMode()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->deployMode:Ljava/lang/Object;

    return-object v0
.end method

.method public discoStartupDelay()J
    .locals 2

    .prologue
    .line 212
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->discoStartupDelay:J

    return-wide v0
.end method

.method public ggHome()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->ggHome:Ljava/lang/String;

    return-object v0
.end method

.method public gridName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->gridName:Ljava/lang/String;

    return-object v0
.end method

.method public jmxRemote()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->jmxRemote:Z

    return v0
.end method

.method public localHost()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->locHost:Ljava/lang/String;

    return-object v0
.end method

.method public logger()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->log:Ljava/lang/String;

    return-object v0
.end method

.method public mBeanServer()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->mBeanSrv:Ljava/lang/String;

    return-object v0
.end method

.method public marshaller()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->marsh:Ljava/lang/String;

    return-object v0
.end method

.method public networkTimeout()J
    .locals 2

    .prologue
    .line 198
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->netTimeout:J

    return-wide v0
.end method

.method public noAscii()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->noAscii:Z

    return v0
.end method

.method public noDiscoOrder()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->noDiscoOrder:Z

    return v0
.end method

.method public noShutdownHook()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->noShutdownHook:Z

    return v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public programName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->progName:Ljava/lang/String;

    return-object v0
.end method

.method public quiet()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->quiet:Z

    return v0
.end method

.method public restart()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->restart:Z

    return v0
.end method

.method public successFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->successFile:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateNotifier()Z
    .locals 1

    .prologue
    .line 268
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorBasicConfiguration;->updateNtf:Z

    return v0
.end method
