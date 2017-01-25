.class Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator$1;
.super Ljava/lang/Object;
.source "IgfsFragmentizerManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->syncStart()V
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
        "Lorg/apache/ignite/cluster/ClusterNode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 557
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator$1;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 1
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 559
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator$1;->this$1:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager$FragmentizerCoordinator;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFragmentizerManager;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->igfsNode(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method
