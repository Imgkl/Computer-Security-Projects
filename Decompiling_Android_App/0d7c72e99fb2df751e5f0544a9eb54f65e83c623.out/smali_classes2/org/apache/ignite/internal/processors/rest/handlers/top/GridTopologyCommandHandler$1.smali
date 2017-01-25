.class Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler$1;
.super Ljava/lang/Object;
.source "GridTopologyCommandHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->handleAsync(Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;)Lorg/apache/ignite/internal/IgniteInternalFuture;
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
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;

.field final synthetic val$ip:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler$1;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler$1;->val$ip:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 112
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler$1;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 3
    .param p1, "n"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler$1;->this$0:Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->addresses()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler$1;->val$ip:Ljava/lang/String;

    # invokes: Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->containsIp(Ljava/lang/Iterable;Ljava/lang/String;)Z
    invoke-static {v0, v1, v2}, Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;->access$000(Lorg/apache/ignite/internal/processors/rest/handlers/top/GridTopologyCommandHandler;Ljava/lang/Iterable;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
