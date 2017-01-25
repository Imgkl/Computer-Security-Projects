.class public Lorg/apache/ignite/configuration/FileSystemConfiguration;
.super Ljava/lang/Object;
.source "FileSystemConfiguration.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_BLOCK_SIZE:I = 0x10000

.field public static final DFLT_BUF_SIZE:I = 0x10000

.field public static final DFLT_FRAGMENTIZER_CONCURRENT_FILES:I = 0x0

.field public static final DFLT_FRAGMENTIZER_ENABLED:Z = true

.field public static final DFLT_FRAGMENTIZER_LOCAL_WRITES_RATIO:F = 0.8f

.field public static final DFLT_FRAGMENTIZER_THROTTLING_BLOCK_LENGTH:J = 0x1000000L

.field public static final DFLT_FRAGMENTIZER_THROTTLING_DELAY:J = 0xc8L

.field public static final DFLT_IGFS_LOG_BATCH_SIZE:I = 0x64

.field public static final DFLT_IGFS_LOG_DIR:Ljava/lang/String; = "work/igfs/log"

.field public static final DFLT_IPC_ENDPOINT_ENABLED:Z = true

.field public static final DFLT_MGMT_PORT:I = 0x2c88

.field public static final DFLT_MODE:Lorg/apache/ignite/igfs/IgfsMode;

.field public static final DFLT_PER_NODE_BATCH_SIZE:I = 0x64

.field public static final DFLT_PER_NODE_PARALLEL_BATCH_CNT:I = 0x8

.field public static final DFLT_TRASH_PURGE_TIMEOUT:J = 0x3e8L

.field public static final DFLT_USER_NAME:Ljava/lang/String;


# instance fields
.field private blockSize:I

.field private bufSize:I

.field private dataCacheName:Ljava/lang/String;

.field private dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

.field private dualModeMaxPendingPutsSize:J

.field private dualModePutExec:Ljava/util/concurrent/ExecutorService;

.field private dualModePutExecShutdown:Z

.field private fragmentizerConcurrentFiles:I

.field private fragmentizerEnabled:Z

.field private fragmentizerLocWritesRatio:F

.field private fragmentizerThrottlingBlockLen:J

.field private fragmentizerThrottlingDelay:J

.field private ipcEndpointCfg:Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

.field private ipcEndpointEnabled:Z

.field private maxSpace:J

.field private maxTaskRangeLen:J

.field private metaCacheName:Ljava/lang/String;

.field private mgmtPort:I

.field private name:Ljava/lang/String;

.field private pathModes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;"
        }
    .end annotation
.end field

.field private perNodeBatchSize:I

.field private perNodeParallelBatchCnt:I

.field private prefetchBlocks:I

.field private secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

.field private seqReadsBeforePrefetch:I

