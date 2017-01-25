.class public Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;
.super Ljava/lang/Object;
.source "IpcSharedMemorySpace.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isReader:Z

.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final opSize:I

.field private final readerPid:I

.field private final semId:I

.field private final shmemId:I

.field private final shmemPtr:J

.field private final tokFileName:Ljava/lang/String;

.field private final writerPid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    .line 36
    const-string v0, "IGNITE_IPC_SHMEM_SPACE_DEBUG"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->DEBUG:Z

    return-void

    .line 33
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;IIIZILorg/apache/ignite/IgniteLogger;)V
    .locals 2
    .param p1, "tokFileName"    # Ljava/lang/String;
    .param p2, "writerPid"    # I
    .param p3, "readerPid"    # I
    .param p4, "size"    # I
    .param p5, "reader"    # Z
    .param p6, "shmemId"    # I
    .param p7, "parent"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 119
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Size cannot be less than 1 byte"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 121
    :cond_0
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-interface {p7, v0}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->log:Lorg/apache/ignite/IgniteLogger;

    .line 123
    iput p4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->opSize:I

    .line 124
    iput-boolean p5, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->isReader:Z

    .line 125
    iput p6, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemId:I

    .line 126
    iput p2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->writerPid:I

    .line 127
    iput p3, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->readerPid:I

    .line 128
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->tokFileName:Ljava/lang/String;

    .line 130
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {p6, v0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->attach(IZ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemPtr:J

    .line 132
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemPtr:J

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->semaphoreId(J)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->semId:I

    .line 133
    return-void

    .line 130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;IIIZLorg/apache/ignite/IgniteLogger;)V
    .locals 3
    .param p1, "tokFileName"    # Ljava/lang/String;
    .param p2, "writerPid"    # I
    .param p3, "readerPid"    # I
    .param p4, "size"    # I
    .param p5, "reader"    # Z
    .param p6, "parent"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 84
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gtz p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Size cannot be less than 1 byte"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 86
    :cond_0
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-interface {p6, v0}, Lorg/apache/ignite/IgniteLogger;->getLogger(Ljava/lang/Object;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->log:Lorg/apache/ignite/IgniteLogger;

    .line 88
    iput p4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->opSize:I

    .line 90
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1, p4, v0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->allocateSystemResources(Ljava/lang/String;IZ)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemPtr:J

    .line 92
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemPtr:J

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->sharedMemoryId(J)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemId:I

    .line 93
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemPtr:J

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->semaphoreId(J)I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->semId:I

    .line 95
    iput-boolean p5, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->isReader:Z

    .line 97
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->tokFileName:Ljava/lang/String;

    .line 98
    iput p3, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->readerPid:I

    .line 99
    iput p2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->writerPid:I

    .line 101
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shared memory space has been created: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 103
    :cond_1
    return-void

    .line 90
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private close0(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    .line 291
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemPtr:J

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->ipcClose(J)V

    .line 297
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 300
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->tokFileName:Ljava/lang/String;

    iget-wide v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemPtr:J

    invoke-static {v0, v2, v3, p1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->freeSystemResources(Ljava/lang/String;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 306
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shared memory space has been closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->close0(Z)V

    .line 260
    return-void
.end method

.method public forceClose()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->close0(Z)V

    .line 271
    return-void
.end method

.method public otherPartyPid()I
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->isReader:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->writerPid:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->readerPid:I

    goto :goto_0
.end method

.method public read(Ljava/nio/ByteBuffer;IIJ)I
    .locals 10
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOperationTimedoutException;
        }
    .end annotation

    .prologue
    .line 239
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 240
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gtz p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 241
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 242
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->isReader:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 244
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 248
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shared memory segment has been closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 250
    :cond_4
    :try_start_1
    iget-wide v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemPtr:J

    int-to-long v4, p2

    int-to-long v6, p3

    move-object v3, p1

    move-wide v8, p4

    invoke-static/range {v1 .. v9}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->readSharedMemoryByteBuffer(JLjava/nio/ByteBuffer;JJJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    .line 253
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public read([BIIJ)I
    .locals 10
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOperationTimedoutException;
        }
    .end annotation

    .prologue
    .line 207
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 208
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gtz p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 209
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 211
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->isReader:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 213
    :cond_3
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 216
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shared memory segment has been closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 219
    :cond_4
    :try_start_1
    iget-wide v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemPtr:J

    int-to-long v4, p2

    int-to-long v6, p3

    move-object v3, p1

    move-wide v8, p4

    invoke-static/range {v1 .. v9}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->readSharedMemory(J[BJJJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    .line 222
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public readerPid()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->readerPid:I

    return v0
.end method

.method public semaphoreId()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->semId:I

    return v0
.end method

.method public sharedMemPointer()J
    .locals 2

    .prologue
    .line 332
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemPtr:J

    return-wide v0
.end method

.method public sharedMemoryId()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemId:I

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->opSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 372
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    const-string v1, "closed"

    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tokenFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->tokFileName:Ljava/lang/String;

    return-object v0
.end method

.method public unreadCount()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 318
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shared memory segment has been closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 321
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemPtr:J

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->unreadCount(J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 324
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)V
    .locals 10
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOperationTimedoutException;
        }
    .end annotation

    .prologue
    .line 175
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 176
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gtz p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 178
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 179
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->isReader:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 181
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 184
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 185
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shared memory segment has been closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 187
    :cond_5
    :try_start_1
    iget-wide v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemPtr:J

    int-to-long v4, p2

    int-to-long v6, p3

    move-object v3, p1

    move-wide v8, p4

    invoke-static/range {v1 .. v9}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->writeSharedMemoryByteBuffer(JLjava/nio/ByteBuffer;JJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 192
    return-void
.end method

.method public write([BIIJ)V
    .locals 10
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOperationTimedoutException;
        }
    .end annotation

    .prologue
    .line 145
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 146
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gtz p3, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 147
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 150
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->isReader:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_4
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shared memory segment has been closed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 158
    :cond_5
    :try_start_1
    iget-wide v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->shmemPtr:J

    int-to-long v4, p2

    int-to-long v6, p3

    move-object v3, p1

    move-wide v8, p4

    invoke-static/range {v1 .. v9}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->writeSharedMemory(J[BJJJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 163
    return-void
.end method

.method public writerPid()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->writerPid:I

    return v0
.end method
