.class Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;
.source "IgfsOutputStreamImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$1;,
        Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MAX_BLOCKS_CNT:I = 0x10


# instance fields
.field private final batch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

.field private final data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

.field private fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

.field private final fileName:Ljava/lang/String;

.field private igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

.field private final meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

.field private final metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

.field private final mode:Lorg/apache/ignite/igfs/IgfsMode;

.field private final onCloseGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final parentId:Lorg/apache/ignite/lang/IgniteUuid;

.field private remainder:[B

.field private remainderDataLen:I

.field private space:J

.field private streamRange:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

.field private final writeCompletionFut:Lorg/apache/ignite/internal/IgniteInternalFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/lang/IgniteUuid;ILorg/apache/ignite/igfs/IgfsMode;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;)V
    .locals 3
    .param p1, "igfsCtx"    # Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    .param p2, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p4, "parentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p5, "bufSize"    # I
    .param p6, "mode"    # Lorg/apache/ignite/igfs/IgfsMode;
    .param p7, "batch"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "metrics"    # Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    .prologue
    .line 102
    invoke-static {p5, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->optimizeBufferSize(ILorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)I

    move-result v0

    invoke-direct {p0, p2, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;-><init>(Lorg/apache/ignite/igfs/IgfsPath;I)V

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->onCloseGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected file info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 106
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-eqz p6, :cond_2

    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->PROXY:Lorg/apache/ignite/igfs/IgfsMode;

    if-ne p6, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 107
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_5

    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    if-ne p6, v0, :cond_4

    if-eqz p7, :cond_5

    :cond_4
    if-nez p7, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 108
    :cond_5
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_6

    if-nez p8, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 111
    :cond_6
    invoke-virtual {p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->lockId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    if-nez v0, :cond_7

    .line 112
    new-instance v0, Lorg/apache/ignite/igfs/IgfsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to acquire file lock (concurrently modified?): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/igfs/IgfsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_7
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    .line 115
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->meta()Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    .line 116
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .line 118
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 119
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->mode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 120
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->batch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    .line 121
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->parentId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 122
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    .line 124
    invoke-direct {p0, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->initialStreamRange(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->streamRange:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 126
    invoke-virtual {p2}, Lorg/apache/ignite/igfs/IgfsPath;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileName:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-virtual {v0, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->writeStart(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->writeCompletionFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 129
    return-void
.end method

.method private initialStreamRange(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .locals 14
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .prologue
    .line 405
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->igfsCtx:Lorg/apache/ignite/internal/processors/igfs/IgfsContext;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->configuration()Lorg/apache/ignite/configuration/FileSystemConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->isFragmentizerEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 406
    const/4 v1, 0x0

    .line 428
    :goto_0
    return-object v1

    .line 408
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->properties()Ljava/util/Map;

    move-result-object v1

    const-string v4, "locWrite"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 409
    const/4 v1, 0x0

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v0

    .line 414
    .local v0, "blockSize":I
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v4

    int-to-long v12, v0

    add-long/2addr v4, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v4, v12

    int-to-long v12, v0

    div-long/2addr v4, v12

    int-to-long v12, v0

    mul-long v2, v4, v12

    .line 417
    .local v2, "off":J
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v1

    int-to-long v4, v1

    sub-long v8, v2, v4

    .line 419
    .local v8, "lastBlockOff":J
    const-wide/16 v4, 0x0

    cmp-long v1, v8, v4

    if-gez v1, :cond_2

    .line 420
    const-wide/16 v8, 0x0

    .line 422
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v7

    .line 424
    .local v7, "map":Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
    if-nez v7, :cond_3

    const/4 v10, 0x0

    .line 426
    .local v10, "prevAffKey":Lorg/apache/ignite/lang/IgniteUuid;
    :goto_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    invoke-virtual {v1, v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->nextAffinityKey(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v6

    .line 428
    .local v6, "affKey":Lorg/apache/ignite/lang/IgniteUuid;
    if-nez v6, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    .line 424
    .end local v6    # "affKey":Lorg/apache/ignite/lang/IgniteUuid;
    .end local v10    # "prevAffKey":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v7, v8, v9, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->affinityKey(JZ)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v10

    goto :goto_1

    .line 428
    .restart local v6    # "affKey":Lorg/apache/ignite/lang/IgniteUuid;
    .restart local v10    # "prevAffKey":Lorg/apache/ignite/lang/IgniteUuid;
    :cond_4
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    move-wide v4, v2

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;-><init>(JJLorg/apache/ignite/lang/IgniteUuid;)V

    goto :goto_0
.end method

.method private onClose(Z)V
    .locals 13
    .param p1, "deleted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    const/16 v12, 0x5d

    .line 316
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 318
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->onCloseGuard:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 320
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->mode:Lorg/apache/ignite/igfs/IgfsMode;

    sget-object v2, Lorg/apache/ignite/igfs/IgfsMode;->PRIMARY:Lorg/apache/ignite/igfs/IgfsMode;

    if-eq v1, v2, :cond_2

    .line 321
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->batch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 323
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->batch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->finish()V

    .line 330
    :cond_2
    if-nez p1, :cond_4

    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->exists(Lorg/apache/ignite/lang/IgniteUuid;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_4

    .line 336
    .local v10, "exists":Z
    :goto_0
    if-eqz v10, :cond_5

    .line 337
    const/4 v9, 0x0

    .line 340
    .local v9, "err":Ljava/io/IOException;
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->writeClose(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)V

    .line 342
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->writeCompletionFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 348
    :goto_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->bytes:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->time:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->addWrittenBytesTime(JJ)V

    .line 351
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->mode:Lorg/apache/ignite/igfs/IgfsMode;

    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    if-ne v0, v1, :cond_3

    .line 353
    :try_start_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->batch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->await()V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 362
    :cond_3
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 365
    .local v6, "modificationTime":J
    :try_start_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v0, v1, v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->unlock(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)V
    :try_end_3
    .catch Lorg/apache/ignite/igfs/IgfsPathNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 376
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->parentId:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileName:Ljava/lang/String;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->bytes:J

    invoke-virtual/range {v0 .. v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->updateParentListingAsync(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;JJ)V

    .line 378
    if-eqz v9, :cond_7

    .line 379
    throw v9

    .end local v6    # "modificationTime":J
    .end local v9    # "err":Ljava/io/IOException;
    .end local v10    # "exists":Z
    :cond_4
    move v10, v0

    .line 330
    goto :goto_0

    .line 332
    :catch_0
    move-exception v8

    .line 333
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v0, Ljava/io/IOError;

    invoke-direct {v0, v8}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 344
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v9    # "err":Ljava/io/IOException;
    .restart local v10    # "exists":Z
    :catch_1
    move-exception v8

    .line 345
    .restart local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v9, Ljava/io/IOException;

    .end local v9    # "err":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to close stream [path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v9    # "err":Ljava/io/IOException;
    goto :goto_1

    .line 355
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_2
    move-exception v8

    .line 356
    .restart local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    if-nez v9, :cond_3

    .line 357
    new-instance v9, Ljava/io/IOException;

    .end local v9    # "err":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to close secondary file system stream [path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .restart local v9    # "err":Ljava/io/IOException;
    goto/16 :goto_2

    .line 367
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v6    # "modificationTime":J
    :catch_3
    move-exception v11

    .line 368
    .local v11, "ignore":Lorg/apache/ignite/igfs/IgfsPathNotFoundException;
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->delete(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 370
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File was concurrently deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    .end local v11    # "ignore":Lorg/apache/ignite/igfs/IgfsPathNotFoundException;
    :catch_4
    move-exception v8

    .line 373
    .restart local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v0, Ljava/io/IOError;

    invoke-direct {v0, v8}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 383
    .end local v6    # "modificationTime":J
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v9    # "err":Ljava/io/IOException;
    :cond_5
    :try_start_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->mode:Lorg/apache/ignite/igfs/IgfsMode;

    sget-object v1, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_SYNC:Lorg/apache/ignite/igfs/IgfsMode;

    if-ne v0, v1, :cond_6

    .line 384
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->batch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;->await()V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 391
    :cond_6
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->delete(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 395
    .end local v10    # "exists":Z
    :cond_7
    return-void

    .line 386
    .restart local v10    # "exists":Z
    :catch_5
    move-exception v8

    .line 387
    .restart local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to close secondary file system stream [path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fileInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 391
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->delete(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    throw v0
.end method

.method private static optimizeBufferSize(ILorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)I
    .locals 6
    .param p0, "bufSize"    # I
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .prologue
    .line 140
    sget-boolean v2, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-gtz p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 142
    :cond_0
    if-nez p1, :cond_2

    .line 164
    .end local p0    # "bufSize":I
    :cond_1
    :goto_0
    return p0

    .line 145
    .restart local p0    # "bufSize":I
    :cond_2
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v0

    .line 147
    .local v0, "blockSize":I
    if-lez v0, :cond_1

    .line 150
    if-gt p0, v0, :cond_3

    move p0, v0

    .line 152
    goto :goto_0

    .line 154
    :cond_3
    mul-int/lit8 v1, v0, 0x10

    .line 156
    .local v1, "maxBufSize":I
    if-le p0, v1, :cond_4

    move p0, v1

    .line 158
    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 162
    div-int v2, p0, v0

    mul-int p0, v2, v0

    goto :goto_0
.end method

.method private preStoreDataBlocks(Ljava/io/DataInput;I)V
    .locals 4
    .param p1, "in"    # Ljava/io/DataInput;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->writeCompletionFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->writeCompletionFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    check-cast v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->isFailed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 243
    :cond_0
    if-eqz p1, :cond_1

    .line 244
    invoke-interface {p1, p2}, Ljava/io/DataInput;->skipBytes(I)I

    .line 246
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->writeCompletionFut:Lorg/apache/ignite/internal/IgniteInternalFuture;

    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    .line 249
    :cond_2
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->bytes:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->bytes:J

    .line 250
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->space:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->space:J

    .line 251
    return-void
.end method


# virtual methods
.method public declared-synchronized flush()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->exists(Lorg/apache/ignite/lang/IgniteUuid;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v11

    .line 268
    .local v11, "exists":Z
    if-nez v11, :cond_0

    .line 269
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->onClose(Z)V

    .line 271
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File was concurrently deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    .end local v11    # "exists":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 264
    :catch_0
    move-exception v10

    .line 265
    .local v10, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_2
    new-instance v0, Ljava/io/IOError;

    invoke-direct {v0, v10}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 274
    .end local v10    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v11    # "exists":Z
    :cond_0
    invoke-super {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamAdapter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :try_start_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->space:J

    add-long/2addr v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    const/4 v7, 0x0

    iget v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    invoke-static {v6, v7, v8}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->streamRange:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->batch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    invoke-virtual/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->storeDataBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J[BILjava/nio/ByteBuffer;ZLorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)[B

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    .line 282
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    .line 285
    :cond_1
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->space:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 286
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->space:J

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->streamRange:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    const/4 v6, 0x0

    invoke-direct {v2, v4, v5, v3, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;-><init>(JLorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$1;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->updateInfo(Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/lang/IgniteClosure;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v12

    .line 289
    .local v12, "fileInfo0":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v12, :cond_2

    .line 290
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File was concurrently deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    .end local v12    # "fileInfo0":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :catch_1
    move-exception v10

    .line 300
    .restart local v10    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to flush data [path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", space="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->space:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 292
    .end local v10    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v12    # "fileInfo0":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_2
    :try_start_5
    iput-object v12, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 294
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->initialStreamRange(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->streamRange:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 296
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->space:J
    :try_end_5
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 302
    .end local v12    # "fileInfo0":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method protected onClose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->onClose(Z)V

    .line 307
    return-void
.end method

.method protected declared-synchronized storeDataBlock(Ljava/nio/ByteBuffer;)V
    .locals 14
    .param p1, "block"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 169
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v12

    .line 171
    .local v12, "writeLen":I
    const/4 v0, 0x0

    invoke-direct {p0, v0, v12}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->preStoreDataBlocks(Ljava/io/DataInput;I)V

    .line 173
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v11

    .line 176
    .local v11, "blockSize":I
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    add-int/2addr v0, v12

    if-ge v0, v11, :cond_3

    .line 177
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    if-nez v0, :cond_1

    .line 178
    new-array v0, v11, [B

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    .line 189
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    iget v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    invoke-virtual {p1, v0, v1, v12}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 191
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    add-int/2addr v0, v12

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_1
    monitor-exit p0

    return-void

    .line 179
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    array-length v0, v0

    if-eq v0, v11, :cond_0

    .line 180
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    array-length v1, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .end local v11    # "blockSize":I
    .end local v12    # "writeLen":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 182
    .restart local v11    # "blockSize":I
    .restart local v12    # "writeLen":I
    :cond_2
    :try_start_2
    new-array v10, v11, [B

    .line 184
    .local v10, "allocated":[B
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    array-length v3, v3

    invoke-static {v0, v1, v10, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 186
    iput-object v10, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    goto :goto_0

    .line 194
    .end local v10    # "allocated":[B
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->space:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    iget v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->streamRange:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->batch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    move-object v6, p1

    invoke-virtual/range {v0 .. v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->storeDataBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J[BILjava/nio/ByteBuffer;ZLorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    .line 197
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    if-nez v0, :cond_4

    move v0, v13

    :goto_2
    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method protected declared-synchronized storeDataBlocks(Ljava/io/DataInput;I)V
    .locals 13
    .param p1, "in"    # Ljava/io/DataInput;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->preStoreDataBlocks(Ljava/io/DataInput;I)V

    .line 205
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v12

    .line 208
    .local v12, "blockSize":I
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    add-int/2addr v0, p2

    if-ge v0, v12, :cond_3

    .line 209
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    if-nez v0, :cond_1

    .line 210
    new-array v0, v12, [B

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    .line 221
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    iget v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    invoke-interface {p1, v0, v1, p2}, Ljava/io/DataInput;->readFully([BII)V

    .line 223
    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :goto_1
    monitor-exit p0

    return-void

    .line 211
    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    array-length v0, v0

    if-eq v0, v12, :cond_0

    .line 212
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    array-length v1, v1

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    .end local v12    # "blockSize":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 214
    .restart local v12    # "blockSize":I
    :cond_2
    :try_start_2
    new-array v11, v12, [B

    .line 216
    .local v11, "allocated":[B
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    array-length v3, v3

    invoke-static {v0, v1, v11, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 218
    iput-object v11, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    goto :goto_0

    .line 226
    .end local v11    # "allocated":[B
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->space:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    iget v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->streamRange:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    iget-object v10, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->batch:Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->storeDataBlocks(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J[BILjava/io/DataInput;IZLorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsFileWorkerBatch;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    .line 229
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainderDataLen:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;->remainder:[B

    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
