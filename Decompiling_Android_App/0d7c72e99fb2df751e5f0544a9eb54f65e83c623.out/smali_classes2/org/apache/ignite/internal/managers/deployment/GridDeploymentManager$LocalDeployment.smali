.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager$LocalDeployment;
.super Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
.source "GridDeploymentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalDeployment"
.end annotation


# direct methods
.method private constructor <init>(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p2, "clsLdr"    # Ljava/lang/ClassLoader;
    .param p3, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "userVer"    # Ljava/lang/String;
    .param p5, "sampleClsName"    # Ljava/lang/String;

    .prologue
    .line 563
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;-><init>(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 564
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p2, "x1"    # Ljava/lang/ClassLoader;
    .param p3, "x2"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Ljava/lang/String;
    .param p6, "x5"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager$1;

    .prologue
    .line 553
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager$LocalDeployment;-><init>(Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/ClassLoader;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()Z
    .locals 1

    .prologue
    .line 588
    const/4 v0, 0x1

    return v0
.end method

.method public obsolete()Z
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x0

    return v0
.end method

.method public onUndeployScheduled()V
    .locals 0

    .prologue
    .line 584
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 603
    const/4 v0, 0x0

    return-object v0
.end method

.method public pendingUndeploy()Z
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 594
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 608
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentManager$LocalDeployment;

    invoke-super {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeployment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public undeploy()V
    .locals 0

    .prologue
    .line 574
    return-void
.end method

.method public undeployed()Z
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method
