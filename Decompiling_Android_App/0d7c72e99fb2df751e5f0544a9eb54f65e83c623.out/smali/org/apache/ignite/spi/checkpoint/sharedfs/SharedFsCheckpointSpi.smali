.class public Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;
.super Lorg/apache/ignite/spi/IgniteSpiAdapter;
.source "SharedFsCheckpointSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/checkpoint/CheckpointSpi;
.implements Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpiMBean;


# annotations
.annotation runtime Lorg/apache/ignite/spi/IgniteSpiConsistencyChecked;
    optional = false
.end annotation

.annotation runtime Lorg/apache/ignite/spi/IgniteSpiMultipleInstancesSupport;
    value = true
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CODES:Ljava/lang/String; = "0123456789QWERTYUIOPASDFGHJKLZXCVBNM"

.field private static final CODES_LEN:I

.field public static final DFLT_DIR_PATH:Ljava/lang/String; = "cp/sharedfs"


# instance fields
.field private curDirPath:Ljava/lang/String;

.field private dirPaths:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private folder:Ljava/io/File;

.field private gridName:Ljava/lang/String;

.field private host:Ljava/lang/String;

.field private ignite:Lorg/apache/ignite/Ignite;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

.field private timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    const-class v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->$assertionsDisabled:Z

    .line 118
    const-string v0, "0123456789QWERTYUIOPASDFGHJKLZXCVBNM"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->CODES_LEN:I

    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/apache/ignite/spi/IgniteSpiAdapter;-><init>()V

    .line 129
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->dirPaths:Ljava/util/Queue;

    .line 132
    const-string v0, "cp/sharedfs"

    iput-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->curDirPath:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->dirPaths:Ljava/util/Queue;

    const-string v1, "cp/sharedfs"

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method private getFiles()[Ljava/io/File;
    .locals 2

    .prologue
    .line 446
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 448
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    new-instance v1, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi$1;-><init>(Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getNextSharedPath()Ljava/io/File;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v4, 0x5d

    .line 249
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 250
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    .line 252
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->dirPaths:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 255
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 257
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 260
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->dirPaths:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 261
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->dirPaths:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->curDirPath:Ljava/lang/String;

    .line 263
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->curDirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 264
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->curDirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    .line 291
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    if-eqz v1, :cond_8

    .line 292
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v10, "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;>;"
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v13

    .line 298
    .local v13, "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    invoke-direct {p0}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->getFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v12, v0

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_1
    if-ge v11, v12, :cond_7

    aget-object v9, v0, v11

    .line 299
    .local v9, "file":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 300
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking checkpoint file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 304
    :cond_3
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v9, v13, v1}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;->read(Ljava/io/File;Lorg/apache/ignite/marshaller/Marshaller;Lorg/apache/ignite/IgniteLogger;)Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;

    move-result-object v7

    .line 306
    .local v7, "data":Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;
    invoke-virtual {v7}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->host:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 307
    new-instance v1, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;

    invoke-virtual {v7}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->getExpireTime()J

    move-result-wide v2

    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v7}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;-><init>(JJLjava/lang/String;)V

    invoke-interface {v10, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 311
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered existing checkpoint from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 298
    .end local v7    # "data":Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 267
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;>;"
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    :cond_5
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->curDirPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveWorkDirectory(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created shared filesystem checkpoint directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 269
    :catch_0
    move-exception v8

    .line 270
    .local v8, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 271
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve directory [path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->curDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 275
    :cond_6
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->dirPaths:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 278
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->dirPaths:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    new-instance v1, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->curDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v8}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 314
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v9    # "file":Ljava/io/File;
    .restart local v10    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;>;"
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    .restart local v13    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    :catch_1
    move-exception v8

    .line 315
    .restart local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unmarshal objects in checkpoint file (ignoring): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 318
    .end local v8    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_2
    move-exception v8

    .line 319
    .local v8, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO error reading checkpoint file (ignoring): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 324
    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "file":Ljava/io/File;
    :cond_7
    new-instance v1, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->gridName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-direct {v1, v2, v13, v3}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;-><init>(Ljava/lang/String;Lorg/apache/ignite/marshaller/Marshaller;Lorg/apache/ignite/IgniteLogger;)V

    iput-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    .line 326
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    iget-object v2, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    invoke-virtual {v1, v2}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->setCheckpointListener(Lorg/apache/ignite/spi/checkpoint/CheckpointListener;)V

    .line 328
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    invoke-virtual {v1, v10}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->add(Ljava/util/Map;)V

    .line 330
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    invoke-virtual {v1}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->start()V

    .line 333
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v10    # "files":Ljava/util/Map;, "Ljava/util/Map<Ljava/io/File;Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;>;"
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "marsh":Lorg/apache/ignite/marshaller/Marshaller;
    :cond_8
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    return-object v1
.end method

.method private getUniqueFileName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 345
    sget-boolean v2, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 347
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    .line 353
    .local v1, "sb":Lorg/apache/ignite/internal/util/typedef/internal/SB;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/16 v2, 0x7c

    if-ge v0, v2, :cond_1

    .line 354
    const-string v2, "0123456789QWERTYUIOPASDFGHJKLZXCVBNM"

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sget v4, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->CODES_LEN:I

    rem-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(C)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    const-string v2, ".gcp"

    invoke-virtual {v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/util/GridStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getCurrentDirectoryPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->curDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryPaths()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->dirPaths:Ljava/util/Queue;

    return-object v0
.end method

.method public loadCheckpoint(Ljava/lang/String;)[B
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 361
    sget-boolean v4, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 363
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->getUniqueFileName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 365
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 367
    :try_start_0
    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v4}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v2, v4, v5}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;->read(Ljava/io/File;Lorg/apache/ignite/marshaller/Marshaller;Lorg/apache/ignite/IgniteLogger;)Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;

    move-result-object v0

    .line 369
    .local v0, "data":Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->getExpireTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->getExpireTime()J

    move-result-wide v4

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    :cond_1
    invoke-virtual {v0}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;->getState()[B
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 383
    .end local v0    # "data":Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;
    :cond_2
    return-object v3

    .line 375
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unmarshal objects in checkpoint file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 379
    .end local v1    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catch_1
    move-exception v1

    .line 380
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read checkpoint file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public removeCheckpoint(Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 457
    sget-boolean v3, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 459
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->getUniqueFileName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 461
    .local v0, "file":Ljava/io/File;
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    if-eqz v3, :cond_1

    .line 462
    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    invoke-virtual {v3, v0}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->remove(Ljava/io/File;)V

    .line 464
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 466
    .local v2, "rmv":Z
    if-eqz v2, :cond_2

    .line 467
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    .line 469
    .local v1, "lsnr":Lorg/apache/ignite/spi/checkpoint/CheckpointListener;
    if-eqz v1, :cond_2

    .line 470
    invoke-interface {v1, p1}, Lorg/apache/ignite/spi/checkpoint/CheckpointListener;->onCheckpointRemoved(Ljava/lang/String;)V

    .line 473
    .end local v1    # "lsnr":Lorg/apache/ignite/spi/checkpoint/CheckpointListener;
    :cond_2
    return v2
.end method

.method public saveCheckpoint(Ljava/lang/String;[BJZ)Z
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "state"    # [B
    .param p3, "timeout"    # J
    .param p5, "overwrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 389
    sget-boolean v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 391
    :cond_0
    const-wide/16 v2, 0x0

    .line 393
    .local v2, "expireTime":J
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_1

    .line 394
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    add-long v2, v0, p3

    .line 396
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 397
    const-wide v2, 0x7fffffffffffffffL

    .line 400
    :cond_1
    const/4 v9, 0x0

    .line 402
    .local v9, "saved":Z
    :cond_2
    :goto_0
    if-nez v9, :cond_6

    .line 403
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->getUniqueFileName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 405
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 406
    if-nez p5, :cond_3

    .line 407
    const/4 v0, 0x0

    .line 436
    .end local v8    # "file":Ljava/io/File;
    :goto_1
    return v0

    .line 409
    .restart local v8    # "file":Ljava/io/File;
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 410
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Overriding existing file: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 414
    :cond_4
    :try_start_0
    new-instance v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;

    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->host:Ljava/lang/String;

    move-object v1, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;-><init>([BJLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->ignite:Lorg/apache/ignite/Ignite;

    invoke-interface {v1}, Lorg/apache/ignite/Ignite;->configuration()Lorg/apache/ignite/configuration/IgniteConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/configuration/IgniteConfiguration;->getMarshaller()Lorg/apache/ignite/marshaller/Marshaller;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v8, v0, v1, v4}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsUtils;->write(Ljava/io/File;Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointData;Lorg/apache/ignite/marshaller/Marshaller;Lorg/apache/ignite/IgniteLogger;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 430
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_5

    .line 431
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    new-instance v1, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;-><init>(JJLjava/lang/String;)V

    invoke-virtual {v0, v8, v1}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->add(Ljava/io/File;Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeData;)V

    .line 433
    :cond_5
    const/4 v9, 0x1

    .line 434
    goto :goto_0

    .line 417
    :catch_0
    move-exception v7

    .line 419
    .local v7, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->getNextSharedPath()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    .line 422
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write checkpoint data into file: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 425
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 426
    .local v7, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v0, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to marshal checkpoint data into file: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 436
    .end local v7    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .end local v8    # "file":Ljava/io/File;
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_1
.end method

.method public setCheckpointListener(Lorg/apache/ignite/spi/checkpoint/CheckpointListener;)V
    .locals 1
    .param p1, "lsnr"    # Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    .prologue
    .line 478
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->lsnr:Lorg/apache/ignite/spi/checkpoint/CheckpointListener;

    .line 480
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;->setCheckpointListener(Lorg/apache/ignite/spi/checkpoint/CheckpointListener;)V

    .line 482
    :cond_0
    return-void
.end method

.method public setDirectoryPaths(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/spi/IgniteSpiConfiguration;
        optional = true
    .end annotation

    .prologue
    .line 181
    .local p1, "dirPaths":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "!F.isEmpty(dirPaths)"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 183
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->dirPaths:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 184
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->dirPaths:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 185
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spiStart(Ljava/lang/String;)V
    .locals 4
    .param p1, "gridName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->startStopwatch()V

    .line 192
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->dirPaths:Ljava/util/Queue;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/F;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "!F.isEmpty(dirPaths)"

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->assertParameter(ZLjava/lang/String;)V

    .line 194
    iput-object p1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->gridName:Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->getNextSharedPath()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    .line 198
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    if-nez v1, :cond_1

    .line 199
    new-instance v1, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v2, "Failed to create checkpoint directory."

    invoke-direct {v1, v2}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 201
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 202
    new-instance v1, Lorg/apache/ignite/spi/IgniteSpiException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checkpoint directory path is not a valid directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->curDirPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    :cond_2
    const-class v1, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpiMBean;

    invoke-virtual {p0, p1, p0, v1}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->registerMBean(Ljava/lang/String;Lorg/apache/ignite/spi/IgniteSpiManagementMBean;Ljava/lang/Class;)V

    .line 207
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "folder"

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    const-string v2, "dirPaths"

    iget-object v3, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->dirPaths:Ljava/util/Queue;

    invoke-virtual {p0, v2, v3}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->configInfo(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 213
    :cond_3
    :try_start_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->host:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->startInfo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 222
    :cond_4
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ignite/spi/IgniteSpiException;

    const-string v2, "Failed to get localhost address."

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/spi/IgniteSpiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public spiStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 226
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->interrupt(Ljava/lang/Thread;)V

    .line 228
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->timeoutTask:Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsTimeoutTask;

    iget-object v1, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->join(Ljava/lang/Thread;Lorg/apache/ignite/IgniteLogger;)Z

    .line 231
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->unregisterMBean()V

    .line 234
    iput-object v2, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->folder:Ljava/io/File;

    .line 235
    iput-object v2, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->host:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-virtual {p0}, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;->stopInfo()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 240
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    const-class v0, Lorg/apache/ignite/spi/checkpoint/sharedfs/SharedFsCheckpointSpi;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
