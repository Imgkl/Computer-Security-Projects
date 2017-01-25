.class Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$2;
.super Ljava/lang/Object;
.source "GridDeploymentPerVersionStore.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;->getDeployment(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<",
        "Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

.field final synthetic val$ldrId:Lorg/apache/ignite/lang/IgniteUuid;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;Lorg/apache/ignite/lang/IgniteUuid;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$2;->this$0:Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$2;->val$ldrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 247
    check-cast p1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$2;->apply(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;)Z
    .locals 2
    .param p1, "d"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;

    .prologue
    .line 249
    invoke-virtual {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$SharedDeployment;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentPerVersionStore$2;->val$ldrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
