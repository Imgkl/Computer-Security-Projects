.class public Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;
.super Ljava/lang/Object;
.source "VisorIgfsConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private blockSize:I

.field private dataCacheName:Ljava/lang/String;

.field private dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

.field private dualModeMaxPendingPutsSize:J

.field private dualModePutExecutorSrvc:Ljava/lang/String;

.field private dualModePutExecutorSrvcShutdown:Z

.field private fragmentizerConcurrentFiles:I

.field private fragmentizerEnabled:Z

.field private fragmentizerLocWritesRatio:F

.field private fragmentizerThrottlingBlockLen:J

.field private fragmentizerThrottlingDelay:J

.field private ipcEndpointCfg:Ljava/lang/String;

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

.field private secondaryHadoopFileSysCfgPath:Ljava/lang/String;

.field private secondaryHadoopFileSysUri:Ljava/lang/String;

.field private secondaryHadoopFileSysUserName:Ljava/lang/String;

.field private seqReadsBeforePrefetch:I

.field private streamBufSize:I

.field private trashPurgeTimeout:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Lorg/apache/ignite/configuration/FileSystemConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;
    .locals 6
    .param p0, "igfs"    # Lorg/apache/ignite/configuration/FileSystemConfiguration;

    .prologue
    .line 128
    new-instance v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;

    invoke-direct {v0}, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;-><init>()V

    .line 130
    .local v0, "cfg":Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->name:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMetaCacheName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->metaCacheName:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDataCacheName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->dataCacheName:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getBlockSize()I

    move-result v4

    iput v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->blockSize:I

    .line 134
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPrefetchBlocks()I

    move-result v4

    iput v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->prefetchBlocks:I

    .line 135
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getStreamBufferSize()I

    move-result v4

    iput v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->streamBufSize:I

    .line 136
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPerNodeBatchSize()I

    move-result v4

    iput v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->perNodeBatchSize:I

    .line 137
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPerNodeParallelBatchCount()I

    move-result v4

    iput v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->perNodeParallelBatchCnt:I

    .line 139
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getSecondaryFileSystem()Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;

    move-result-object v3

    .line 141
    .local v3, "secFs":Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;
    if-eqz v3, :cond_0

    .line 142
    invoke-interface {v3}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystem;->properties()Ljava/util/Map;

    move-result-object v2

    .line 144
    .local v2, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "SECONDARY_FS_URI"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->secondaryHadoopFileSysUri:Ljava/lang/String;

    .line 145
    const-string v4, "SECONDARY_FS_CONFIG_PATH"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->secondaryHadoopFileSysCfgPath:Ljava/lang/String;

    .line 146
    const-string v4, "SECONDARY_FS_USER_NAME"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->secondaryHadoopFileSysUserName:Ljava/lang/String;

    .line 149
    .end local v2    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDefaultMode()Lorg/apache/ignite/igfs/IgfsMode;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    .line 150
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getPathModes()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->pathModes:Ljava/util/Map;

    .line 151
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDualModePutExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->compactClass(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->dualModePutExecutorSrvc:Ljava/lang/String;

    .line 152
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDualModePutExecutorServiceShutdown()Z

    move-result v4

    iput-boolean v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->dualModePutExecutorSrvcShutdown:Z

    .line 153
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getDualModeMaxPendingPutsSize()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->dualModeMaxPendingPutsSize:J

    .line 154
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMaximumTaskRangeLength()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->maxTaskRangeLen:J

    .line 155
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getFragmentizerConcurrentFiles()I

    move-result v4

    iput v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->fragmentizerConcurrentFiles:I

    .line 156
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getFragmentizerLocalWritesRatio()F

    move-result v4

    iput v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->fragmentizerLocWritesRatio:F

    .line 157
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->isFragmentizerEnabled()Z

    move-result v4

    iput-boolean v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->fragmentizerEnabled:Z

    .line 158
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getFragmentizerThrottlingBlockLength()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->fragmentizerThrottlingBlockLen:J

    .line 159
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getFragmentizerThrottlingDelay()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->fragmentizerThrottlingDelay:J

    .line 161
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getIpcEndpointConfiguration()Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;

    move-result-object v1

    .line 163
    .local v1, "endpointCfg":Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/ignite/igfs/IgfsIpcEndpointConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    iput-object v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->ipcEndpointCfg:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->isIpcEndpointEnabled()Z

    move-result v4

    iput-boolean v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->ipcEndpointEnabled:Z

    .line 166
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getMaxSpaceSize()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->maxSpace:J

    .line 167
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getManagementPort()I

    move-result v4

    iput v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->mgmtPort:I

    .line 168
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getSequentialReadsBeforePrefetch()I

    move-result v4

    iput v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->seqReadsBeforePrefetch:I

    .line 169
    invoke-virtual {p0}, Lorg/apache/ignite/configuration/FileSystemConfiguration;->getTrashPurgeTimeout()J

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->trashPurgeTimeout:J

    .line 171
    return-object v0

    .line 163
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static list([Lorg/apache/ignite/configuration/FileSystemConfiguration;)Ljava/lang/Iterable;
    .locals 6
    .param p0, "igfss"    # [Lorg/apache/ignite/configuration/FileSystemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/ignite/configuration/FileSystemConfiguration;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    if-nez p0, :cond_1

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 189
    :cond_0
    return-object v1

    .line 184
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v5, p0

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    .local v1, "cfgs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;>;"
    move-object v0, p0

    .local v0, "arr$":[Lorg/apache/ignite/configuration/FileSystemConfiguration;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 187
    .local v3, "igfs":Lorg/apache/ignite/configuration/FileSystemConfiguration;
    invoke-static {v3}, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->from(Lorg/apache/ignite/configuration/FileSystemConfiguration;)Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public blockSize()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->blockSize:I

    return v0
.end method

.method public dataCacheName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->dataCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public defaultMode()Lorg/apache/ignite/igfs/IgfsMode;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->dfltMode:Lorg/apache/ignite/igfs/IgfsMode;

    return-object v0
.end method

.method public dualModeMaxPendingPutsSize()J
    .locals 2

    .prologue
    .line 301
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->dualModeMaxPendingPutsSize:J

    return-wide v0
.end method

.method public dualModePutExecutorService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->dualModePutExecutorSrvc:Ljava/lang/String;

    return-object v0
.end method

.method public dualModePutExecutorServiceShutdown()Z
    .locals 1

    .prologue
    .line 294
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->dualModePutExecutorSrvcShutdown:Z

    return v0
.end method

.method public fragmentizerConcurrentFiles()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->fragmentizerConcurrentFiles:I

    return v0
.end method

.method public fragmentizerEnabled()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->fragmentizerEnabled:Z

    return v0
.end method

.method public fragmentizerLocalWritesRatio()F
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->fragmentizerLocWritesRatio:F

    return v0
.end method

.method public fragmentizerThrottlingBlockLength()J
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->fragmentizerThrottlingBlockLen:J

    return-wide v0
.end method

.method public fragmentizerThrottlingDelay()J
    .locals 2

    .prologue
    .line 343
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->fragmentizerThrottlingDelay:J

    return-wide v0
.end method

.method public ipcEndpointConfiguration()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 350
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->ipcEndpointCfg:Ljava/lang/String;

    return-object v0
.end method

.method public ipcEndpointEnabled()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->ipcEndpointEnabled:Z

    return v0
.end method

.method public managementPort()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->mgmtPort:I

    return v0
.end method

.method public maxSpace()J
    .locals 2

    .prologue
    .line 364
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->maxSpace:J

    return-wide v0
.end method

.method public maxTaskRangeLength()J
    .locals 2

    .prologue
    .line 308
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->maxTaskRangeLen:J

    return-wide v0
.end method

.method public metaCacheName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->metaCacheName:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->name:Ljava/lang/String;

    return-object v0
.end method

.method public pathModes()Ljava/util/Map;
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
    .line 280
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->pathModes:Ljava/util/Map;

    return-object v0
.end method

.method public perNodeBatchSize()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->perNodeBatchSize:I

    return v0
.end method

.method public perNodeParallelBatchCount()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->perNodeParallelBatchCnt:I

    return v0
.end method

.method public prefetchBlocks()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->prefetchBlocks:I

    return v0
.end method

.method public secondaryHadoopFileSystemConfigPath()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->secondaryHadoopFileSysCfgPath:Ljava/lang/String;

    return-object v0
.end method

.method public secondaryHadoopFileSystemUri()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->secondaryHadoopFileSysUri:Ljava/lang/String;

    return-object v0
.end method

.method public secondaryHadoopFileSystemUserName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->secondaryHadoopFileSysUserName:Ljava/lang/String;

    return-object v0
.end method

.method public sequenceReadsBeforePrefetch()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->seqReadsBeforePrefetch:I

    return v0
.end method

.method public streamBufferSize()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->streamBufSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 390
    const-class v0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trashPurgeTimeout()J
    .locals 2

    .prologue
    .line 385
    iget-wide v0, p0, Lorg/apache/ignite/internal/visor/node/VisorIgfsConfiguration;->trashPurgeTimeout:J

    return-wide v0
.end method
