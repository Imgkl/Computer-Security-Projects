.class public Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;
.super Lorg/apache/ignite/compute/ComputeTaskAdapter;
.source "GridifyDefaultRangeTask.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/compute/ComputeTaskAdapter",
        "<",
        "Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;",
        "Ljava/util/Collection",
        "<*>;>;",
        "Lorg/apache/ignite/internal/util/lang/GridPeerDeployAware;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private balancer:Lorg/apache/ignite/compute/ComputeLoadBalancer;
    .annotation runtime Lorg/apache/ignite/resources/LoadBalancerResource;
    .end annotation
.end field

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private limitedSplit:Z

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private mapper:Lorg/apache/ignite/compute/ComputeTaskContinuousMapper;
    .annotation runtime Lorg/apache/ignite/resources/TaskContinuousMapperResource;
    .end annotation
.end field

.field private nodeFilter:Lorg/apache/ignite/compute/gridify/GridifyNodeFilter;

.field private final transient p2pCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private ses:Lorg/apache/ignite/compute/ComputeTaskSession;
    .annotation runtime Lorg/apache/ignite/resources/TaskSessionResource;
    .end annotation
.end field

.field private splitSize:I

.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;Lorg/apache/ignite/compute/gridify/GridifyNodeFilter;IIZ)V
    .locals 1
    .param p2, "nodeFilter"    # Lorg/apache/ignite/compute/gridify/GridifyNodeFilter;
    .param p3, "threshold"    # I
    .param p4, "splitSize"    # I
    .param p5, "limitedSplit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/ignite/compute/gridify/GridifyNodeFilter;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeTaskAdapter;-><init>()V

    .line 92
    sget-boolean v0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->p2pCls:Ljava/lang/Class;

    .line 96
    iput-object p2, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->nodeFilter:Lorg/apache/ignite/compute/gridify/GridifyNodeFilter;

    .line 97
    iput p3, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->threshold:I

    .line 98
    iput p4, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->splitSize:I

    .line 99
    iput-boolean p5, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->limitedSplit:Z

    .line 100
    return-void
.end method