.field private trashPurgeTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->$assertionsDisabled:Z

    .line 35
    const-string v0, "user.name"

    const-string v1, "anonymous"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->DFLT_USER_NAME:Ljava/lang/String;

    .line 65
    sget-object v0, Lorg/apache/ignite/igfs/IgfsMode;->DUAL_ASYNC:Lorg/apache/ignite/igfs/IgfsMode;

    sput-object v0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->DFLT_MODE:Lorg/apache/ignite/igfs/IgfsMode;

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v0, 0x10000

    const/4 v2, 0x1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->blockSize:I

    .line 101
    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->bufSize:I

    .line 104
    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->perNodeBatchSize:I

    .line 107
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->perNodeParallelBatchCnt:I

    .line 113
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->ipcEndpointEnabled:Z

    .line 116
    const/16 v0, 0x2c88

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->mgmtPort:I

    .line 122
    sget-object v0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->DFLT_MODE:Lorg/apache/ignite/igfs/IgfsMode;

    iput-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 125
    const-wide/32 v0, 0x1000000

    iput-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerThrottlingBlockLen:J

    .line 128
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerThrottlingDelay:J

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerConcurrentFiles:I

    .line 134
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerLocWritesRatio:F

    .line 137
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerEnabled:Z

    .line 146
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->trashPurgeTimeout:J

    .line 165
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/configuration/FileSystemConfiguration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/apache/ignite/configuration/FileSystemConfiguration;

    .prologue
    const/high16 v0, 0x10000

    const/4 v2, 0x1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->blockSize:I

    .line 101
    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->bufSize:I

    .line 104
    const/16 v0, 0x64

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->perNodeBatchSize:I

    .line 107
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->perNodeParallelBatchCnt:I

    .line 113
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->ipcEndpointEnabled:Z

    .line 116
    const/16 v0, 0x2c88

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->mgmtPort:I

    .line 122
    sget-object v0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->DFLT_MODE:Lorg/apache/ignite/igfs/IgfsMode;

    iput-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 125
    const-wide/32 v0, 0x1000000

    iput-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerThrottlingBlockLen:J

    .line 128
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerThrottlingDelay:J

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerConcurrentFiles:I

    .line 134
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerLocWritesRatio:F

    .line 137
    iput-boolean v2, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerEnabled:Z

    .line 146
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->trashPurgeTimeout:J

    .line 173
    sget-boolean v0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 178
    :cond_0
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->blockSize:I

    .line 179
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getStreamBufferSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->bufSize:I

    .line 180
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dataCacheName:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDefaultMode()Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 182
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDualModeMaxPendingPutsSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dualModeMaxPendingPutsSize:J

    .line 183
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDualModePutExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dualModePutExec:Ljava/util/concurrent/ExecutorService;

    .line 184
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDualModePutExecutorServiceShutdown()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dualModePutExecShutdown:Z

    .line 185
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getFragmentizerConcurrentFiles()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerConcurrentFiles:I

    .line 186
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getFragmentizerLocalWritesRatio()F

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerLocWritesRatio:F

    .line 187
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->isFragmentizerEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerEnabled:Z

    .line 188
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getFragmentizerThrottlingBlockLength()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerThrottlingBlockLen:J

    .line 189
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getFragmentizerThrottlingDelay()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerThrottlingDelay:J

    .line 190
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getSecondaryFileSystem()Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    .line 191
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getIpcEndpointConfiguration()Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->ipcEndpointCfg:Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

    .line 192
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->isIpcEndpointEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->ipcEndpointEnabled:Z

    .line 193
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMaxSpaceSize()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->maxSpace:J

    .line 194
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMaximumTaskRangeLength()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->maxTaskRangeLen:J

    .line 195
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMetaCacheName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->metaCacheName:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getManagementPort()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->mgmtPort:I

    .line 197
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->name:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPathModes()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->pathModes:Ljava/util/Map;

    .line 199
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPerNodeBatchSize()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->perNodeBatchSize:I

    .line 200
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPerNodeParallelBatchCount()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->perNodeParallelBatchCnt:I

    .line 201
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPrefetchBlocks()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->prefetchBlocks:I

    .line 202
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getSequentialReadsBeforePrefetch()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->seqReadsBeforePrefetch:I

    .line 203
    invoke-virtual {p1}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getTrashPurgeTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->trashPurgeTimeout:J

    .line 204
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->blockSize:I

    return v0
.end method

.method public getDataCacheName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dataCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultMode()Lorg/apache/ignite/igfs/IgfsMode;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    return-object v0
.end method

.method public getDualModeMaxPendingPutsSize()J
    .locals 2

    .prologue
    .line 732
    iget-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dualModeMaxPendingPutsSize:J

    return-wide v0
.end method

.method public getDualModePutExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dualModePutExec:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getDualModePutExecutorServiceShutdown()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dualModePutExecShutdown:Z

    return v0
.end method

.method public getFragmentizerConcurrentFiles()I
    .locals 1

    .prologue
    .line 589
    iget v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerConcurrentFiles:I

    return v0
.end method

.method public getFragmentizerLocalWritesRatio()F
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerLocWritesRatio:F

    return v0
.end method

.method public getFragmentizerThrottlingBlockLength()J
    .locals 2

    .prologue
    .line 553
    iget-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerThrottlingBlockLen:J

    return-wide v0
