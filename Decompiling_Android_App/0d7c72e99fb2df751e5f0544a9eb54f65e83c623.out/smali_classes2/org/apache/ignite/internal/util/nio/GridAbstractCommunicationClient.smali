.class public abstract Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;
.super Ljava/lang/Object;
.source "GridAbstractCommunicationClient.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/nio/GridCommunicationClient;


# instance fields
.field private volatile lastUsed:J

.field protected final metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

.field private final reserves:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;)V
    .locals 2
    .param p1, "metricsLsnr"    # Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->lastUsed:J

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->reserves:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 42
    iput-object p1, p0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->metricsLsnr:Lorg/apache/ignite/internal/util/nio/GridNioMetricsListener;

    .line 43
    return-void
.end method


# virtual methods
.method public async()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public close()Z
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->reserves:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    return v0
.end method

.method public closed()Z
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->reserves:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forceClose()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->reserves:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 53
    return-void
.end method

.method public getIdleTime()J
    .locals 4

    .prologue
    .line 93
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->lastUsed:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected markUsed()V
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->lastUsed:J

    .line 101
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 76
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->reserves:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 78
    .local v0, "r":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->reserves:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public reserve()Z
    .locals 3

    .prologue
    .line 63
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->reserves:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 65
    .local v0, "r":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 66
    const/4 v1, 0x0

    .line 69
    :goto_0
    return v1

    .line 68
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->reserves:Ljava/util/concurrent/atomic/AtomicInteger;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public reserved()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;->reserves:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const-class v0, Lorg/apache/ignite/internal/util/nio/GridAbstractCommunicationClient;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
