.class public abstract Lorg/apache/ignite/igfs/mapreduce/IgfsTask;
.super Lorg/apache/ignite/compute/ComputeTaskAdapter;
.source "IgfsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/compute/ComputeTaskAdapter",
        "<",
        "Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs",
        "<TT;>;TR;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-class v0, Lorg/apache/ignite/igfs/mapreduce/IgfsTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/igfs/mapreduce/IgfsTask;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    .local p0, "this":Lorg/apache/ignite/igfs/mapreduce/IgfsTask;, "Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeTaskAdapter;-><init>()V

    return-void
.end method

.method private mapSubgrid(Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lorg/apache/ignite/igfs/mapreduce/IgfsTask;, "Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;"
    .local p1, "subgrid":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newHashMap(I)Ljava/util/HashMap;

    move-result-object v2

    .line 167
    .local v2, "res":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 168
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 170
    .end local v1    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public abstract createJob(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;)Lorg/apache/ignite/igfs/mapreduce/IgfsJob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/igfs/IgfsPath;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs",
            "<TT;>;)",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsJob;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
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
    .line 77
    .local p0, "this":Lorg/apache/ignite/igfs/mapreduce/IgfsTask;, "Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;"
    check-cast p2, Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/igfs/mapreduce/IgfsTask;->map(Ljava/util/List;Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava/util/List;Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;)Ljava/util/Map;
    .locals 30
    .param p2    # Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;",
            "Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs",
            "<TT;>;)",
            "Ljava/util/Map",
            "<+",
            "Lorg/apache/ignite/compute/ComputeJob;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lorg/apache/ignite/igfs/mapreduce/IgfsTask;, "Lorg/apache/ignite/igfs/mapreduce/IgfsTask<TT;TR;>;"
    .local p1, "subgrid":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    .local p2, "args":Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;, "Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs<TT;>;"
    sget-boolean v6, Lorg/apache/ignite/igfs/mapreduce/IgfsTask;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/igfs/mapreduce/IgfsTask;->ignite:Lorg/apache/ignite/Ignite;

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 89
    :cond_0
    sget-boolean v6, Lorg/apache/ignite/igfs/mapreduce/IgfsTask;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    if-nez p2, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 91
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/igfs/mapreduce/IgfsTask;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;->igfsName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/ignite/Ignite;->fileSystem(Ljava/lang/String;)Lorg/apache/ignite/IgniteFileSystem;

    move-result-object v4

    .line 92
    .local v4, "fs":Lorg/apache/ignite/IgniteFileSystem;
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/ignite/igfs/mapreduce/IgfsTask;->ignite:Lorg/apache/ignite/Ignite;

    check-cast v6, Lorg/apache/ignite/internal/IgniteKernal;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/IgniteKernal;->context()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/ignite/internal/GridKernalContext;->igfs()Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;

    move-result-object v20

    .line 94
    .local v20, "igfsProc":Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v26, "splitMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/compute/ComputeJob;Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-direct/range {p0 .. p1}, Lorg/apache/ignite/igfs/mapreduce/IgfsTask;->mapSubgrid(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v25

    .line 98
    .local v25, "nodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;->paths()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/ignite/igfs/IgfsPath;

    .line 99
    .local v5, "path":Lorg/apache/ignite/igfs/IgfsPath;
    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteFileSystem;->info(Lorg/apache/ignite/igfs/IgfsPath;)Lorg/apache/ignite/igfs/IgfsFile;

    move-result-object v16

    .line 101
    .local v16, "file":Lorg/apache/ignite/igfs/IgfsFile;
    if-nez v16, :cond_3

    .line 102
    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;->skipNonExistentFiles()Z

    move-result v6

    if-nez v6, :cond_2

    .line 105
    new-instance v6, Lorg/apache/ignite/IgniteException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to process IGFS file because it doesn\'t exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 108
    :cond_3
    const-wide/16 v6, 0x0

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/igfs/IgfsFile;->length()J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;->maxRangeLength()J

    move-result-wide v10

    invoke-interface/range {v4 .. v11}, Lorg/apache/ignite/IgniteFileSystem;->affinity(Lorg/apache/ignite/igfs/IgfsPath;JJJ)Ljava/util/Collection;

    move-result-object v15

    .line 110
    .local v15, "aff":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsBlockLocation;>;"
    const-wide/16 v28, 0x0

    .line 112
    .local v28, "totalLen":J
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/apache/ignite/igfs/IgfsBlockLocation;

    .line 113
    .local v22, "loc":Lorg/apache/ignite/igfs/IgfsBlockLocation;
    const/16 v23, 0x0

    .line 115
    .local v23, "node":Lorg/apache/ignite/cluster/ClusterNode;
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->nodeIds()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/UUID;

    .line 116
    .local v24, "nodeId":Ljava/util/UUID;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    check-cast v23, Lorg/apache/ignite/cluster/ClusterNode;

    .line 118
    .restart local v23    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    if-eqz v23, :cond_4

    .line 122
    .end local v24    # "nodeId":Ljava/util/UUID;
    :cond_5
    if-nez v23, :cond_6

    .line 123
    new-instance v6, Lorg/apache/ignite/IgniteException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to find any of block affinity nodes in subgrid [loc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", subgrid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 126
    :cond_6
    new-instance v6, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/igfs/IgfsFile;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v7

    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->start()J

    move-result-wide v8

    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->length()J

    move-result-wide v10

    invoke-direct/range {v6 .. v11}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;-><init>(Lorg/apache/ignite/igfs/IgfsPath;JJ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v6, v1}, Lorg/apache/ignite/igfs/mapreduce/IgfsTask;->createJob(Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;)Lorg/apache/ignite/igfs/mapreduce/IgfsJob;

    move-result-object v7

    .line 128
    .local v7, "job":Lorg/apache/ignite/igfs/mapreduce/IgfsJob;
    if-eqz v7, :cond_7

    .line 129
    invoke-interface {v4}, Lorg/apache/ignite/IgniteFileSystem;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/igfs/IgfsFile;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v9

    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->start()J

    move-result-wide v10

    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->length()J

    move-result-wide v12

    invoke-interface/range {p2 .. p2}, Lorg/apache/ignite/igfs/mapreduce/IgfsTaskArgs;->recordResolver()Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;

    move-result-object v14

    move-object/from16 v6, v20

    invoke-virtual/range {v6 .. v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsProcessorAdapter;->createJob(Lorg/apache/ignite/igfs/mapreduce/IgfsJob;Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsPath;JJLorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;)Lorg/apache/ignite/compute/ComputeJob;

    move-result-object v21

    .line 132
    .local v21, "jobImpl":Lorg/apache/ignite/compute/ComputeJob;
    move-object/from16 v0, v26

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v21    # "jobImpl":Lorg/apache/ignite/compute/ComputeJob;
    :cond_7
    invoke-interface/range {v22 .. v22}, Lorg/apache/ignite/igfs/IgfsBlockLocation;->length()J

    move-result-wide v8

    add-long v28, v28, v8

    .line 136
    goto/16 :goto_0

    .line 138
    .end local v7    # "job":Lorg/apache/ignite/igfs/mapreduce/IgfsJob;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "loc":Lorg/apache/ignite/igfs/IgfsBlockLocation;
    .end local v23    # "node":Lorg/apache/ignite/cluster/ClusterNode;
    :cond_8
    sget-boolean v6, Lorg/apache/ignite/igfs/mapreduce/IgfsTask;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    invoke-interface/range {v16 .. v16}, Lorg/apache/ignite/igfs/IgfsFile;->length()J

    move-result-wide v8

    cmp-long v6, v28, v8

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 141
    .end local v5    # "path":Lorg/apache/ignite/igfs/IgfsPath;
    .end local v15    # "aff":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/igfs/IgfsBlockLocation;>;"
    .end local v16    # "file":Lorg/apache/ignite/igfs/IgfsFile;
    .end local v28    # "totalLen":J
    :cond_9
    return-object v26
.end method