.end method

.method public getFragmentizerThrottlingDelay()J
    .locals 2

    .prologue
    .line 571
    iget-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerThrottlingDelay:J

    return-wide v0
.end method

.method public getIpcEndpointConfiguration()Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->ipcEndpointCfg:Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

    return-object v0
.end method

.method public getManagementPort()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->mgmtPort:I

    return v0
.end method

.method public getMaxSpaceSize()J
    .locals 2

    .prologue
    .line 652
    iget-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->maxSpace:J

    return-wide v0
.end method

.method public getMaximumTaskRangeLength()J
    .locals 2

    .prologue
    .line 771
    iget-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->maxTaskRangeLen:J

    return-wide v0
.end method

.method public getMetaCacheName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->metaCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPathModes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 532
    iget-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->pathModes:Ljava/util/Map;

    return-object v0
.end method

.method public getPerNodeBatchSize()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->perNodeBatchSize:I

    return v0
.end method

.method public getPerNodeParallelBatchCount()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->perNodeParallelBatchCnt:I

    return v0
.end method

.method public getPrefetchBlocks()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->prefetchBlocks:I

    return v0
.end method

.method public getSecondaryFileSystem()Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    return-object v0
.end method

.method public getSequentialReadsBeforePrefetch()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->seqReadsBeforePrefetch:I

    return v0
.end method

.method public getStreamBufferSize()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->bufSize:I

    return v0
.end method

.method public getTrashPurgeTimeout()J
    .locals 2

    .prologue
    .line 670
    iget-wide v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->trashPurgeTimeout:J

    return-wide v0
.end method

.method public isFragmentizerEnabled()Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerEnabled:Z

    return v0
.end method

.method public isIpcEndpointEnabled()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->ipcEndpointEnabled:Z

    return v0
.end method

.method public setBlockSize(I)V
    .locals 2
    .param p1, "blockSize"    # I

    .prologue
    .line 277
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "blockSize >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 279
    if-nez p1, :cond_0

    const/high16 p1, 0x10000

    .end local p1    # "blockSize":I
    :cond_0
    iput p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->blockSize:I

    .line 280
    return-void

    .line 277
    .restart local p1    # "blockSize":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDataCacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataCacheName"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dataCacheName:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setDefaultMode(Lorg/apache/ignite/igfs/IgfsMode;)V
    .locals 0
    .param p1, "dfltMode"    # Lorg/apache/ignite/igfs/IgfsMode;

    .prologue
    .line 492
    iput-object p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 493
    return-void
.end method

.method public setDualModeMaxPendingPutsSize(J)V
    .locals 1
    .param p1, "dualModeMaxPendingPutsSize"    # J

    .prologue
    .line 741
    iput-wide p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dualModeMaxPendingPutsSize:J

    .line 742
    return-void
.end method

.method public setDualModePutExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1, "dualModePutExec"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 700
    iput-object p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dualModePutExec:Ljava/util/concurrent/ExecutorService;

    .line 701
    return-void
.end method

.method public setDualModePutExecutorServiceShutdown(Z)V
    .locals 0
    .param p1, "dualModePutExecShutdown"    # Z

    .prologue
    .line 718
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->dualModePutExecShutdown:Z

    .line 719
    return-void
.end method

.method public setFragmentizerConcurrentFiles(I)V
    .locals 0
    .param p1, "fragmentizerConcurrentFiles"    # I

    .prologue
    .line 598
    iput p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerConcurrentFiles:I

    .line 599
    return-void
.end method

.method public setFragmentizerEnabled(Z)V
    .locals 0
    .param p1, "fragmentizerEnabled"    # Z

    .prologue
    .line 643
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerEnabled:Z

    .line 644
    return-void
.end method

.method public setFragmentizerLocalWritesRatio(F)V
    .locals 0
    .param p1, "fragmentizerLocWritesRatio"    # F

    .prologue
    .line 624
    iput p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerLocWritesRatio:F

    .line 625
    return-void
.end method

