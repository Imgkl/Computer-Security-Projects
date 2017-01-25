.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;
.super Ljava/lang/Object;
.source "GridClosureProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobMapper"
.end annotation


# instance fields
.field private closure:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<**>;"
        }
    .end annotation
.end field

.field private closureBytes:[B

.field private hadLocNode:Z

.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;I)V
    .locals 1
    .param p2, "expJobCnt"    # I

    .prologue
    .line 1026
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    invoke-static {p2}, Lorg/apache/ignite/internal/util/IgniteUtils;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->map:Ljava/util/Map;

    .line 1028
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;ILorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1010
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;-><init>(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;I)V

    return-void
.end method


# virtual methods
.method public map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1068
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->map:Ljava/util/Map;

    return-object v0
.end method

.method public map(Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;)V
    .locals 5
    .param p1, "job"    # Lorg/apache/ignite/compute/ComputeJob;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "node"    # Lorg/apache/ignite/cluster/ClusterNode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1036
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->access$1700(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->localNodeId()Ljava/util/UUID;

    move-result-object v2

    invoke-interface {p2}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1037
    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->hadLocNode:Z

    if-eqz v2, :cond_4

    .line 1038
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->this$0:Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->ctx:Lorg/apache/ignite/internal/GridKernalContext;
    invoke-static {v2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;->access$1800(Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;)Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/ignite/internal/GridKernalContext;->config()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v1

    .line 1040
    .local v1, "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    instance-of v2, p1, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;

    if-eqz v2, :cond_3

    move-object v0, p1

    .line 1041
    check-cast v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;

    .line 1043
    .local v0, "c":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->closureBytes:[B

    if-nez v2, :cond_0

    .line 1044
    iget-object v2, v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->job:Lorg/apache/ignite/lang/IgniteClosure;

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->closure:Lorg/apache/ignite/lang/IgniteClosure;

    .line 1046
    iget-object v2, v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->job:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v1, v2}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->closureBytes:[B

    .line 1049
    :cond_0
    iget-object v2, v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->job:Lorg/apache/ignite/lang/IgniteClosure;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->closure:Lorg/apache/ignite/lang/IgniteClosure;

    if-ne v2, v3, :cond_2

    .line 1050
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->closureBytes:[B

    invoke-interface {v1, v2, v4}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/lang/IgniteClosure;

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->job:Lorg/apache/ignite/lang/IgniteClosure;

    .line 1061
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;
    .end local v1    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->map:Ljava/util/Map;

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    return-void

    .line 1052
    .restart local v0    # "c":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;
    .restart local v1    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    :cond_2
    iget-object v2, v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->job:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {v1, v2}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/lang/IgniteClosure;

    iput-object v2, v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->job:Lorg/apache/ignite/lang/IgniteClosure;

    goto :goto_0

    .line 1055
    .end local v0    # "c":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;
    :cond_3
    invoke-interface {v1, p1}, Lorg/apache/ignite/marshaller/Marshaller;->marshal(Ljava/lang/Object;)[B

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lorg/apache/ignite/marshaller/Marshaller;->unmarshal([BLjava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "job":Lorg/apache/ignite/compute/ComputeJob;
    check-cast p1, Lorg/apache/ignite/compute/ComputeJob;

    .restart local p1    # "job":Lorg/apache/ignite/compute/ComputeJob;
    goto :goto_0

    .line 1058
    .end local v1    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$JobMapper;->hadLocNode:Z

    goto :goto_0
.end method
