.class Lorg/apache/ignite/internal/IgniteKernal$4;
.super Lorg/apache/ignite/internal/util/GridTimerTask;
.source "IgniteKernal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/IgniteKernal;->start(Lorg/apache/ignite/configuration/IgniteConfiguration;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lorg/apache/ignite/internal/util/lang/GridAbsClosure;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final dblFmt:Ljava/text/DecimalFormat;

.field final synthetic this$0:Lorg/apache/ignite/internal/IgniteKernal;

.field final synthetic val$execSvc:Ljava/util/concurrent/ExecutorService;

.field final synthetic val$sysExecSvc:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/IgniteKernal;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .prologue
    .line 914
    iput-object p1, p0, Lorg/apache/ignite/internal/IgniteKernal$4;->this$0:Lorg/apache/ignite/internal/IgniteKernal;

    iput-object p2, p0, Lorg/apache/ignite/internal/IgniteKernal$4;->val$execSvc:Ljava/util/concurrent/ExecutorService;

    iput-object p3, p0, Lorg/apache/ignite/internal/IgniteKernal$4;->val$sysExecSvc:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridTimerTask;-><init>()V

    .line 916
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/IgniteKernal$4;->dblFmt:Ljava/text/DecimalFormat;

    return-void
.end method


# virtual methods
.method protected safeRun()V
    .locals 40

    .prologue
    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->this$0:Lorg/apache/ignite/internal/IgniteKernal;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/apache/ignite/internal/IgniteKernal;->access$000(Lorg/apache/ignite/internal/IgniteKernal;)Lorg/apache/ignite/internal/GridLoggerProxy;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/apache/ignite/internal/GridLoggerProxy;->isInfoEnabled()Z

    move-result v35

    if-eqz v35, :cond_2

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->this$0:Lorg/apache/ignite/internal/IgniteKernal;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/apache/ignite/internal/IgniteKernal;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->localNode()Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/apache/ignite/cluster/ClusterNode;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v23

    .line 922
    .local v23, "m":Lorg/apache/ignite/cluster/ClusterMetrics;
    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentCpuLoad()D

    move-result-wide v36

    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v6, v36, v38

    .line 923
    .local v6, "cpuLoadPct":D
    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/cluster/ClusterMetrics;->getAverageCpuLoad()D

    move-result-wide v36

    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v4, v36, v38

    .line 924
    .local v4, "avgCpuLoadPct":D
    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/cluster/ClusterMetrics;->getCurrentGcCpuLoad()D

    move-result-wide v36

    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v12, v36, v38

    .line 926
    .local v12, "gcPct":D
    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryUsed()J

    move-result-wide v18

    .line 927
    .local v18, "heapUsed":J
    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryMaximum()J

    move-result-wide v16

    .line 929
    .local v16, "heapMax":J
    const-wide/16 v36, 0x400

    div-long v36, v18, v36

    const-wide/16 v38, 0x400

    div-long v20, v36, v38

    .line 930
    .local v20, "heapUsedInMBytes":J
    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/cluster/ClusterMetrics;->getHeapMemoryCommitted()J

    move-result-wide v36

    const-wide/16 v38, 0x400

    div-long v36, v36, v38

    const-wide/16 v38, 0x400

    div-long v14, v36, v38

    .line 932
    .local v14, "heapCommInMBytes":J
    const-wide/16 v36, 0x0

    cmp-long v35, v16, v36

    if-lez v35, :cond_3

    sub-long v36, v16, v18

    const-wide/16 v38, 0x64

    mul-long v36, v36, v38

    move-wide/from16 v0, v36

    long-to-double v0, v0

    move-wide/from16 v36, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v38, v0

    div-double v10, v36, v38

    .line 934
    .local v10, "freeHeapPct":D
    :goto_0
    const/16 v22, 0x0

    .line 935
    .local v22, "hosts":I
    const/16 v26, 0x0

    .line 936
    .local v26, "nodes":I
    const/4 v8, 0x0

    .line 939
    .local v8, "cpus":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->this$0:Lorg/apache/ignite/internal/IgniteKernal;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/apache/ignite/internal/IgniteKernal;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->metrics()Lorg/apache/ignite/cluster/ClusterMetrics;

    move-result-object v24

    .line 941
    .local v24, "metrics":Lorg/apache/ignite/cluster/ClusterMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->this$0:Lorg/apache/ignite/internal/IgniteKernal;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lorg/apache/ignite/internal/IgniteKernal;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->nodes()Ljava/util/Collection;

    move-result-object v27

    .line 943
    .local v27, "nodes0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-static/range {v27 .. v27}, Lorg/apache/ignite/internal/util/typedef/internal/U;->neighborhood(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/Map;->size()I

    move-result v22

    .line 944
    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalNodes()I

    move-result v26

    .line 945
    invoke-interface/range {v24 .. v24}, Lorg/apache/ignite/cluster/ClusterMetrics;->getTotalCpus()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 951
    .end local v24    # "metrics":Lorg/apache/ignite/cluster/ClusterMetrics;
    .end local v27    # "nodes0":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/cluster/ClusterNode;>;"
    :goto_1
    const/16 v29, 0x0

    .line 952
    .local v29, "pubPoolActiveThreads":I
    const/16 v30, 0x0

    .line 953
    .local v30, "pubPoolIdleThreads":I
    const/16 v31, 0x0

    .line 955
    .local v31, "pubPoolQSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->val$execSvc:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    move/from16 v35, v0

    if-eqz v35, :cond_0

    .line 956
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->val$execSvc:Ljava/util/concurrent/ExecutorService;

    check-cast v9, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 958
    .local v9, "exec":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v9}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v28

    .line 960
    .local v28, "poolSize":I
    invoke-virtual {v9}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v35

    move/from16 v0, v28

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 961
    sub-int v30, v28, v29

    .line 962
    invoke-virtual {v9}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v31

    .line 965
    .end local v9    # "exec":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v28    # "poolSize":I
    :cond_0
    const/16 v32, 0x0

    .line 966
    .local v32, "sysPoolActiveThreads":I
    const/16 v33, 0x0

    .line 967
    .local v33, "sysPoolIdleThreads":I
    const/16 v34, 0x0

    .line 969
    .local v34, "sysPoolQSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->val$sysExecSvc:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    instance-of v0, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    move/from16 v35, v0

    if-eqz v35, :cond_1

    .line 970
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->val$sysExecSvc:Ljava/util/concurrent/ExecutorService;

    check-cast v9, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 972
    .restart local v9    # "exec":Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-virtual {v9}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v28

    .line 974
    .restart local v28    # "poolSize":I
    invoke-virtual {v9}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v35

    move/from16 v0, v28

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 975
    sub-int v33, v28, v32

    .line 976
    invoke-virtual {v9}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v34

    .line 979
    .end local v9    # "exec":Ljava/util/concurrent/ThreadPoolExecutor;
    .end local v28    # "poolSize":I
    :cond_1
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/ignite/internal/IgniteKernal;->access$100()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "Metrics for local node (to disable set \'metricsLogFrequency\' to 0)"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Lorg/apache/ignite/internal/IgniteKernal;->access$100()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "    ^-- H/N/C [hosts="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", nodes="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", CPUs="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "]"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Lorg/apache/ignite/internal/IgniteKernal;->access$100()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "    ^-- CPU [cur="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->dblFmt:Ljava/text/DecimalFormat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "%, avg="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->dblFmt:Ljava/text/DecimalFormat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "%, GC="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->dblFmt:Ljava/text/DecimalFormat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v12, v13}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "%]"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Lorg/apache/ignite/internal/IgniteKernal;->access$100()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "    ^-- Heap [used="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->dblFmt:Ljava/text/DecimalFormat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "MB, free="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->dblFmt:Ljava/text/DecimalFormat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "%, comm="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->dblFmt:Ljava/text/DecimalFormat;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v14, v15}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "MB]"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Lorg/apache/ignite/internal/IgniteKernal;->access$100()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "    ^-- Public thread pool [active="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", idle="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", qSize="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "]"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Lorg/apache/ignite/internal/IgniteKernal;->access$100()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "    ^-- System thread pool [active="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", idle="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", qSize="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "]"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-static {}, Lorg/apache/ignite/internal/IgniteKernal;->access$100()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "    ^-- Outbound messages queue [size="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-interface/range {v23 .. v23}, Lorg/apache/ignite/cluster/ClusterMetrics;->getOutboundMessagesQueueSize()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, "]"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 992
    .local v25, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/IgniteKernal$4;->this$0:Lorg/apache/ignite/internal/IgniteKernal;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lorg/apache/ignite/internal/IgniteKernal;->access$000(Lorg/apache/ignite/internal/IgniteKernal;)Lorg/apache/ignite/internal/GridLoggerProxy;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/GridLoggerProxy;->info(Ljava/lang/String;)V

    .line 994
    .end local v4    # "avgCpuLoadPct":D
    .end local v6    # "cpuLoadPct":D
    .end local v8    # "cpus":I
    .end local v10    # "freeHeapPct":D
    .end local v12    # "gcPct":D
    .end local v14    # "heapCommInMBytes":J
    .end local v16    # "heapMax":J
    .end local v18    # "heapUsed":J
    .end local v20    # "heapUsedInMBytes":J
    .end local v22    # "hosts":I
    .end local v23    # "m":Lorg/apache/ignite/cluster/ClusterMetrics;
    .end local v25    # "msg":Ljava/lang/String;
    .end local v26    # "nodes":I
    .end local v29    # "pubPoolActiveThreads":I
    .end local v30    # "pubPoolIdleThreads":I
    .end local v31    # "pubPoolQSize":I
    .end local v32    # "sysPoolActiveThreads":I
    .end local v33    # "sysPoolIdleThreads":I
    .end local v34    # "sysPoolQSize":I
    :cond_2
    return-void

    .line 932
    .restart local v4    # "avgCpuLoadPct":D
    .restart local v6    # "cpuLoadPct":D
    .restart local v12    # "gcPct":D
    .restart local v14    # "heapCommInMBytes":J
    .restart local v16    # "heapMax":J
    .restart local v18    # "heapUsed":J
    .restart local v20    # "heapUsedInMBytes":J
    .restart local v23    # "m":Lorg/apache/ignite/cluster/ClusterMetrics;
    :cond_3
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    goto/16 :goto_0

    .line 947
    .restart local v8    # "cpus":I
    .restart local v10    # "freeHeapPct":D
    .restart local v22    # "hosts":I
    .restart local v26    # "nodes":I
    :catch_0
    move-exception v35

    goto/16 :goto_1
.end method
