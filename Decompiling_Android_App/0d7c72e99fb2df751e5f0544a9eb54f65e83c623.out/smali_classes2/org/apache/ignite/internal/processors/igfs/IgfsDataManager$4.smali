.class Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;
.super Lorg/apache/ignite/internal/util/typedef/CX1;
.source "IgfsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataBlock(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;JLorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/typedef/CX1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<[B>;[B>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

.field final synthetic val$blockIdx:J

.field final synthetic val$fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

.field final synthetic val$key:Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

.field final synthetic val$path:Lorg/apache/ignite/igfs/IgfsPath;

.field final synthetic val$secReader:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 404
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;JLorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;)V
    .locals 1

    .prologue
    .line 404
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$key:Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$blockIdx:J

    iput-object p7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$secReader:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/typedef/CX1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic applyx(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 404
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)[B

    move-result-object v0

    return-object v0
.end method

.method public applyx(Lorg/apache/ignite/internal/IgniteInternalFuture;)[B
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<[B>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 406
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<[B>;"
    invoke-interface/range {p1 .. p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 408
    .local v6, "res":[B
    if-nez v6, :cond_7

    .line 409
    new-instance v14, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {v14}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 411
    .local v14, "rmtReadFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<[B>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->rmtReadFuts:Lorg/jsr166/ConcurrentHashMap8;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/jsr166/ConcurrentHashMap8;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$key:Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {v3, v4, v14}, Lorg/jsr166/ConcurrentHashMap8;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 413
    .local v10, "oldRmtReadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<[B>;"
    if-nez v10, :cond_5

    .line 415
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v3}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v3, v3, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading non-local data block in the secondary file system [path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", fileInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", blockIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$blockIdx:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 419
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v2

    .line 421
    .local v2, "blockSize":I
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$blockIdx:J

    int-to-long v0, v2

    move-wide/from16 v16, v0

    mul-long v12, v4, v16

    .line 423
    .local v12, "pos":J
    new-array v6, v2, [B

    .line 425
    const/4 v7, 0x0

    .line 427
    .local v7, "read":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$secReader:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 430
    :goto_0
    if-ge v7, v2, :cond_1

    .line 431
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$secReader:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

    int-to-long v4, v7

    add-long/2addr v4, v12

    sub-int v8, v2, v7

    invoke-interface/range {v3 .. v8}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;->read(J[BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    .line 433
    .local v11, "r":I
    if-gez v11, :cond_3

    .line 443
    .end local v11    # "r":I
    :cond_1
    :try_start_2
    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 446
    if-eq v7, v2, :cond_2

    .line 447
    :try_start_3
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    .line 449
    :cond_2
    invoke-virtual {v14, v6}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$key:Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    # invokes: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->putSafe(Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B)V
    invoke-static {v3, v4, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$900(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;[B)V

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->addReadBlocks(II)V
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->rmtReadFuts:Lorg/jsr166/ConcurrentHashMap8;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/jsr166/ConcurrentHashMap8;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$key:Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {v3, v4, v14}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    .line 463
    .local v15, "rmv":Z
    sget-boolean v3, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    if-nez v15, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 436
    .end local v15    # "rmv":Z
    .restart local v11    # "r":I
    :cond_3
    add-int/2addr v7, v11

    .line 437
    goto :goto_0

    .line 439
    .end local v11    # "r":I
    :catch_0
    move-exception v9

    .line 440
    .local v9, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read data due to secondary file system exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v9}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 443
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 455
    .end local v2    # "blockSize":I
    .end local v7    # "read":I
    .end local v12    # "pos":J
    :catch_1
    move-exception v9

    .line 456
    .local v9, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_6
    invoke-virtual {v14, v9}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Throwable;)Z

    .line 458
    throw v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 461
    .end local v9    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->rmtReadFuts:Lorg/jsr166/ConcurrentHashMap8;
    invoke-static {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$800(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/jsr166/ConcurrentHashMap8;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->val$key:Lorg/apache/ignite/internal/processors/igfs/IgfsBlockKey;

    invoke-virtual {v4, v5, v14}, Lorg/jsr166/ConcurrentHashMap8;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    .line 463
    .restart local v15    # "rmv":Z
    sget-boolean v4, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    if-nez v15, :cond_4

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 464
    :cond_4
    throw v3

    .line 468
    .end local v15    # "rmv":Z
    :cond_5
    invoke-interface {v10}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "res":[B
    check-cast v6, [B

    .line 470
    .restart local v6    # "res":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->addReadBlocks(II)V

    .line 476
    .end local v10    # "oldRmtReadFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<[B>;"
    .end local v14    # "rmtReadFut":Lorg/apache/ignite/internal/util/future/GridFutureAdapter;, "Lorg/apache/ignite/internal/util/future/GridFutureAdapter<[B>;"
    :cond_6
    :goto_1
    return-object v6

    .line 474
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager$4;->this$0:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    # getter for: Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;
    invoke-static {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->access$1000(Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;)Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->addReadBlocks(II)V

    goto :goto_1
.end method
