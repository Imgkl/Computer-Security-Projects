.class Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;
.super Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;
.source "GridSelectorNioSessionImpl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private key:Ljava/nio/channels/SelectionKey;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final log:Lorg/apache/ignite/IgniteLogger;

.field private final queue:Lorg/jsr166/ConcurrentLinkedDeque8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jsr166/ConcurrentLinkedDeque8",
            "<",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final queueSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private readBuf:Ljava/nio/ByteBuffer;

.field private recovery:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

.field private final selectorIdx:I

.field private final sem:Ljava/util/concurrent/Semaphore;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private writeBuf:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/apache/ignite/IgniteLogger;ILorg/apache/ignite/internal/util/nio/GridNioFilterChain;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ZILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .param p2, "selectorIdx"    # I
    .param p3, "filterChain"    # Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;
    .param p4, "locAddr"    # Ljava/net/InetSocketAddress;
    .param p5, "rmtAddr"    # Ljava/net/InetSocketAddress;
    .param p6, "accepted"    # Z
    .param p7, "sndQueueLimit"    # I
    .param p8, "writeBuf"    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9, "readBuf"    # Ljava/nio/ByteBuffer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 92
    invoke-direct {p0, p3, p4, p5, p6}, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioFilterChain;Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Z)V

    .line 40
    new-instance v0, Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-direct {v0}, Lorg/jsr166/ConcurrentLinkedDeque8;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 95
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-gez p7, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 97
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "GridSelectorNioSessionImpl should have local socket address."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 98
    :cond_2
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_3

    if-nez p5, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "GridSelectorNioSessionImpl should have remote socket address."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 100
    :cond_3
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    if-nez p1, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 102
    :cond_4
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->log:Lorg/apache/ignite/IgniteLogger;

    .line 104
    iput p2, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->selectorIdx:I

    .line 106
    if-lez p7, :cond_7

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, p7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->sem:Ljava/util/concurrent/Semaphore;

    .line 108
    if-eqz p8, :cond_5

    .line 109
    invoke-virtual {p8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 111
    iput-object p8, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->writeBuf:Ljava/nio/ByteBuffer;

    .line 114
    :cond_5
    if-eqz p9, :cond_6

    .line 115
    invoke-virtual {p9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 117
    iput-object p9, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->readBuf:Ljava/nio/ByteBuffer;

    .line 119
    :cond_6
    return-void

    .line 106
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addMeta(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 281
    .local p2, "val":Ljava/lang/Object;, "TT;"
    instance-of v0, p2, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    if-eqz v0, :cond_1

    .line 282
    check-cast p2, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .end local p2    # "val":Ljava/lang/Object;, "TT;"
    iput-object p2, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->recovery:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .line 284
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->accepted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->recovery:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->connected()V

    .line 287
    :cond_0
    const/4 v0, 0x0

    .line 290
    :goto_0
    return-object v0

    .restart local p2    # "val":Ljava/lang/Object;, "TT;"
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->addMeta(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method key()Ljava/nio/channels/SelectionKey;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->key:Ljava/nio/channels/SelectionKey;

    return-object v0
.end method

.method key(Ljava/nio/channels/SelectionKey;)V
    .locals 1
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 127
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->key:Ljava/nio/channels/SelectionKey;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 129
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->key:Ljava/nio/channels/SelectionKey;

    .line 130
    return-void
.end method

.method offerFuture(Lorg/apache/ignite/internal/util/nio/GridNioFuture;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "writeFut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    invoke-static {}, Lorg/apache/ignite/internal/util/nio/GridNioBackPressureControl;->threadProcessingMessage()Z

    move-result v0

    .line 189
    .local v0, "msgThread":Z
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->sem:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 190
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquireUninterruptibly()V

    .line 192
    :cond_0
    invoke-interface {p1, v0}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->messageThread(Z)V

    .line 194
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->offer(Ljava/lang/Object;)Z

    move-result v1

    .line 196
    .local v1, "res":Z
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Future was not added to queue"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 198
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    return v2
.end method

.method offerSystemFuture(Lorg/apache/ignite/internal/util/nio/GridNioFuture;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "writeFut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->messageThread(Z)V

    .line 169
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v1, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    .local v0, "res":Z
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Future was not added to queue"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 173
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    return v1
.end method

.method pollFuture()Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    const/16 v5, 0x5d

    .line 220
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v1}, Lorg/jsr166/ConcurrentLinkedDeque8;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 222
    .local v0, "last":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    if-eqz v0, :cond_2

    .line 223
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 225
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->sem:Ljava/util/concurrent/Semaphore;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->messageThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->sem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 228
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->recovery:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->recovery:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    invoke-virtual {v1, v0}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->add(Lorg/apache/ignite/internal/util/nio/GridNioFuture;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 230
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->log:Lorg/apache/ignite/IgniteLogger;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unacknowledged messages queue size overflow, will attempt to reconnect [remoteAddr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", queueLimit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->recovery:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    invoke-virtual {v4}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->queueLimit()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/apache/ignite/internal/util/typedef/internal/LT;->warn(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unacknowledged messages queue size overflow, will attempt to reconnect [remoteAddr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->remoteAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", queueSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->recovery:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->messagesFutures()Ljava/util/Deque;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Deque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", queueLimit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->recovery:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    invoke-virtual {v3}, Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;->queueLimit()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 240
    :cond_1
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->close()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 245
    :cond_2
    return-object v0
.end method

.method public readBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->readBuf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public recoveryDescriptor()Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->recovery:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    return-object v0
.end method

.method public recoveryDescriptor(Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;)V
    .locals 1
    .param p1, "recoveryDesc"    # Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .prologue
    .line 269
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 271
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->recovery:Lorg/apache/ignite/internal/util/nio/GridNioRecoveryDescriptor;

    .line 272
    return-void
.end method

.method removeFuture(Lorg/apache/ignite/internal/util/nio/GridNioFuture;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "fut":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    sget-boolean v0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->closed()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v0, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method resend(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/util/nio/GridNioFuture",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "futs":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;>;"
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2}, Lorg/jsr166/ConcurrentLinkedDeque8;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v3}, Lorg/jsr166/ConcurrentLinkedDeque8;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 207
    :cond_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queue:Lorg/jsr166/ConcurrentLinkedDeque8;

    invoke-virtual {v2, p1}, Lorg/jsr166/ConcurrentLinkedDeque8;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 209
    .local v0, "add":Z
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 211
    :cond_1
    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    .line 213
    .local v1, "set":Z
    sget-boolean v2, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 214
    :cond_2
    return-void
.end method

.method selectorIndex()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->selectorIdx:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 295
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;

    invoke-super {p0}, Lorg/apache/ignite/internal/util/nio/GridNioSessionImpl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->writeBuf:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method writeQueueSize()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridSelectorNioSessionImpl;->queueSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
