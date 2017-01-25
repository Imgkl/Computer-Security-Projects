.class Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;
.super Ljava/lang/Object;
.source "AdaptiveLoadBalancingSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeightedTopology"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final circle:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Double;",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 472
    const-class v0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/cluster/ClusterNode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;
        }
    .end annotation

    .prologue
    .line 480
    .local p2, "top":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/cluster/ClusterNode;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 474
    new-instance v18, Ljava/util/TreeMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/TreeMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->circle:Ljava/util/SortedMap;

    .line 481
    sget-boolean v18, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->$assertionsDisabled:Z

    if-nez v18, :cond_0

    invoke-static/range {p2 .. p2}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v18

    if-eqz v18, :cond_0

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    .line 483
    :cond_0
    const-wide/16 v12, 0x0

    .line 487
    .local v12, "totalLoad":D
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v10, v0, [D

    .line 489
    .local v10, "nums":[D
    const/4 v11, 0x0

    .line 492
    .local v11, "zeroCnt":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_2

    .line 493
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/ignite/cluster/ClusterNode;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$400(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;Ljava/util/Collection;Lorg/apache/ignite/cluster/ClusterNode;)D

    move-result-wide v6

    .line 495
    .local v6, "load":D
    aput-wide v6, v10, v4

    .line 497
    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-nez v18, :cond_1

    .line 498
    add-int/lit8 v11, v11, 0x1

    .line 500
    :cond_1
    add-double/2addr v12, v6

    .line 492
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 504
    .end local v6    # "load":D
    :cond_2
    if-lez v11, :cond_7

    .line 505
    move-wide v8, v12

    .line 507
    .local v8, "newTotal":D
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v18

    sub-int v5, v18, v11

    .line 509
    .local v5, "nonZeroCnt":I
    const/4 v4, 0x0

    :goto_1
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_6

    .line 510
    aget-wide v6, v10, v4

    .line 512
    .restart local v6    # "load":D
    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-nez v18, :cond_5

    .line 513
    if-lez v5, :cond_3

    .line 514
    int-to-double v0, v5

    move-wide/from16 v18, v0

    div-double v6, v12, v18

    .line 516
    :cond_3
    const-wide/16 v18, 0x0

    cmpl-double v18, v6, v18

    if-nez v18, :cond_4

    .line 517
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 519
    :cond_4
    aput-wide v6, v10, v4

    .line 521
    add-double/2addr v8, v6

    .line 509
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 525
    .end local v6    # "load":D
    :cond_6
    move-wide v12, v8

    .line 528
    .end local v5    # "nonZeroCnt":I
    .end local v8    # "newTotal":D
    :cond_7
    const-wide/16 v14, 0x0

    .line 531
    .local v14, "totalWeight":D
    const/4 v4, 0x0

    :goto_2
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_9

    .line 532
    sget-boolean v18, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->$assertionsDisabled:Z

    if-nez v18, :cond_8

    aget-wide v18, v10, v4

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-gtz v18, :cond_8

    new-instance v18, Ljava/lang/AssertionError;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid load: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    aget-wide v20, v10, v4

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18

    .line 534
    :cond_8
    aget-wide v18, v10, v4

    div-double v16, v12, v18

    .line 537
    .local v16, "weight":D
    aput-wide v16, v10, v4

    .line 539
    add-double v14, v14, v16

    .line 531
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 542
    .end local v16    # "weight":D
    :cond_9
    const-wide/16 v16, 0x0

    .line 545
    .restart local v16    # "weight":D
    const/4 v4, 0x0

    :goto_3
    array-length v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_c

    .line 546
    array-length v0, v10

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_a

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    .line 548
    :goto_4
    sget-boolean v18, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->$assertionsDisabled:Z

    if-nez v18, :cond_b

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    cmpg-double v18, v16, v18

    if-ltz v18, :cond_b

    new-instance v18, Ljava/lang/AssertionError;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Invalid weight: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v18

    .line 546
    :cond_a
    aget-wide v18, v10, v4

    div-double v18, v18, v14

    add-double v16, v16, v18

    goto :goto_4

    .line 551
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->circle:Ljava/util/SortedMap;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 553
    :cond_c
    return-void
.end method


# virtual methods
.method pickWeightedNode()Lorg/apache/ignite/cluster/ClusterNode;
    .locals 7

    .prologue
    .line 561
    invoke-static {}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$500()Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    .line 563
    .local v4, "weight":D
    iget-object v3, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->circle:Ljava/util/SortedMap;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    .line 565
    .local v2, "pick":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Lorg/apache/ignite/cluster/ClusterNode;>;"
    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/cluster/ClusterNode;

    .line 567
    .local v1, "node":Lorg/apache/ignite/cluster/ClusterNode;
    iget-object v3, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$200(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 570
    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$300(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 572
    .local v0, "cnt":Ljava/util/concurrent/atomic/AtomicInteger;
    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    :cond_0
    iget-object v3, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v3}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$200(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 579
    return-object v1

    .line 576
    .end local v0    # "cnt":Ljava/util/concurrent/atomic/AtomicInteger;
    :catchall_0
    move-exception v3

    iget-object v6, p0, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi$WeightedTopology;->this$0:Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;

    invoke-static {v6}, Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;->access$200(Lorg/apache/ignite/spi/loadbalancing/adaptive/AdaptiveLoadBalancingSpi;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
.end method
