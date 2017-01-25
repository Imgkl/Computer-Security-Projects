.class public Lorg/apache/ignite/internal/processors/resource/GridResourceJobContextInjector;
.super Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;
.source "GridResourceJobContextInjector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector",
        "<",
        "Lorg/apache/ignite/compute/ComputeJobContext;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lorg/apache/ignite/internal/processors/resource/GridResourceJobContextInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceJobContextInjector;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/compute/ComputeJobContext;)V
    .locals 0
    .param p1, "rsrc"    # Lorg/apache/ignite/compute/ComputeJobContext;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;-><init>(Ljava/lang/Object;)V

    .line 35
    return-void
.end method


# virtual methods
.method public inject(Lorg/apache/ignite/internal/processors/resource/GridResourceField;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 1
    .param p1, "field"    # Lorg/apache/ignite/internal/processors/resource/GridResourceField;
    .param p2, "target"    # Ljava/lang/Object;
    .param p4, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceField;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 40
    .local p3, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceJobContextInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    instance-of v0, p2, Lorg/apache/ignite/compute/ComputeTask;

    if-nez v0, :cond_1

    .line 43
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;->inject(Lorg/apache/ignite/internal/processors/resource/GridResourceField;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    .line 44
    :cond_1
    return-void
.end method

.method public inject(Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 1
    .param p1, "mtd"    # Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;
    .param p2, "target"    # Ljava/lang/Object;
    .param p4, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 49
    .local p3, "depCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v0, Lorg/apache/ignite/internal/processors/resource/GridResourceJobContextInjector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 51
    :cond_0
    instance-of v0, p2, Lorg/apache/ignite/compute/ComputeTask;

    if-nez v0, :cond_1

    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;->inject(Lorg/apache/ignite/internal/processors/resource/GridResourceMethod;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    .line 53
    :cond_1
    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic undeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/resource/GridResourceBasicInjector;->undeploy(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V

    return-void
.end method