.method public setFragmentizerThrottlingBlockLength(J)V
    .locals 1
    .param p1, "fragmentizerThrottlingBlockLen"    # J

    .prologue
    .line 562
    iput-wide p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerThrottlingBlockLen:J

    .line 563
    return-void
.end method

.method public setFragmentizerThrottlingDelay(J)V
    .locals 1
    .param p1, "fragmentizerThrottlingDelay"    # J

    .prologue
    .line 580
    iput-wide p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->fragmentizerThrottlingDelay:J

    .line 581
    return-void
.end method

.method public setIpcEndpointConfiguration(Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;)V
    .locals 0
    .param p1, "ipcEndpointCfg"    # Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 421
    iput-object p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->ipcEndpointCfg:Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

    .line 422
    return-void
.end method

.method public setIpcEndpointEnabled(Z)V
    .locals 0
    .param p1, "ipcEndpointEnabled"    # Z

    .prologue
    .line 446
    iput-boolean p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->ipcEndpointEnabled:Z

    .line 447
    return-void
.end method

.method public setManagementPort(I)V
    .locals 0
    .param p1, "mgmtPort"    # I

    .prologue
    .line 467
    iput p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->mgmtPort:I

    .line 468
    return-void
.end method

.method public setMaxSpaceSize(J)V
    .locals 1
    .param p1, "maxSpace"    # J

    .prologue
    .line 661
    iput-wide p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->maxSpace:J

    .line 662
    return-void
.end method

.method public setMaximumTaskRangeLength(J)V
    .locals 1
    .param p1, "maxTaskRangeLen"    # J

    .prologue
    .line 781
    iput-wide p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->maxTaskRangeLen:J

    .line 782
    return-void
.end method

.method public setMetaCacheName(Ljava/lang/String;)V
    .locals 0
    .param p1, "metaCacheName"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->metaCacheName:Ljava/lang/String;

    .line 242
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->name:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setPathModes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/igfs/IgfsMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    .local p1, "pathModes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ignite/igfs/IgfsMode;>;"
    iput-object p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->pathModes:Ljava/util/Map;

    .line 545
    return-void
.end method

.method public setPerNodeBatchSize(I)V
    .locals 0
    .param p1, "perNodeBatchSize"    # I

    .prologue
    .line 379
    iput p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->perNodeBatchSize:I

    .line 380
    return-void
.end method

.method public setPerNodeParallelBatchCount(I)V
    .locals 0
    .param p1, "perNodeParallelBatchCnt"    # I

    .prologue
    .line 397
    iput p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->perNodeParallelBatchCnt:I

    .line 398
    return-void
.end method

.method public setPrefetchBlocks(I)V
    .locals 2
    .param p1, "prefetchBlocks"    # I

    .prologue
    .line 297
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "prefetchBlocks >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 299
    iput p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->prefetchBlocks:I

    .line 300
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSecondaryFileSystem(Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;)V
    .locals 0
    .param p1, "fileSystem"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    .prologue
    .line 512
    iput-object p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->secondaryFs:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    .line 513
    return-void
.end method

.method public setSequentialReadsBeforePrefetch(I)V
    .locals 2
    .param p1, "seqReadsBeforePrefetch"    # I

    .prologue
    .line 339
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "seqReadsBeforePrefetch >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 341
    iput p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->seqReadsBeforePrefetch:I

    .line 342
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStreamBufferSize(I)V
    .locals 2
    .param p1, "bufSize"    # I

    .prologue
    .line 359
    if-ltz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "bufSize >= 0"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 361
    if-nez p1, :cond_0

    const/high16 p1, 0x10000

    .end local p1    # "bufSize":I
    :cond_0
    iput p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->bufSize:I

    .line 362
    return-void

    .line 359
    .restart local p1    # "bufSize":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTrashPurgeTimeout(J)V
    .locals 1
    .param p1, "trashPurgeTimeout"    # J

    .prologue
    .line 679
    iput-wide p1, p0, Lorg/apache/ignite/configuration/FileSystemConfiguration;->trashPurgeTimeout:J

    .line 680
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 786
    const-class v0, Lorg/apache/ignite/configuration/FileSystemConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
