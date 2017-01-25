.class Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;
.super Ljava/lang/Object;
.source "CacheContinuousQueryHandler.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeployableObject"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private bytes:[B

.field private clsName:Ljava/lang/String;

.field private depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 453
    const-class v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lorg/apache/ignite/internal/GridKernalContext;)V
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 480
    :cond_0
    sget-boolean v2, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 482
    :cond_1
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    .line 484
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->clsName:Ljava/lang/String;

    .line 486
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->deploy(Ljava/lang/Class;Ljava/lang/ClassLoader;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v1

    .line 488
    .local v1, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v1, :cond_2

    .line 489
    new-instance v2, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to deploy object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 491
    :cond_2
    new-instance v2, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;-><init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .line 493
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->bytes:[B

    .line 494
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/apache/ignite/internal/GridKernalContext;Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/apache/ignite/internal/GridKernalContext;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;-><init>(Ljava/lang/Object;Lorg/apache/ignite/internal/GridKernalContext;)V

    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 523
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->bytes:[B

    .line 524
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->clsName:Ljava/lang/String;

    .line 525
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .line 526
    return-void
.end method

.method unmarshal(Ljava/util/UUID;Lorg/apache/ignite/internal/GridKernalContext;)Ljava/lang/Object;
    .locals 10
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "ctx"    # Lorg/apache/ignite/internal/GridKernalContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/internal/GridKernalContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 503
    sget-boolean v0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 505
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->deploy()Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-interface {v1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->clsName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->clsName:Ljava/lang/String;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-interface {v4}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->userVersion()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-interface {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    iget-object v5, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-interface {v5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->participants()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;->getGlobalDeployment(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;Ljava/util/Map;Lorg/apache/ignite/lang/IgnitePredicate;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v9

    .line 508
    .local v9, "dep":Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    if-nez v9, :cond_1

    .line 509
    new-instance v0, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to obtain deployment for class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->clsName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/IgniteDeploymentCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->bytes:[B

    invoke-virtual {v9}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->classLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 516
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->bytes:[B

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 517
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->clsName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/query/continuous/CacheContinuousQueryHandler$DeployableObject;->depInfo:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 519
    return-void
.end method
