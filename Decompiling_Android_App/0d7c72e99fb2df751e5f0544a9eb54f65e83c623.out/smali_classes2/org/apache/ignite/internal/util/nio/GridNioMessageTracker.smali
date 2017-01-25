.class public Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;
.super Ljava/lang/Object;
.source "GridNioMessageTracker.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteRunnable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private final msgCnt:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final msgQueueLimit:I

.field private volatile paused:Z

.field private final ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioSession;I)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/internal/util/nio/GridNioSession;
    .param p2, "msgQueueLimit"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->lock:Ljava/util/concurrent/locks/Lock;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->msgCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 53
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    .line 54
    iput p2, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->msgQueueLimit:I

    .line 55
    return-void
.end method


# virtual methods
.method public onMessageReceived()V
    .locals 3

    .prologue
    .line 81
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->msgCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 83
    .local v0, "cnt":I
    iget v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->msgQueueLimit:I

    if-lt v0, v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->paused:Z

    if-nez v1, :cond_2

    .line 84
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 88
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->paused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->msgCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->msgQueueLimit:I

    if-lt v1, v2, :cond_0

    .line 89
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->pauseReads()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 91
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 100
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->paused:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->msgCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->msgQueueLimit:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    :try_start_1
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->paused:Z

    if-eqz v1, :cond_1

    .line 105
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->resumeReads()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->paused:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 115
    :cond_2
    return-void

    .line 95
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    .line 111
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public run()V
    .locals 4

    .prologue
    .line 59
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->msgCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 61
    .local v0, "cnt":I
    sget-boolean v1, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-gez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 63
    :cond_0
    iget v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->msgQueueLimit:I

    if-ge v0, v1, :cond_2

    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->paused:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->paused:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->msgCnt:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->msgQueueLimit:I

    if-ge v1, v2, :cond_1

    .line 67
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->resumeReads()Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    :cond_2
    return-void

    .line 73
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridNioMessageTracker;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
