.class Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils;
.super Ljava/lang/Object;
.source "GridAffinityUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$1;,
        Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    return-void
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p1, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils;->affinityMessage(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;

    move-result-object v0

    return-object v0
.end method

.method static affinityJob(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;)Ljava/util/concurrent/Callable;
    .locals 2
    .param p0, "cacheName"    # Ljava/lang/String;
    .param p1, "topVer"    # Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;",
            ")",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lorg/apache/ignite/internal/util/lang/GridTuple3",
            "<",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;",
            "Lorg/apache/ignite/internal/processors/affinity/GridAffinityAssignment;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$AffinityJob;-><init>(Ljava/lang/String;Lorg/apache/ignite/internal/processors/affinity/AffinityTopologyVersion;Lorg/apache/ignite/internal/processors/affinity/GridAffinityUtils$1;)V

    return-object v0
.end method

.method private static affinityMessage(Lorg/apache/ignite/internal/GridKernalContext;Ljava/lang/Object;)Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;
    .locals 9
    .param p0, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 65
    .local v7, "cls":Ljava/lang/Class;
    invoke-interface {p0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v8

    .line 67
    .local v8, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v8, :cond_0

    .line 68
    new-instance v0, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to deploy affinity object with class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    new-instance v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;

    invoke-interface {p0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v4

    invoke-virtual {v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->userVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->participants()Ljava/util/Map;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;-><init>([BLjava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method static unmarshall(Lorg/apache/ignite/internal/GridKernalContext;Ljava/util/UUID;Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;)Ljava/lang/Object;
    .locals 11
    .param p0, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p1, "sndNodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-interface {p0}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->sourceClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->sourceClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->userVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->loaderParticipants()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getGlobalDeployment(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v9

    .line 100
    .local v9, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v9, :cond_0

    .line 101
    new-instance v0, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to obtain affinity object (is peer class loading turned on?): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    invoke-interface {p0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->source()[B

    move-result-object v1

    invoke-virtual {v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v10

    .line 107
    .local v10, "src":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/apache/ignite/internal/GridKernalContext;->resource()Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->sourceClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v9, v1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployedClass(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v9, v1, v10}, Lorg/apache/ignite/internal/processors/resource/GridResourceProcessor;->inject(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 109
    return-object v10
.end method
