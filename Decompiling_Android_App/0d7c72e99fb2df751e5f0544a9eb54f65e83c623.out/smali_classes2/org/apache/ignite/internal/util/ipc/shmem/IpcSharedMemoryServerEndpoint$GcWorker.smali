.class Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;
.super Lorg/apache/ignite/internal/util/worker/GridWorker;
.source "IpcSharedMemoryServerEndpoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GcWorker"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 511
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V
    .locals 0
    .param p1    # Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "gridName"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "log"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 517
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->this$0:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    .line 518
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/internal/util/worker/GridWorker;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    .line 519
    return-void
.end method

.method private cleanupResources(Ljava/io/File;)V
    .locals 8
    .param p1, "workTokDir"    # Ljava/io/File;

    .prologue
    .line 577
    const/4 v3, 0x0

    .line 579
    .local v3, "lockFile":Ljava/io/RandomAccessFile;
    const/4 v2, 0x0

    .line 582
    .local v2, "lock":Ljava/nio/channels/FileLock;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    new-instance v5, Ljava/io/File;

    const-string v6, "lock.file"

    invoke-direct {v5, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v6, "rw"

    invoke-direct {v4, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    .end local v3    # "lockFile":Ljava/io/RandomAccessFile;
    .local v4, "lockFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    move-result-object v2

    .line 586
    if-eqz v2, :cond_1

    .line 587
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->processTokenDirectory(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 602
    :cond_0
    :goto_0
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->releaseQuiet(Ljava/nio/channels/FileLock;)V

    .line 603
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    .line 605
    .end local v4    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockFile":Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .line 588
    .end local v3    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockFile":Ljava/io/RandomAccessFile;
    :cond_1
    :try_start_2
    iget-object v5, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 589
    iget-object v5, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Token directory is being processed concurrently: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 591
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 592
    .end local v4    # "lockFile":Ljava/io/RandomAccessFile;
    .local v1, "ignored":Ljava/nio/channels/OverlappingFileLockException;
    .restart local v3    # "lockFile":Ljava/io/RandomAccessFile;
    :goto_2
    :try_start_3
    iget-object v5, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v5}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 593
    iget-object v5, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Token directory is being processed concurrently: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 602
    :cond_2
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->releaseQuiet(Ljava/nio/channels/FileLock;)V

    .line 603
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 595
    .end local v1    # "ignored":Ljava/nio/channels/OverlappingFileLockException;
    :catch_1
    move-exception v1

    .line 596
    .local v1, "ignored":Ljava/io/InterruptedIOException;
    :goto_3
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 602
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->releaseQuiet(Ljava/nio/channels/FileLock;)V

    .line 603
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto :goto_1

    .line 598
    .end local v1    # "ignored":Ljava/io/InterruptedIOException;
    :catch_2
    move-exception v0

    .line 599
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    iget-object v5, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to process directory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 602
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->releaseQuiet(Ljava/nio/channels/FileLock;)V

    .line 603
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    goto/16 :goto_1

    .line 602
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    invoke-static {v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->releaseQuiet(Ljava/nio/channels/FileLock;)V

    .line 603
    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    throw v5

    .line 602
    .end local v3    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockFile":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockFile":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 598
    .end local v3    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockFile":Ljava/io/RandomAccessFile;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockFile":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 595
    .end local v3    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v4    # "lockFile":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    move-object v3, v4

    .end local v4    # "lockFile":Ljava/io/RandomAccessFile;
    .restart local v3    # "lockFile":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 591
    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private processTokenDirectory(Ljava/io/File;)V
    .locals 22
    .param p1, "workTokDir"    # Ljava/io/File;

    .prologue
    .line 611
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, "arr$":[Ljava/io/File;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v2    # "arr$":[Ljava/io/File;
    .end local v6    # "i$":I
    .end local v9    # "len$":I
    .local v7, "i$":I
    :goto_0
    if-ge v7, v9, :cond_5

    aget-object v4, v2, v7

    .line 612
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_1

    .line 613
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "lock.file"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 611
    .end local v7    # "i$":I
    :cond_0
    :goto_1
    add-int/lit8 v6, v7, 0x1

    .restart local v6    # "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto :goto_0

    .line 621
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->this$0:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->access$000(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;)Ljava/io/File;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Skipping own token directory: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->this$0:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->access$000(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;)Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 628
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    .line 633
    .local v11, "name":Ljava/lang/String;
    const/16 v18, 0x2d

    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 643
    .local v12, "pid":I
    invoke-static {v12}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->alive(I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Skipping alive node: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 635
    .end local v12    # "pid":I
    :catch_0
    move-exception v8

    .line 636
    .local v8, "ignored":Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to parse file name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 650
    .end local v8    # "ignored":Ljava/lang/NumberFormatException;
    .restart local v12    # "pid":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Possibly stale token folder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 654
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    .line 656
    .local v15, "shmemToks":[Ljava/io/File;
    if-nez v15, :cond_6

    .line 734
    .end local v4    # "f":Ljava/io/File;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "pid":I
    .end local v15    # "shmemToks":[Ljava/io/File;
    :cond_5
    return-void

    .line 660
    .restart local v4    # "f":Ljava/io/File;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "pid":I
    .restart local v15    # "shmemToks":[Ljava/io/File;
    :cond_6
    const/4 v14, 0x0

    .line 663
    .local v14, "rmvCnt":I
    move-object v3, v15

    .local v3, "arr$":[Ljava/io/File;
    :try_start_1
    array-length v10, v3

    .local v10, "len$":I
    const/4 v6, 0x0

    .end local v7    # "i$":I
    .restart local v6    # "i$":I
    :goto_2
    if-ge v6, v10, :cond_12

    aget-object v5, v3, v6

    .line 664
    .local v5, "f0":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Processing token file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 667
    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unexpected directory: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 673
    :cond_8
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    const-string v19, "-"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 675
    .local v17, "toks":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_a

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Unrecognized token file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    :cond_9
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 686
    :cond_a
    const/16 v18, 0x4

    :try_start_2
    aget-object v18, v17, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 687
    .local v13, "pid0":I
    const/16 v18, 0x5

    aget-object v18, v17, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v16

    .line 696
    .local v16, "size":I
    :try_start_3
    invoke-static {v13}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->alive(I)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Skipping alive process: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 726
    .end local v5    # "f0":Ljava/io/File;
    .end local v6    # "i$":I
    .end local v10    # "len$":I
    .end local v13    # "pid0":I
    .end local v16    # "size":I
    .end local v17    # "toks":[Ljava/lang/String;
    :catchall_0
    move-exception v18

    array-length v0, v15

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v14, v0, :cond_b

    .line 727
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->delete(Ljava/io/File;)Z

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v19, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Deleted empty token directory: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v19 .. v20}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    :cond_b
    throw v18

    .line 689
    .restart local v5    # "f0":Ljava/io/File;
    .restart local v6    # "i$":I
    .restart local v10    # "len$":I
    .restart local v17    # "toks":[Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 690
    .restart local v8    # "ignored":Ljava/lang/NumberFormatException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to parse file name: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 703
    .end local v8    # "ignored":Ljava/lang/NumberFormatException;
    .restart local v13    # "pid0":I
    .restart local v16    # "size":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Possibly stale token file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 706
    :cond_d
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->freeSystemResources(Ljava/lang/String;I)V

    .line 708
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Deleted file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 712
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 714
    :cond_f
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_11

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "File has been concurrently deleted: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 718
    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 720
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to delete file: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 726
    .end local v5    # "f0":Ljava/io/File;
    .end local v13    # "pid0":I
    .end local v16    # "size":I
    .end local v17    # "toks":[Ljava/lang/String;
    :cond_12
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    .line 727
    invoke-static {v4}, Lorg/apache/ignite/internal/util/typedef/internal/U;->delete(Ljava/io/File;)Z

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Deleted empty token directory: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected body()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lorg/apache/ignite/internal/IgniteInterruptedCheckedException;
        }
    .end annotation

    .prologue
    .line 523
    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 524
    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "GC worker started."

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 526
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->this$0:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->access$000(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 528
    .local v3, "workTokDir":Ljava/io/File;
    sget-boolean v4, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->$assertionsDisabled:Z

    if-nez v4, :cond_1

    if-nez v3, :cond_1

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 530
    :cond_1
    const/4 v2, 0x1

    .line 534
    .local v2, "lastRunNeeded":Z
    :cond_2
    :goto_0
    const-wide/16 v4, 0x2710

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_1
    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 541
    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Starting GC iteration."

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 543
    :cond_3
    invoke-direct {p0, v3}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->cleanupResources(Ljava/io/File;)V

    .line 546
    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 547
    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v5, "Processing local spaces."

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 549
    :cond_4
    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->this$0:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->access$100(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;

    .line 550
    .local v0, "e":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;
    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 551
    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing endpoint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 553
    :cond_6
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checkOtherPartyAlive()Z

    move-result v4

    if-nez v4, :cond_5

    .line 554
    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->this$0:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;

    invoke-static {v4}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;->access$100(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 556
    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v4}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 557
    iget-object v4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removed endpoint: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 561
    .end local v0    # "e":Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;
    :cond_7
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryServerEndpoint$GcWorker;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 562
    if-eqz v2, :cond_8

    .line 563
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 565
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 571
    return-void

    .line 536
    .end local v1    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method
