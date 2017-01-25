.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
.super Ljava/lang/Object;
.source "GridDeploymentMetadata.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private alias:Ljava/lang/String;

.field private clsLdr:Ljava/lang/ClassLoader;

.field private clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

.field private clsName:Ljava/lang/String;

.field private depMode:Lorg/apache/ignite/configuration/DeploymentMode;

.field private nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field private parentLdr:Ljava/lang/ClassLoader;

.field private participants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private record:Z

.field private sndNodeId:Ljava/util/UUID;

.field private userVer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)V
    .locals 1
    .param p1, "meta"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 80
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->clsName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVer:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->sndNodeId:Ljava/util/UUID;

    .line 84
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->clsLdr:Ljava/lang/ClassLoader;

    .line 85
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 86
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants:Ljava/util/Map;

    .line 87
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->parentLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->parentLdr:Ljava/lang/ClassLoader;

    .line 88
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->record()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->record:Z

    .line 89
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->nodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 90
    return-void
.end method


# virtual methods
.method alias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias:Ljava/lang/String;

    return-object v0
.end method

.method alias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->clsLdr:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public classLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "clsLdr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 270
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->clsLdr:Ljava/lang/ClassLoader;

    .line 271
    return-void
.end method

.method classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method classLoaderId(Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0
    .param p1, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 206
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 207
    return-void
.end method

.method className()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->clsName:Ljava/lang/String;

    return-object v0
.end method

.method className(Ljava/lang/String;)V
    .locals 0
    .param p1, "clsName"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->clsName:Ljava/lang/String;

    .line 144
    return-void
.end method

.method deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    return-object v0
.end method

.method deploymentMode(Lorg/apache/ignite/configuration/DeploymentMode;)V
    .locals 0
    .param p1, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;

    .prologue
    .line 107
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 108
    return-void
.end method

.method public nodeFilter()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method

.method public nodeFilter(Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, "nodeFilter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->nodeFilter:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 278
    return-void
.end method

.method public parentLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->parentLdr:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public parentLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "parentLdr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 224
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->parentLdr:Ljava/lang/ClassLoader;

    .line 225
    return-void
.end method

.method public participants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants:Ljava/util/Map;

    return-object v0
.end method

.method public participants(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants:Ljava/util/Map;

    .line 257
    return-void
.end method

.method record(Z)V
    .locals 0
    .param p1, "record"    # Z

    .prologue
    .line 242
    iput-boolean p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->record:Z

    .line 243
    return-void
.end method

.method record()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->record:Z

    return v0
.end method

.method senderNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->sndNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method senderNodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "sndNodeId"    # Ljava/util/UUID;

    .prologue
    .line 188
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->sndNodeId:Ljava/util/UUID;

    .line 189
    return-void
.end method

.method sequenceNumber()J
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->localId()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 289
    const-class v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;

    const-string v2, "seqNum"

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->localId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    invoke-static {v1, p0, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "n/a"

    goto :goto_0
.end method

.method userVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVer:Ljava/lang/String;

    return-object v0
.end method

.method userVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "userVer"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVer:Ljava/lang/String;

    .line 171
    return-void
.end method
