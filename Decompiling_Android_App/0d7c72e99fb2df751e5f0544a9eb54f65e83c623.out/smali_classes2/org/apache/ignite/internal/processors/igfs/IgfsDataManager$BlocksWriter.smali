.class abstract Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;
.super Ljava/lang/Object;
.source "IgfsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BlocksWriter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1383
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)V
    .locals 0

    .prologue
    .line 1383
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;, "Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$1;

    .prologue
    .line 1383
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;, "Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter<TT;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)V

    return-void
.end method


# virtual methods
.method protected abstract readData(Ljava/lang/Object;[BI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public storeDataBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J[BILjava/lang/Object;IZLorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)[B
    .locals 38
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "reservedLen"    # J
    .param p4, "remainder"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "remainderLen"    # I
    .param p7, "srcLen"    # I
    .param p8, "flush"    # Z
    .param p9, "affinityRange"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .param p10, "batch"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            "J[BITT;IZ",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;",
            ")[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1410
    .local p0, "this":Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;, "Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter<TT;>;"
    .local p6, "src":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v11

    .line 1411
    .local v11, "id":Lorg/apache/ignite/lang/IgniteUuid;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v10

    .line 1413
    .local v10, "blockSize":I
    add-int v17, p5, p7

    .line 1415
    .local v17, "len":I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v34, v0

    cmp-long v34, v34, p2

    if-lez v34, :cond_0

    .line 1416
    new-instance v34, Lorg/apache/ignite/igfs/IgfsException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Not enough space reserved to store data [id="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", reservedLen="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", remainderLen="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", data.length="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x5d

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Lorg/apache/ignite/igfs/IgfsException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 1420
    :cond_0
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v34, v0

    sub-long v30, p2, v34

    .line 1421
    .local v30, "start":J
    int-to-long v0, v10

    move-wide/from16 v34, v0

    div-long v14, v30, v34

    .line 1422
    .local v14, "first":J
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v34, v34, v30

    int-to-long v0, v10

    move-wide/from16 v36, v0

    add-long v34, v34, v36

    const-wide/16 v36, 0x1

    sub-long v34, v34, v36

    int-to-long v0, v10

    move-wide/from16 v36, v0

    div-long v18, v34, v36

    .line 1423
    .local v18, "limit":J
    const/16 v27, 0x0

    .line 1424
    .local v27, "written":I
    const/16 v26, 0x0

    .line 1426
    .local v26, "remainderOff":I
    sub-long v34, v18, v14

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newLinkedHashMap(I)Ljava/util/LinkedHashMap;

    move-result-object v21

    .line 1427
    .local v21, "nodeBlocks":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B>;"
    const/16 v20, 0x0

    .line 1428
    .local v20, "node":Lorg/apache/ignite/cluster/ClusterNode;
    const/16 v22, 0x0

    .line 1430
    .local v22, "off":I
    move-wide v6, v14

    .local v6, "block":J
    :goto_0
    cmp-long v34, v6, v18

    if-gez v34, :cond_15

    .line 1431
    cmp-long v34, v6, v14

    if-nez v34, :cond_2

    int-to-long v0, v10

    move-wide/from16 v34, v0

    rem-long v12, v30, v34

    .line 1432
    .local v12, "blockStartOff":J
    :goto_1
    const-wide/16 v34, 0x1

    sub-long v34, v18, v34

    cmp-long v34, v6, v34

    if-nez v34, :cond_3

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v34, v34, v30

    const-wide/16 v36, 0x1

    sub-long v34, v34, v36

    int-to-long v0, v10

    move-wide/from16 v36, v0

    rem-long v8, v34, v36

    .line 1434
    .local v8, "blockEndOff":J
    :goto_2
    sub-long v34, v8, v12

    const-wide/16 v36, 0x1

    add-long v28, v34, v36

    .line 1436
    .local v28, "size":J
    sget-boolean v34, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->$assertionsDisabled:Z

    if-nez v34, :cond_4

    const-wide/16 v34, 0x0

    cmp-long v34, v28, v34

    if-lez v34, :cond_1

    int-to-long v0, v10

    move-wide/from16 v34, v0

    cmp-long v34, v28, v34

    if-lez v34, :cond_4

    :cond_1
    new-instance v34, Ljava/lang/AssertionError;

    invoke-direct/range {v34 .. v34}, Ljava/lang/AssertionError;-><init>()V

    throw v34

    .line 1431
    .end local v8    # "blockEndOff":J
    .end local v12    # "blockStartOff":J
    .end local v28    # "size":J
    :cond_2
    const-wide/16 v12, 0x0

    goto :goto_1

    .line 1432
    .restart local v12    # "blockStartOff":J
    :cond_3
    add-int/lit8 v34, v10, -0x1

    move/from16 v0, v34

    int-to-long v8, v0

    goto :goto_2

    .line 1437
    .restart local v8    # "blockEndOff":J
    .restart local v28    # "size":J
    :cond_4
    sget-boolean v34, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->$assertionsDisabled:Z

    if-nez v34, :cond_5

    add-long v34, v12, v28

    int-to-long v0, v10

    move-wide/from16 v36, v0

    cmp-long v34, v34, v36

    if-lez v34, :cond_5

    new-instance v34, Ljava/lang/AssertionError;

    invoke-direct/range {v34 .. v34}, Ljava/lang/AssertionError;-><init>()V

    throw v34

    .line 1439
    :cond_5
    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 1442
    .local v23, "portion":[B
    move-wide/from16 v0, v28

    long-to-int v0, v0

    move/from16 v34, v0

    sub-int v35, p5, v26

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->min(II)I

    move-result v24

    .line 1444
    .local v24, "portionOff":I
    move/from16 v0, v26

    move/from16 v1, p5

    if-eq v0, v1, :cond_6

    .line 1445
    const/16 v34, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v26

    move-object/from16 v2, v23

    move/from16 v3, v34

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 1447
    add-int v26, v26, v24

    .line 1450
    :cond_6
    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v34, v0

    cmp-long v34, v34, v28

    if-gez v34, :cond_7

    .line 1451
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->readData(Ljava/lang/Object;[BI)V

    .line 1454
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->createBlockKey(JLorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    invoke-static {v0, v6, v7, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2400(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;JLorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    move-result-object v16

    .line 1456
    .local v16, "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-object/from16 v34, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataCachePrj:Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;
    invoke-static/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$1900(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/GridCacheProjectionEx;->cache()Lorg/apache/ignite/internal/processors/cache/GridCache;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/cache/GridCache;->affinity()Lorg/apache/ignite/cache/affinity/Affinity;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/apache/ignite/cache/affinity/Affinity;->mapKeyToNode(Ljava/lang/Object;)Lorg/apache/ignite/cluster/ClusterNode;

    move-result-object v25

    .line 1458
    .local v25, "primaryNode":Lorg/apache/ignite/cluster/ClusterNode;
    cmp-long v34, v6, v14

    if-nez v34, :cond_8

    .line 1459
    long-to-int v0, v12

    move/from16 v22, v0

    .line 1460
    move-object/from16 v20, v25

    .line 1463
    :cond_8
    int-to-long v0, v10

    move-wide/from16 v34, v0

    cmp-long v34, v28, v34

    if-nez v34, :cond_9

    .line 1464
    sget-boolean v34, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->$assertionsDisabled:Z

    if-nez v34, :cond_c

    const-wide/16 v34, 0x0

    cmp-long v34, v12, v34

    if-eqz v34, :cond_c

    new-instance v34, Ljava/lang/AssertionError;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Cannot write the whole block not from start position [start="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", block="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", blockStartOff="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", blockEndOff="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", size="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", first="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", limit="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, ", blockSize="

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v36, 0x5d

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v34

    .line 1471
    :cond_9
    const-wide/16 v34, 0x0

    cmp-long v34, v12, v34

    if-nez v34, :cond_c

    if-nez p8, :cond_c

    .line 1472
    sget-boolean v34, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->$assertionsDisabled:Z

    if-nez v34, :cond_a

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v34, v0

    add-int v34, v34, v27

    move/from16 v0, v34

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    new-instance v34, Ljava/lang/AssertionError;

    invoke-direct/range {v34 .. v34}, Ljava/lang/AssertionError;-><init>()V

    throw v34

    .line 1474
    :cond_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_b

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->processBatch(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Map;)V
    invoke-static {v0, v11, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2500(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Map;)V

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-object/from16 v34, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v34

    const/16 v35, 0x1

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->addWriteBlocks(II)V

    .line 1533
    .end local v8    # "blockEndOff":J
    .end local v12    # "blockStartOff":J
    .end local v16    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .end local v23    # "portion":[B
    .end local v24    # "portionOff":I
    .end local v25    # "primaryNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v28    # "size":J
    :cond_b
    :goto_3
    return-object v23

    .line 1484
    .restart local v8    # "blockEndOff":J
    .restart local v12    # "blockStartOff":J
    .restart local v16    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .restart local v23    # "portion":[B
    .restart local v24    # "portionOff":I
    .restart local v25    # "primaryNode":Lorg/apache/ignite/cluster/ClusterNode;
    .restart local v28    # "size":J
    :cond_c
    const/16 v32, 0x0

    .line 1486
    .local v32, "writtenSecondary":I
    if-eqz p10, :cond_e

    .line 1487
    move-object/from16 v0, p10

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->write([B)Z

    move-result v34

    if-nez v34, :cond_d

    .line 1488
    new-instance v34, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Cannot write more data to the secondary file system output stream because it was marked as closed: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {p10 .. p10}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v34

    .line 1491
    :cond_d
    const/16 v32, 0x1

    .line 1494
    :cond_e
    sget-boolean v34, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->$assertionsDisabled:Z

    if-nez v34, :cond_f

    if-nez v25, :cond_f

    new-instance v34, Ljava/lang/AssertionError;

    invoke-direct/range {v34 .. v34}, Ljava/lang/AssertionError;-><init>()V

    throw v34

    .line 1496
    :cond_f
    const/16 v33, 0x0

    .line 1498
    .local v33, "writtenTotal":I
    invoke-interface/range {v25 .. v25}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v34

    invoke-interface/range {v20 .. v20}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_11

    .line 1499
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_10

    .line 1500
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->processBatch(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Map;)V
    invoke-static {v0, v11, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2500(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Map;)V

    .line 1502
    :cond_10
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v33

    .line 1504
    sub-long v34, v18, v14

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lorg/apache/ignite/internal/util/typedef/internal/U;->newLinkedHashMap(I)Ljava/util/LinkedHashMap;

    move-result-object v21

    .line 1505
    move-object/from16 v20, v25

    .line 1508
    :cond_11
    sget-boolean v34, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->$assertionsDisabled:Z

    if-nez v34, :cond_12

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    cmp-long v34, v28, v34

    if-eqz v34, :cond_12

    new-instance v34, Ljava/lang/AssertionError;

    invoke-direct/range {v34 .. v34}, Ljava/lang/AssertionError;-><init>()V

    throw v34

    .line 1510
    :cond_12
    int-to-long v0, v10

    move-wide/from16 v34, v0

    cmp-long v34, v28, v34

    if-eqz v34, :cond_14

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-object/from16 v35, v0

    cmp-long v34, v6, v14

    if-nez v34, :cond_13

    move/from16 v34, v22

    :goto_4
    move-object/from16 v0, v35

    move-object/from16 v1, v16

    move/from16 v2, v34

    move-object/from16 v3, v23

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->processPartialBlockWrite(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;I[B)V
    invoke-static {v0, v11, v1, v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2600(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;I[B)V

    .line 1514
    add-int/lit8 v33, v33, 0x1

    .line 1519
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-object/from16 v34, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->addWriteBlocks(II)V

    .line 1521
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v34, v0

    add-int v27, v27, v34

    .line 1430
    const-wide/16 v34, 0x1

    add-long v6, v6, v34

    goto/16 :goto_0

    .line 1512
    :cond_13
    const/16 v34, 0x0

    goto :goto_4

    .line 1517
    :cond_14
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1525
    .end local v8    # "blockEndOff":J
    .end local v12    # "blockStartOff":J
    .end local v16    # "key":Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;
    .end local v23    # "portion":[B
    .end local v24    # "portionOff":I
    .end local v25    # "primaryNode":Lorg/apache/ignite/cluster/ClusterNode;
    .end local v28    # "size":J
    .end local v32    # "writtenSecondary":I
    .end local v33    # "writtenTotal":I
    :cond_15
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->isEmpty()Z

    move-result v34

    if-nez v34, :cond_16

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->processBatch(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Map;)V
    invoke-static {v0, v11, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$2500(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/cluster/ClusterNode;Ljava/util/Map;)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-object/from16 v34, v0

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static/range {v34 .. v34}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v34

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v35

    const/16 v36, 0x0

    invoke-virtual/range {v34 .. v36}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->addWriteBlocks(II)V

    .line 1531
    :cond_16
    sget-boolean v34, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$BlocksWriter;->$assertionsDisabled:Z

    if-nez v34, :cond_17

    move/from16 v0, v27

    move/from16 v1, v17

    if-eq v0, v1, :cond_17

    new-instance v34, Ljava/lang/AssertionError;

    invoke-direct/range {v34 .. v34}, Ljava/lang/AssertionError;-><init>()V

    throw v34

    .line 1533
    :cond_17
    const/16 v23, 0x0

    goto/16 :goto_3
.end method