.method private calculateInputSizePerNode(IIIZ)I
    .locals 6
    .param p1, "gridSize"    # I
    .param p2, "inputSize"    # I
    .param p3, "threshold"    # I
    .param p4, "limitedSplit"    # Z

    .prologue
    .line 210
    if-lez p3, :cond_1

    .line 211
    sget-boolean v1, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gt p2, p3, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 213
    :cond_0
    int-to-double v2, p2

    int-to-double v4, p1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 215
    .local v0, "inputPerNode":I
    :goto_0
    rem-int v1, p2, v0

    if-gt v1, p3, :cond_2

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "inputPerNode":I
    :cond_1
    if-eqz p4, :cond_3

    if-gt p2, p1, :cond_3

    move v0, p2

    .line 230
    :cond_2
    return v0

    .line 225
    :cond_3
    int-to-double v2, p2

    int-to-double v4, p1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 227
    .restart local v0    # "inputPerNode":I
    :goto_1
    rem-int v1, p2, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public classLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->p2pCls:Ljava/lang/Class;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->detectClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public deployClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->p2pCls:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic map(Ljava/util/List;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 40
    check-cast p2, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->map(Ljava/util/List;Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public map(Ljava/util/List;Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;)Ljava/util/Map;
    .locals 15
    .param p2, "arg"    # Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;",
            ")",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    sget-boolean v12, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->$assertionsDisabled:Z

    if-nez v12, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v12, Ljava/lang/AssertionError;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Subgrid should not be empty: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v12

    .line 116
    :cond_0
    sget-boolean v12, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->$assertionsDisabled:Z

    if-nez v12, :cond_1

    iget-object v12, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->ignite:Lorg/apache/ignite/Ignite;

    if-nez v12, :cond_1

    new-instance v12, Ljava/lang/AssertionError;

    const-string v13, "Grid instance could not be injected"

    invoke-direct {v12, v13}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v12

    .line 118
    :cond_1
    iget v12, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->splitSize:I

    iget v13, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->threshold:I

    if-ge v12, v13, :cond_2

    iget v12, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->splitSize:I

    if-eqz v12, :cond_2

    iget v12, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->threshold:I

    if-eqz v12, :cond_2

    .line 119
    new-instance v12, Lorg/apache/ignite/IgniteException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Incorrect Gridify annotation parameters. Value for parameter \'splitSize\' should not be less than parameter \'threshold\' [splitSize="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->splitSize:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", threshold="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->threshold:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x5d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 124
    :cond_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 127
    .local v2, "exclNodes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    iget-object v12, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->nodeFilter:Lorg/apache/ignite/compute/gridify/GridifyNodeFilter;

    if-eqz v12, :cond_5

    .line 128
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/cluster/ClusterNode;

    .line 129
    .local v10, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v12, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->nodeFilter:Lorg/apache/ignite/compute/gridify/GridifyNodeFilter;

    iget-object v13, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->ses:Lorg/apache/ignite/compute/ComputeTaskSession;

    invoke-interface {v12, v10, v13}, Lorg/apache/ignite/compute/gridify/GridifyNodeFilter;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 130
    invoke-interface {v2, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    .end local v10    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_4
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v12

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ne v12, v13, :cond_5

    .line 134
    new-instance v12, Lorg/apache/ignite/IgniteException;

    const-string v13, "Failed to execute on grid where all nodes excluded."

    invoke-direct {v12, v13}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 137
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_5
    iget v7, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->splitSize:I

    .line 140
    .local v7, "inputPerNode":I
    iget v12, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->splitSize:I

    if-gtz v12, :cond_6

    .line 142
    iget v12, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->threshold:I

    if-lez v12, :cond_7

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getInputSize()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_7

    .line 143
    iget v7, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->threshold:I

    .line 162
    :cond_6
    :goto_1
    new-instance v1, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;-><init>()V

    .line 164
    .local v1, "argBuilder":Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getInputIterator()Ljava/util/Iterator;

    move-result-object v6

    .line 166
    .local v6, "inputIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 167
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 169
    .local v11, "nodeInput":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 170
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 146
    .end local v1    # "argBuilder":Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;
    .end local v4    # "i":I
    .end local v6    # "inputIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v11    # "nodeInput":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_7
    sget-boolean v12, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->$assertionsDisabled:Z

    if-nez v12, :cond_8

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getInputSize()I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_8

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12

    .line 148
    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v13

    sub-int v3, v12, v13

    .line 150
    .local v3, "gridSize":I
    if-gtz v3, :cond_9

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    .line 152
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getInputSize()I

    move-result v12

    iget v13, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->threshold:I

    iget-boolean v14, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->limitedSplit:Z

    invoke-direct {p0, v3, v12, v13, v14}, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->calculateInputSizePerNode(IIIZ)I

    move-result v7

    .line 154
    iget-object v12, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v12}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 155
    iget-object v12, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calculated input elements size per node [inputSize="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;->getInputSize()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", gridSize="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", threshold="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->threshold:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", limitedSplit="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->limitedSplit:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", inputPerNode="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x5d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 173
    .end local v3    # "gridSize":I
    .restart local v1    # "argBuilder":Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;
    .restart local v4    # "i":I
    .restart local v6    # "inputIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v11    # "nodeInput":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_a
    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v11}, Lorg/apache/ignite/internal/util/gridify/GridifyArgumentBuilder;->createJobArgument(Lorg/apache/ignite/internal/util/gridify/GridifyRangeArgument;Ljava/util/Collection;)Lorg/apache/ignite/compute/gridify/GridifyArgument;

    move-result-object v9

    .line 175
    .local v9, "jobArg":Lorg/apache/ignite/compute/gridify/GridifyArgument;
    new-instance v8, Lorg/apache/ignite/internal/util/gridify/GridifyJobAdapter;

    invoke-direct {v8, v9}, Lorg/apache/ignite/internal/util/gridify/GridifyJobAdapter;-><init>(Lorg/apache/ignite/compute/gridify/GridifyArgument;)V

    .line 177
    .local v8, "job":Lorg/apache/ignite/compute/ComputeJob;
    iget-object v12, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->mapper:Lorg/apache/ignite/compute/ComputeTaskContinuousMapper;

    iget-object v13, p0, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->balancer:Lorg/apache/ignite/compute/ComputeLoadBalancer;

    invoke-interface {v13, v8, v2}, Lorg/apache/ignite/compute/ComputeLoadBalancer;->getBalancedNode(Lorg/apache/ignite/compute/ComputeJob;Ljava/util/Collection;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v13

    invoke-interface {v12, v8, v13}, Lorg/apache/ignite/compute/ComputeTaskContinuousMapper;->send(Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;)V

    goto/16 :goto_2

    .line 181
    .end local v4    # "i":I
    .end local v8    # "job":Lorg/apache/ignite/compute/ComputeJob;
    .end local v9    # "jobArg":Lorg/apache/ignite/compute/gridify/GridifyArgument;
    .end local v11    # "nodeInput":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    :cond_b
    const/4 v12, 0x0

    return-object v12
.end method

.method public bridge synthetic reduce(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->reduce(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final reduce(Ljava/util/List;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)",
            "Ljava/util/Collection",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    sget-boolean v3, Lorg/apache/ignite/compute/gridify/aop/GridifyDefaultRangeTask;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 188
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .local v0, "data":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/compute/ComputeJobResult;

    .line 191
    .local v2, "res":Lorg/apache/ignite/compute/ComputeJobResult;
    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 192
    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeJobResult;->getException()Lorg/apache/ignite/IgniteException;

    move-result-object v3

    throw v3

    .line 194
    :cond_1
    invoke-interface {v2}, Lorg/apache/ignite/compute/ComputeJobResult;->getData()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    .end local v2    # "res":Lorg/apache/ignite/compute/ComputeJobResult;
    :cond_2
    return-object v0
.end method
