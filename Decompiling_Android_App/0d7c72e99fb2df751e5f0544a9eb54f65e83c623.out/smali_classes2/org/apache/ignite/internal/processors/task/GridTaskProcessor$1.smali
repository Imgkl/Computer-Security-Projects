.class Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;
.super Ljava/lang/Object;
.source "GridTaskProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/C1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;->getUsedDeployments()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/C1",
        "<",
        "Lorg/apache/ignite/internal/processors/task/GridTaskWorker",
        "<**>;",
        "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/task/GridTaskProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 251
    check-cast p1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/task/GridTaskProcessor$1;->apply(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/task/GridTaskWorker;)Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/task/GridTaskWorker",
            "<**>;)",
            "Lorg/apache/ignite/internal/managers/deployment/GridDeployment;"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "w":Lorg/apache/ignite/internal/processors/task/GridTaskWorker;, "Lorg/apache/ignite/internal/processors/task/GridTaskWorker<**>;"
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker;->getDeployment()Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    move-result-object v0

    return-object v0
.end method
