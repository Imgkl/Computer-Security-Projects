.class public Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;
.super Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;
.source "IgfsInputStreamImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_CHUNKS:[[B


# instance fields
.field private bytes:J

.field private closed:Z

.field private final data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

.field private volatile fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

.field private final locCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private log:Lorg/apache/ignite/IgniteLogger;

.field private final maxLocCacheSize:I

.field private final meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

.field private final metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

.field protected final path:Lorg/apache/ignite/igfs/IgfsPath;

.field private final pendingFuts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<[B>;>;"
        }
    .end annotation
.end field

.field private final pendingFutsCond:Ljava/util/concurrent/locks/Condition;

.field private final pendingFutsLock:Ljava/util/concurrent/locks/Lock;

.field private pos:J

.field private prefetchBlocks:I

.field private prevBlockIdx:J

.field private final secReader:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

.field private seqReads:I

.field private seqReadsBeforePrefetch:I

.field private time:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->$assertionsDisabled:Z

    .line 39
    new-array v0, v1, [[B

    sput-object v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->EMPTY_CHUNKS:[[B

    return-void

    :cond_0
    move v0, v1

    .line 37
    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/internal/processors/igfs/IgfsContext;Lorg/apache/ignite/igfs/IgfsPath;Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;IILorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;)V
    .locals 4
    .param p1, "igfsCtx"    # Lorg/apache/ignite/internal/processors/igfs/IgfsContext;
    .param p2, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p3, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p4, "prefetchBlocks"    # I
    .param p5, "seqReadsBeforePrefetch"    # I
    .param p6, "secReader"    # Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "metrics"    # Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    .prologue
    const/4 v1, 0x1

    .line 114
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamAdapter;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsLock:Ljava/util/concurrent/locks/Lock;

    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsCond:Ljava/util/concurrent/locks/Condition;

    .line 91
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->prevBlockIdx:J

    .line 115
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 116
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 117
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 118
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p7, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :cond_3
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 121
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 122
    iput p4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->prefetchBlocks:I

    .line 123
    iput p5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->seqReadsBeforePrefetch:I

    .line 124
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->secReader:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

    .line 125
    iput-object p7, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    .line 127
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->meta()Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    .line 128
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->data()Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    .line 130
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsContext;->kernalContext()Lorg/apache/ignite/internal/GridKernalContext;

    move-result-object v0

    const-class v2, Lorg/apache/ignite/igfs/IgfsInputStream;

    invoke-interface {v0, v2}, Lorg/apache/ignite/internal/GridKernalContext;->log(Ljava/lang/Class;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 132
    if-lez p4, :cond_4

    move v0, p4

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->maxLocCacheSize:I

    .line 134
    new-instance v0, Ljava/util/LinkedHashMap;

    iget v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->maxLocCacheSize:I

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->locCache:Ljava/util/Map;

    .line 136
    new-instance v0, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;

    if-lez p4, :cond_5

    .end local p4    # "prefetchBlocks":I
    :goto_1
    invoke-direct {v0, p4}, Lorg/apache/ignite/internal/util/GridConcurrentHashSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFuts:Ljava/util/Set;

    .line 137
    return-void

    .restart local p4    # "prefetchBlocks":I
    :cond_4
    move v0, v1

    .line 132
    goto :goto_0

    :cond_5
    move p4, v1

    .line 136
    goto :goto_1
.end method

.method static synthetic access$000(Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFuts:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;

    .prologue
    .line 37
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsCond:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method private addLocalCacheFuture(JLorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 3
    .param p1, "idx"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p3, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<[B>;"
    sget-boolean v1, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 490
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->locCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 491
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->locCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->maxLocCacheSize:I

    if-ne v1, v2, :cond_1

    .line 492
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->locCache:Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->locCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 494
    .local v0, "evictFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<[B>;"
    invoke-interface {v0}, Lorg/apache/ignite/internal/IgniteInternalFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 495
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFuts:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 497
    new-instance v1, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl$1;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->listen(Lorg/apache/ignite/lang/IgniteInClosure;)V

    .line 514
    .end local v0    # "evictFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<[B>;"
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->locCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    :cond_2
    return-void
.end method

.method private block(J)[B
    .locals 11
    .param p1, "blockIdx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 430
    sget-boolean v4, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 432
    :cond_0
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->locCache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .line 434
    .local v2, "bytesFut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<[B>;"
    if-nez v2, :cond_4

    .line 435
    iget-boolean v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->closed:Z

    if-eqz v4, :cond_1

    .line 436
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stream is already closed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 438
    :cond_1
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->prevBlockIdx:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->prevBlockIdx:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    iget v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->seqReads:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->seqReads:I

    :goto_0
    iput v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->seqReads:I

    .line 440
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->prevBlockIdx:J

    .line 442
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {p0, v4, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->dataBlock(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v2

    .line 444
    sget-boolean v4, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->$assertionsDisabled:Z

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 438
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 446
    :cond_3
    invoke-direct {p0, p1, p2, v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->addLocalCacheFuture(JLorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 450
    :cond_4
    iget v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->prefetchBlocks:I

    if-lez v4, :cond_5

    iget v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->seqReads:I

    iget v5, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->seqReadsBeforePrefetch:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_5

    .line 451
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->prefetchBlocks:I

    if-gt v3, v4, :cond_5

    .line 453
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v4

    int-to-long v4, v4

    int-to-long v6, v3

    add-long/2addr v6, p1

    mul-long/2addr v4, v6

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    .line 460
    .end local v3    # "i":I
    :cond_5
    invoke-interface {v2}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 462
    .local v1, "bytes":[B
    if-nez v1, :cond_8

    .line 463
    new-instance v4, Lorg/apache/ignite/igfs/IgfsCorruptedFileException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to retrieve file\'s data block (corrupted file?) [path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", blockIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/ignite/igfs/IgfsCorruptedFileException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 455
    .end local v1    # "bytes":[B
    .restart local v3    # "i":I
    :cond_6
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->locCache:Ljava/util/Map;

    int-to-long v6, v3

    add-long/2addr v6, p1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_7

    .line 456
    int-to-long v4, v3

    add-long/2addr v4, p1

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    int-to-long v8, v3

    add-long/2addr v8, p1

    invoke-virtual {p0, v6, v8, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->dataBlock(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->addLocalCacheFuture(JLorg/apache/ignite/internal/IgniteInternalFuture;)V

    .line 451
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 466
    .end local v3    # "i":I
    .restart local v1    # "bytes":[B
    :cond_8
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v0

    .line 468
    .local v0, "blockSize":I
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blocksCount()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    cmp-long v4, p1, v4

    if-nez v4, :cond_9

    .line 469
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v4

    int-to-long v6, v0

    rem-long/2addr v4, v6

    long-to-int v0, v4

    .line 472
    :cond_9
    array-length v4, v1

    if-ge v4, v0, :cond_a

    .line 473
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistent file\'s data block (incorrectly written?) [path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", blockIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", blockSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", expectedBlockSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fileBlockSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", fileLen="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 478
    :cond_a
    return-object v1
.end method

.method private blockFragmentizerSafe(J)[B
    .locals 5
    .param p1, "blockIdx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 387
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->block(J)[B
    :try_end_0
    .catch Lorg/apache/ignite/igfs/IgfsCorruptedFileException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 412
    :goto_0
    return-object v2

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Lorg/apache/ignite/igfs/IgfsCorruptedFileException;
    :try_start_1
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to fetch file block [path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fileInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", blockIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", errMsg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsCorruptedFileException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 395
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->ranges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 396
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->info(Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v1

    .line 399
    .local v1, "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    if-nez v1, :cond_1

    .line 400
    new-instance v2, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to read file block (file was concurrently deleted) [path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", blockIdx="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/ignite/igfs/IgfsPathNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 418
    .end local v0    # "e":Lorg/apache/ignite/igfs/IgfsCorruptedFileException;
    .end local v1    # "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :catch_1
    move-exception v0

    .line 419
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 403
    .local v0, "e":Lorg/apache/ignite/igfs/IgfsCorruptedFileException;
    .restart local v1    # "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_1
    :try_start_2
    iput-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .line 406
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->locCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 408
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v2}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 409
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated input stream file info after block fetch failure [path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fileInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 412
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->block(J)[B

    move-result-object v2

    goto/16 :goto_0

    .line 415
    .end local v1    # "newInfo":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    :cond_3
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/ignite/igfs/IgfsCorruptedFileException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method private readFromStore(J[BII)I
    .locals 15
    .param p1, "pos"    # J
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x0

    .line 335
    cmp-long v10, p1, v12

    if-gez v10, :cond_0

    .line 336
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Read position cannot be negative: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, p1

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 338
    :cond_0
    if-nez p3, :cond_1

    .line 339
    new-instance v10, Ljava/lang/NullPointerException;

    const-string v11, "Destination buffer cannot be null."

    invoke-direct {v10, v11}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 341
    :cond_1
    if-ltz p4, :cond_2

    if-ltz p5, :cond_2

    move-object/from16 v0, p3

    array-length v10, v0

    add-int v11, p5, p4

    if-ge v10, v11, :cond_3

    .line 342
    :cond_2
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid buffer boundaries [buf.length="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    array-length v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", off="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", len="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p5

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x5d

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 345
    :cond_3
    if-nez p5, :cond_4

    .line 346
    const/4 v10, 0x0

    .line 373
    :goto_0
    return v10

    .line 349
    :cond_4
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v10

    sub-long v6, v10, p1

    .line 351
    .local v6, "readable":J
    cmp-long v10, v6, v12

    if-gtz v10, :cond_5

    .line 352
    const/4 v10, -0x1

    goto :goto_0

    .line 354
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 356
    .local v8, "startTime":J
    move/from16 v0, p5

    int-to-long v10, v0

    cmp-long v10, v6, v10

    if-gez v10, :cond_6

    .line 357
    long-to-int v0, v6

    move/from16 p5, v0

    .line 359
    :cond_6
    sget-boolean v10, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->$assertionsDisabled:Z

    if-nez v10, :cond_7

    if-gtz p5, :cond_7

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 361
    :cond_7
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v10

    int-to-long v10, v10

    div-long v10, p1, v10

    invoke-direct {p0, v10, v11}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->blockFragmentizerSafe(J)[B

    move-result-object v4

    .line 364
    .local v4, "block":[B
    iget-object v10, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v10}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v10

    int-to-long v10, v10

    rem-long v10, p1, v10

    long-to-int v5, v10

    .line 366
    .local v5, "blockOff":I
    array-length v10, v4

    sub-int/2addr v10, v5

    move/from16 v0, p5

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 368
    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v4, v5, v0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/U;->arrayCopy([BI[BII)I

    .line 370
    iget-wide v10, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->bytes:J

    move/from16 v0, p5

    int-to-long v12, v0

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->bytes:J

    .line 371
    iget-wide v10, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->time:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    add-long/2addr v10, v12

    iput-wide v10, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->time:J

    move/from16 v10, p5

    .line 373
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v0, v2, v4

    .line 193
    .local v0, "l":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 194
    const/4 v2, 0x0

    .line 199
    :goto_0
    monitor-exit p0

    return v2

    .line 196
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 197
    const v2, 0x7fffffff

    goto :goto_0

    .line 199
    :cond_1
    long-to-int v2, v0

    goto :goto_0

    .line 191
    .end local v0    # "l":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized bytes()J
    .locals 2

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->bytes:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->secReader:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

    if-eqz v3, :cond_2

    .line 282
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->secReader:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

    invoke-interface {v3}, Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;->close()V

    .line 285
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->locCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    .local v1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<[B>;"
    :try_start_1
    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v3

    goto :goto_0

    .line 295
    .end local v1    # "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<[B>;"
    :cond_0
    :goto_1
    :try_start_2
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFuts:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 296
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 299
    :try_start_3
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsCond:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 305
    :try_start_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_4
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 314
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 315
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    :try_start_5
    new-instance v3, Ljava/io/IOError;

    invoke-direct {v3, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 318
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    :catchall_0
    move-exception v3

    const/4 v4, 0x1

    :try_start_6
    iput-boolean v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->closed:Z

    .line 320
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->bytes:J

    iget-wide v8, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->time:J

    invoke-virtual {v4, v6, v7, v8, v9}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->addReadBytesTime(JJ)V

    .line 322
    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->locCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 280
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 301
    .restart local v2    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v3

    .line 305
    :try_start_7
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_2
    move-exception v3

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pendingFutsLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    .line 310
    :cond_1
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->meta:Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->id()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsMetaManager;->exists(Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 311
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->delete(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/IgniteInternalFuture;
    :try_end_7
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 318
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v3, 0x1

    :try_start_8
    iput-boolean v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->closed:Z

    .line 320
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->metrics:Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->bytes:J

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->time:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/ignite/internal/processors/igfs/IgfsLocalMetrics;->addReadBytesTime(JJ)V

    .line 322
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->locCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 324
    monitor-exit p0

    return-void
.end method

.method protected dataBlock(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)Lorg/apache/ignite/internal/IgniteInternalFuture;
    .locals 8
    .param p1, "fileInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .param p2, "blockIdx"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
            "J)",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<[B>;"
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
    .line 527
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->data:Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->path:Lorg/apache/ignite/igfs/IgfsPath;

    iget-object v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->secReader:Lorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsDataManager;->dataBlock(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;Lorg/apache/ignite/igfs/IgfsPath;JLorg/apache/ignite/igfs/secondary/IgfsSecondaryFileSystemPositionedReadable;)Lorg/apache/ignite/internal/IgniteInternalFuture;

    move-result-object v0

    return-object v0
.end method

.method public fileInfo()Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    return-object v0
.end method

.method public declared-synchronized position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 155
    monitor-enter p0

    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [B

    .line 157
    .local v0, "buf":[B
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->read([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 159
    .local v1, "read":I
    if-ne v1, v2, :cond_0

    .line 162
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    :try_start_1
    aget-byte v2, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v2, v2, 0xff

    goto :goto_0

    .line 155
    .end local v0    # "buf":[B
    .end local v1    # "read":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized read(J[BII)I
    .locals 1
    .param p1, "pos"    # J
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->readFromStore(J[BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read([BII)I
    .locals 7
    .param p1, "b"    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pos:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->readFromStore(J[BII)I

    move-result v0

    .line 169
    .local v0, "read":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 170
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pos:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :cond_0
    monitor-exit p0

    return v0

    .line 167
    .end local v0    # "read":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readChunks(JI)[[B
    .locals 19
    .param p1, "pos"    # J
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v14

    sub-long v10, v14, p1

    .line 231
    .local v10, "readable":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-gtz v14, :cond_0

    .line 232
    sget-object v6, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->EMPTY_CHUNKS:[[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :goto_0
    monitor-exit p0

    return-object v6

    .line 234
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 236
    .local v12, "startTime":J
    move/from16 v0, p3

    int-to-long v14, v0

    cmp-long v14, v10, v14

    if-gez v14, :cond_1

    .line 237
    long-to-int v0, v10

    move/from16 p3, v0

    .line 239
    :cond_1
    sget-boolean v14, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->$assertionsDisabled:Z

    if-nez v14, :cond_2

    if-gtz p3, :cond_2

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    .end local v10    # "readable":J
    .end local v12    # "startTime":J
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 241
    .restart local v10    # "readable":J
    .restart local v12    # "startTime":J
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->bytes:J

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->bytes:J

    .line 243
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v14

    int-to-long v14, v14

    div-long v14, p1, v14

    long-to-int v9, v14

    .line 244
    .local v9, "start":I
    move/from16 v0, p3

    int-to-long v14, v0

    add-long v14, v14, p1

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    div-long v14, v14, v16

    long-to-int v7, v14

    .line 246
    .local v7, "end":I
    sub-int v14, v7, v9

    add-int/lit8 v5, v14, 0x1

    .line 248
    .local v5, "chunkCnt":I
    new-array v6, v5, [[B

    .line 250
    .local v6, "chunks":[[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v5, :cond_5

    .line 251
    add-int v14, v9, v8

    int-to-long v14, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->blockFragmentizerSafe(J)[B

    move-result-object v2

    .line 253
    .local v2, "block":[B
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->fileInfo:Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {v14}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->blockSize()I

    move-result v14

    int-to-long v14, v14

    rem-long v14, p1, v14

    long-to-int v4, v14

    .line 254
    .local v4, "blockOff":I
    array-length v14, v2

    sub-int/2addr v14, v4

    move/from16 v0, p3

    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 257
    .local v3, "blockLen":I
    array-length v14, v2

    if-ne v3, v14, :cond_3

    .line 258
    aput-object v2, v6, v8

    .line 266
    :goto_2
    sub-int p3, p3, v3

    .line 267
    int-to-long v14, v3

    add-long p1, p1, v14

    .line 250
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 261
    :cond_3
    sget-boolean v14, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->$assertionsDisabled:Z

    if-nez v14, :cond_4

    if-eqz v8, :cond_4

    add-int/lit8 v14, v5, -0x1

    if-eq v8, v14, :cond_4

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 263
    :cond_4
    add-int v14, v4, v3

    invoke-static {v2, v4, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    aput-object v14, v6, v8

    goto :goto_2

    .line 270
    .end local v2    # "block":[B
    .end local v3    # "blockLen":I
    .end local v4    # "blockOff":I
    :cond_5
    sget-boolean v14, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->$assertionsDisabled:Z

    if-nez v14, :cond_6

    if-eqz p3, :cond_6

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 272
    :cond_6
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->time:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    sub-long v16, v16, v12

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->time:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized readFully(J[B)V
    .locals 7
    .param p1, "pos"    # J
    .param p3, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    array-length v6, p3

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->readFully(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readFully(J[BII)V
    .locals 9
    .param p1, "pos"    # J
    .param p3, "buf"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    monitor-enter p0

    const/4 v7, 0x0

    .local v7, "readBytes":I
    :goto_0
    if-ge v7, p5, :cond_1

    .line 210
    int-to-long v2, v7

    add-long/2addr v2, p1

    add-int v5, p4, v7

    sub-int v6, p5, v7

    move-object v1, p0

    move-object v4, p3

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->readFromStore(J[BII)I

    move-result v0

    .line 212
    .local v0, "read":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 213
    new-instance v1, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read stream fully (stream ends unexpectedly)[pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", buf.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", off="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .end local v0    # "read":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 216
    .restart local v0    # "read":I
    :cond_0
    add-int/2addr v7, v0

    .line 217
    goto :goto_0

    .line 218
    .end local v0    # "read":I
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized seek(J)V
    .locals 3
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 178
    :try_start_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seek position cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    :cond_0
    :try_start_1
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;->pos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    monitor-exit p0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
