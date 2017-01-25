.class public Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;
.super Lorg/apache/ignite/internal/managers/GridManagerAdapter;
.source "GridDeploymentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager$1;,
        Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager$LocalDeployment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/managers/GridManagerAdapter",
        "<",
        "Lorg/apache/ignite/spi/deployment/DeploymentSpi;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

.field private ldrStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

.field private final locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

.field private locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

.field private verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 9
    .param p1, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;

    .prologue
    const/4 v6, 0x0

    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentSpi()Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;-><init>(Lorg/apache/ignite/internal/GridKernalContext;[Lorg/apache/ignite/spi/IgniteSpi;)V

    .line 63
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 64
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentSpi()Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    move-result-object v8

    .line 66
    .local v8, "spi":Lorg/apache/ignite/spi/deployment/DeploymentSpi;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/apache/ignite/spi/deployment/IgnoreIfPeerClassLoadingDisabled;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lorg/apache/ignite/spi/deployment/IgnoreIfPeerClassLoadingDisabled;

    .line 69
    .local v7, "ann":Lorg/apache/ignite/spi/deployment/IgnoreIfPeerClassLoadingDisabled;
    if-eqz v7, :cond_1

    new-instance v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager$LocalDeployment;

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    :goto_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/ignite/internal/GridKernalContext;->userVersion(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager$LocalDeployment;-><init>(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager$1;)V

    :goto_1
    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 80
    .end local v7    # "ann":Lorg/apache/ignite/spi/deployment/IgnoreIfPeerClassLoadingDisabled;
    .end local v8    # "spi":Lorg/apache/ignite/spi/deployment/DeploymentSpi;
    :goto_2
    return-void

    .line 69
    .restart local v7    # "ann":Lorg/apache/ignite/spi/deployment/IgnoreIfPeerClassLoadingDisabled;
    .restart local v8    # "spi":Lorg/apache/ignite/spi/deployment/DeploymentSpi;
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->gridClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v0, v6

    goto :goto_1

    .line 79
    .end local v7    # "ann":Lorg/apache/ignite/spi/deployment/IgnoreIfPeerClassLoadingDisabled;
    .end local v8    # "spi":Lorg/apache/ignite/spi/deployment/DeploymentSpi;
    :cond_2
    iput-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    goto :goto_2
.end method

.method private isPerVersionMode(Lorg/apache/ignite/configuration/DeploymentMode;)Z
    .locals 1
    .param p1, "mode"    # Lorg/apache/ignite/configuration/DeploymentMode;

    .prologue
    .line 528
    sget-object v0, Lorg/apache/ignite/configuration/DeploymentMode;->CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/configuration/DeploymentMode;->SHARED:Lorg/apache/ignite/configuration/DeploymentMode;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tasks(Ljava/util/Map;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;[Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 5
    .param p2, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<**>;>;>;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            "[",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<**>;>;>;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<+Lorg/apache/ignite/compute/ComputeTask<**>;>;>;"
    .local p3, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-Ljava/lang/Class<+Lorg/apache/ignite/compute/ComputeTask<**>;>;>;"
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 188
    :cond_0
    sget-boolean v3, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->$assertionsDisabled:Z

    if-nez v3, :cond_1

    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 190
    :cond_1
    invoke-virtual {p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployedClassMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    .local v0, "clsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    const-class v4, Lorg/apache/ignite/compute/ComputeTask;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 192
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 194
    .local v2, "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/compute/ComputeTask<**>;>;"
    invoke-static {v2, p3}, Lorg/apache/ignite/internal/util/typedef/F;->isAll(Ljava/lang/Object;[Lorg/apache/ignite/lang/IgnitePredicate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 198
    .end local v0    # "clsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Class<*>;>;"
    .end local v2    # "taskCls":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/ignite/compute/ComputeTask<**>;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public addCacheParticipants(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, "allParticipants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .local p2, "addedParticipants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->addParticipants(Ljava/util/Map;Ljava/util/Map;)V

    .line 521
    return-void
.end method

.method public deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 11
    .param p2, "clsLdr"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x1

    .line 247
    if-nez p2, :cond_0

    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 250
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "clsName":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->lambdaEnclosingClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "lambdaParent":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 255
    move-object v0, v3

    .line 259
    const/4 v7, 0x1

    :try_start_0
    invoke-static {v0, v7, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 266
    :cond_1
    instance-of v7, p2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    if-eqz v7, :cond_6

    move-object v4, p2

    .line 267
    check-cast v4, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .line 270
    .local v4, "ldr":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    invoke-interface {v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/configuration/DeploymentMode;->ISOLATED:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eq v7, v8, :cond_2

    invoke-interface {v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/configuration/DeploymentMode;->PRIVATE:Lorg/apache/ignite/configuration/DeploymentMode;

    if-ne v7, v8, :cond_4

    :cond_2
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/configuration/DeploymentMode;->SHARED:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eq v7, v8, :cond_3

    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v7}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v7

    sget-object v8, Lorg/apache/ignite/configuration/DeploymentMode;->CONTINUOUS:Lorg/apache/ignite/configuration/DeploymentMode;

    if-ne v7, v8, :cond_4

    :cond_3
    const-class v7, Lorg/apache/ignite/internal/processors/task/GridInternal;

    invoke-static {p1, v7}, Lorg/apache/ignite/internal/util/typedef/internal/U;->hasAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 273
    new-instance v7, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempt to deploy class loaded in ISOLATED or PRIVATE mode on node with SHARED or CONTINUOUS deployment mode [cls="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", clsDeployMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", localDeployMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v9}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 261
    .end local v4    # "ldr":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot deploy parent class for lambda: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 277
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "ldr":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    :cond_4
    new-instance v5, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;

    invoke-direct {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;-><init>()V

    .line 279
    .local v5, "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    invoke-virtual {v5, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v5, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoader(Ljava/lang/ClassLoader;)V

    .line 285
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v7, v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v1

    .line 287
    .local v1, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v1, :cond_5

    .line 288
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ldrStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v1

    .line 290
    if-nez v1, :cond_5

    .line 291
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v1

    .line 307
    .end local v1    # "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .end local v4    # "ldr":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    .end local v5    # "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    :cond_5
    :goto_0
    return-object v1

    .line 296
    :cond_6
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    if-eqz v7, :cond_8

    .line 297
    const-class v7, Lorg/apache/ignite/compute/ComputeTask;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 298
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    const-class v8, Lorg/apache/ignite/compute/ComputeTaskName;

    invoke-virtual {v7, p1, v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->annotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lorg/apache/ignite/compute/ComputeTaskName;

    .line 300
    .local v6, "taskNameAnn":Lorg/apache/ignite/compute/ComputeTaskName;
    if-eqz v6, :cond_7

    .line 301
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    new-array v8, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v6}, Lorg/apache/ignite/compute/ComputeTaskName;->value()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v7, p1, v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->addDeployedClass(Ljava/lang/Class;[Ljava/lang/String;)Z

    .line 304
    .end local v6    # "taskNameAnn":Lorg/apache/ignite/compute/ComputeTaskName;
    :cond_7
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    goto :goto_0

    .line 307
    :cond_8
    iget-object v7, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v7, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->explicitDeploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v1

    goto :goto_0
.end method

.method public enabled()Z
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Lorg/apache/ignite/internal/managers/GridManagerAdapter;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs findAllTasks([Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Map;
    .locals 5
    .param p1    # [Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<-",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<**>;>;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/ignite/compute/ComputeTask",
            "<**>;>;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "p":[Lorg/apache/ignite/lang/IgnitePredicate;, "[Lorg/apache/ignite/lang/IgnitePredicate<-Ljava/lang/Class<+Lorg/apache/ignite/compute/ComputeTask<**>;>;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Class<+Lorg/apache/ignite/compute/ComputeTask<**>;>;>;"
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    if-eqz v4, :cond_1

    .line 169
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-direct {p0, v3, v4, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->tasks(Ljava/util/Map;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;[Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 177
    :cond_0
    return-object v3

    .line 171
    :cond_1
    iget-object v4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployments()Ljava/util/Collection;

    move-result-object v1

    .line 173
    .local v1, "deps":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/managers/deployment/GridDeployment;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 174
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    invoke-direct {p0, v3, v0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->tasks(Ljava/util/Map;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;[Lorg/apache/ignite/lang/IgnitePredicate;)V

    goto :goto_0
.end method

.method public getClassLoaderId(Ljava/lang/ClassLoader;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .param p1, "ldr"    # Ljava/lang/ClassLoader;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 537
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 539
    :cond_0
    instance-of v0, p1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .end local p1    # "ldr":Ljava/lang/ClassLoader;
    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p1    # "ldr":Ljava/lang/ClassLoader;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeployment(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 5
    .param p1, "rsrcName"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 337
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    if-eqz v3, :cond_1

    .line 338
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 355
    :cond_0
    :goto_0
    return-object v0

    .line 340
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getLocalDeployment(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    .line 342
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v0, :cond_0

    .line 343
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 345
    .local v2, "ldr":Ljava/lang/ClassLoader;
    instance-of v3, v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 346
    check-cast v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .line 348
    .local v1, "depLdr":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ldrStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    .line 350
    if-nez v0, :cond_0

    .line 351
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    goto :goto_0
.end method

.method public getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 2
    .param p1, "ldrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 317
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 329
    :goto_0
    return-object v1

    .line 318
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 320
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    .line 322
    .local v0, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v0, :cond_2

    .line 323
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ldrStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    .line 325
    if-nez v0, :cond_2

    .line 326
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v1, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 329
    goto :goto_0
.end method

.method public getGlobalDeployment(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 14
    .param p1, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p2, "rsrcName"    # Ljava/lang/String;
    .param p3, "clsName"    # Ljava/lang/String;
    .param p4, "userVer"    # Ljava/lang/String;
    .param p5, "sndNodeId"    # Ljava/util/UUID;
    .param p6, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p8    # Lorg/apache/ignite/lang/IgnitePredicate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/configuration/DeploymentMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 401
    .local p7, "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    .local p8, "nodeFilter":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    if-eqz v11, :cond_1

    .line 402
    iget-object v6, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 510
    :cond_0
    :goto_0
    return-object v6

    .line 404
    :cond_1
    invoke-static/range {p3 .. p3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->lambdaEnclosingClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 406
    .local v4, "lambdaEnclosingClsName":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 407
    move-object/from16 p3, v4

    .line 409
    :cond_2
    new-instance v7, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;

    invoke-direct {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;-><init>()V

    .line 411
    .local v7, "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    invoke-virtual {v7, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode(Lorg/apache/ignite/configuration/DeploymentMode;)V

    .line 412
    move-object/from16 v0, p3

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className(Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias(Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion(Ljava/lang/String;)V

    .line 415
    move-object/from16 v0, p5

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId(Ljava/util/UUID;)V

    .line 416
    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->classLoaderId(Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 417
    move-object/from16 v0, p7

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->participants(Ljava/util/Map;)V

    .line 418
    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->nodeFilter(Lorg/apache/ignite/lang/IgnitePredicate;)V

    .line 420
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v11

    if-nez v11, :cond_3

    .line 421
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->record(Z)V

    .line 423
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v11, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v6

    goto :goto_0

    .line 428
    :cond_3
    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->isPerVersionMode(Lorg/apache/ignite/configuration/DeploymentMode;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 429
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->record(Z)V

    .line 431
    const/4 v9, 0x1

    .line 434
    .local v9, "reuse":Z
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 435
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getPeerClassLoadingLocalClassPathExclude()[Ljava/lang/String;

    move-result-object v8

    .line 437
    .local v8, "p2pExc":[Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 438
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_7

    aget-object v10, v1, v3

    .line 440
    .local v10, "rsrc":Ljava/lang/String;
    const-string v11, "*"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 441
    const/4 v11, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 443
    :cond_4
    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 444
    :cond_5
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 445
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Will not reuse local deployment because resource is excluded [meta="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 448
    :cond_6
    const/4 v9, 0x0

    .line 456
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "p2pExc":[Ljava/lang/String;
    .end local v10    # "rsrc":Ljava/lang/String;
    :cond_7
    if-eqz v9, :cond_c

    .line 457
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v11, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v6

    .line 459
    .local v6, "locDep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v6, :cond_8

    if-eqz p7, :cond_8

    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v11

    move-object/from16 v0, p7

    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 460
    iget-object v12, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v11

    move-object/from16 v0, p7

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {v12, v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v6

    .line 462
    :cond_8
    if-eqz v6, :cond_c

    .line 463
    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v11

    invoke-direct {p0, v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->isPerVersionMode(Lorg/apache/ignite/configuration/DeploymentMode;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 464
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to deploy class in SHARED or CONTINUOUS mode (class is locally deployed in some other mode). Either change GridConfiguration.getDeploymentMode() property to SHARED or CONTINUOUS or remove class from local classpath and any of the local GAR deployments that may have it [cls="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", depMode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Failed to deploy class in SHARED or CONTINUOUS mode."

    invoke-static {v11, v12, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 470
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 438
    .end local v6    # "locDep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    .restart local v8    # "p2pExc":[Ljava/lang/String;
    .restart local v10    # "rsrc":Ljava/lang/String;
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 473
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "p2pExc":[Ljava/lang/String;
    .end local v10    # "rsrc":Ljava/lang/String;
    .restart local v6    # "locDep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_a
    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->userVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 474
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failed to deploy class in SHARED or CONTINUOUS mode for given user version (class is locally deployed for a different user version) [cls="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", localVer="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->userVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", otherVer="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->userVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Failed to deploy class in SHARED or CONTINUOUS mode."

    invoke-static {v11, v12, v13}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 479
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 482
    :cond_b
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v11}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 483
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Reusing local deployment for SHARED or CONTINUOUS mode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 489
    .end local v6    # "locDep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    :cond_c
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v11, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v6

    goto/16 :goto_0

    .line 493
    .end local v9    # "reuse":Z
    :cond_d
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->record(Z)V

    .line 495
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v11, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v2

    .line 497
    .local v2, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v11}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v11

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 498
    if-nez v2, :cond_e

    .line 499
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Task got undeployed while deployment was in progress: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    :cond_e
    move-object v6, v2

    .line 502
    goto/16 :goto_0

    .line 505
    :cond_f
    if-eqz v2, :cond_10

    .line 506
    invoke-virtual {v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->parentLoader(Ljava/lang/ClassLoader;)V

    .line 508
    :cond_10
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->record(Z)V

    .line 510
    iget-object v11, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ldrStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v11, v7}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v6

    goto/16 :goto_0
.end method

.method public getLocalDeployment(Ljava/lang/String;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 4
    .param p1, "rsrcName"    # Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 363
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    if-eqz v3, :cond_0

    .line 364
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 378
    :goto_0
    return-object v3

    .line 366
    :cond_0
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->lambdaEnclosingClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, "lambdaEnclosingClsName":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v0, p1

    .line 370
    .local v0, "clsName":Ljava/lang/String;
    :goto_1
    new-instance v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;

    invoke-direct {v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;-><init>()V

    .line 372
    .local v2, "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->record(Z)V

    .line 373
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->deploymentMode(Lorg/apache/ignite/configuration/DeploymentMode;)V

    .line 374
    invoke-virtual {v2, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->alias(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->className(Ljava/lang/String;)V

    .line 376
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v3}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;->senderNodeId(Ljava/util/UUID;)V

    .line 378
    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v3, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->getDeployment(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v3

    goto :goto_0

    .end local v0    # "clsName":Ljava/lang/String;
    .end local v2    # "meta":Lorg/apache/ignite/internal/managers/deployment/GridDeploymentMetadata;
    :cond_1
    move-object v0, v1

    .line 368
    goto :goto_1
.end method

.method public isGlobalLoader(Ljava/lang/ClassLoader;)Z
    .locals 1
    .param p1, "ldr"    # Ljava/lang/ClassLoader;

    .prologue
    .line 547
    instance-of v0, p1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentClassLoader;

    return v0
.end method

.method public onKernalStart0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->onKernalStart()V

    .line 139
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ldrStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->onKernalStart()V

    .line 140
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->onKernalStart()V

    .line 141
    return-void
.end method

.method public onKernalStop0(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->onKernalStop()V

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ldrStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ldrStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->onKernalStop()V

    .line 151
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->onKernalStop()V

    .line 153
    :cond_2
    return-void
.end method

.method public start()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-static {p0}, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridProtocolHandler;->registerDeploymentManager(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;)V

    .line 86
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getDeploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "ctx.config().getDeploymentMode() != null"

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->assertParameter(ZLjava/lang/String;)V

    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->isPeerClassLoadingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v0}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getNetworkTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    :goto_1
    const-string v0, "networkTimeout > 0"

    invoke-virtual {p0, v1, v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->assertParameter(ZLjava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->startSpi()V

    .line 93
    new-instance v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;-><init>(Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/IgniteLogger;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->start()V

    .line 97
    new-instance v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentLocalStore;-><init>(Lorg/apache/ignite/spi/deployment/DeploymentSpi;Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    .line 98
    new-instance v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerLoaderStore;-><init>(Lorg/apache/ignite/spi/deployment/DeploymentSpi;Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ldrStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    .line 99
    new-instance v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    iget-object v3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;-><init>(Lorg/apache/ignite/spi/deployment/DeploymentSpi;Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->start()V

    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ldrStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->start()V

    .line 103
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->start()V

    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Local deployment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->startInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 110
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 86
    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 89
    goto/16 :goto_1
.end method

.method public stop(Z)V
    .locals 2
    .param p1, "cancel"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lorg/apache/ignite/internal/managers/deployment/protocol/gg/GridProtocolHandler;->deregisterDeploymentManager()V

    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->stop()V

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ldrStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ldrStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->stop()V

    .line 122
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->stop()V

    .line 125
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->stop()V

    .line 128
    :cond_3
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getSpi()Lorg/apache/ignite/spi/IgniteSpi;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/deployment/DeploymentSpi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/apache/ignite/spi/deployment/DeploymentSpi;->setListener(Lorg/apache/ignite/spi/deployment/DeploymentListener;)V

    .line 130
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->stopSpi()V

    .line 132
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 133
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 134
    :cond_4
    return-void
.end method

.method public undeployTask(Ljava/lang/String;ZLjava/util/Collection;)V
    .locals 4
    .param p1, "taskName"    # Ljava/lang/String;
    .param p2, "locUndeploy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p3, "rmtNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 207
    :cond_0
    sget-boolean v1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ctx:Lorg/apache/ignite/internal/GridKernalContext;

    invoke-interface {v1}, Lorg/apache/ignite/internal/GridKernalContext;->discovery()Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/managers/discovery/GridDiscoveryManager;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 209
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    if-nez v1, :cond_3

    .line 210
    if-eqz p2, :cond_2

    .line 211
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->explicitUndeploy(Ljava/util/UUID;Ljava/lang/String;)V

    .line 214
    :cond_2
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->comm:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;

    invoke-virtual {v1, p1, p3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentCommunication;->sendUndeployRequest(Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_3
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send undeployment request for task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method undeployTask(Ljava/util/UUID;Ljava/lang/String;)V
    .locals 3
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "taskName"    # Ljava/lang/String;

    .prologue
    .line 227
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locDep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected undeploy request [nodeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", taskName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;)V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->locStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->explicitUndeploy(Ljava/util/UUID;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->ldrStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->explicitUndeploy(Ljava/util/UUID;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->verStore:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;

    invoke-interface {v0, p1, p2}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentStore;->explicitUndeploy(Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_0
.end method
