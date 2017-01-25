.class public Lorg/apache/ignite/internal/GridKernalGatewayImpl;
.super Ljava/lang/Object;
.source "GridKernalGatewayImpl.java"

# interfaces
.implements Lorg/apache/ignite/internal/GridKernalGateway;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final gridName:Ljava/lang/String;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final lsnrs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private final rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private stackTrace:Ljava/lang/String;

.field private volatile state:Lorg/apache/ignite/internal/GridKernalState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "gridName"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    .line 41
    new-instance v0, Lorg/apache/ignite/internal/util/GridSetWrapper;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridSetWrapper;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->lsnrs:Ljava/util/Collection;

    .line 45
    sget-object v0, Lorg/apache/ignite/internal/GridKernalState;->STOPPED:Lorg/apache/ignite/internal/GridKernalState;

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->state:Lorg/apache/ignite/internal/GridKernalState;

    .line 62
    iput-object p1, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->gridName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private illegalState()Ljava/lang/IllegalStateException;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Grid is in invalid state to perform this operation. It either not started yet or has already being or have stopped [gridName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->gridName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->state:Lorg/apache/ignite/internal/GridKernalState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static stackTrace()Ljava/lang/String;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 148
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 150
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public addStopListener(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "lsnr"    # Ljava/lang/Runnable;

    .prologue
    .line 196
    sget-boolean v0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->state:Lorg/apache/ignite/internal/GridKernalState;

    sget-object v1, Lorg/apache/ignite/internal/GridKernalState;->STARTING:Lorg/apache/ignite/internal/GridKernalState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->state:Lorg/apache/ignite/internal/GridKernalState;

    sget-object v1, Lorg/apache/ignite/internal/GridKernalState;->STARTED:Lorg/apache/ignite/internal/GridKernalState;

    if-ne v0, v1, :cond_2

    .line 199
    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->lsnrs:Ljava/util/Collection;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->lsnrs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 201
    monitor-exit v1

    .line 205
    :goto_0
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 204
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public getState()Lorg/apache/ignite/internal/GridKernalState;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->state:Lorg/apache/ignite/internal/GridKernalState;

    return-object v0
.end method

.method public lightCheck()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->state:Lorg/apache/ignite/internal/GridKernalState;

    sget-object v1, Lorg/apache/ignite/internal/GridKernalState;->STARTED:Lorg/apache/ignite/internal/GridKernalState;

    if-eq v0, v1, :cond_0

    .line 68
    invoke-direct {p0}, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->illegalState()Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    .line 69
    :cond_0
    return-void
.end method

.method public readLock()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->stackTrace:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->stackTrace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->stackTrace:Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 79
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->state:Lorg/apache/ignite/internal/GridKernalState;

    sget-object v1, Lorg/apache/ignite/internal/GridKernalState;->STARTED:Lorg/apache/ignite/internal/GridKernalState;

    if-eq v0, v1, :cond_1

    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 83
    invoke-direct {p0}, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->illegalState()Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    .line 85
    :cond_1
    return-void
.end method

.method public readLockAnyway()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->stackTrace:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->stackTrace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->stackTrace:Ljava/lang/String;

    .line 92
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 93
    return-void
.end method

.method public readUnlock()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 98
    return-void
.end method

.method public removeStopListener(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "lsnr"    # Ljava/lang/Runnable;

    .prologue
    .line 209
    sget-boolean v0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 211
    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->lsnrs:Ljava/util/Collection;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->lsnrs:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 213
    monitor-exit v1

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setState(Lorg/apache/ignite/internal/GridKernalState;)V
    .locals 8
    .param p1, "state"    # Lorg/apache/ignite/internal/GridKernalState;

    .prologue
    .line 171
    sget-boolean v5, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 174
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->state:Lorg/apache/ignite/internal/GridKernalState;

    .line 176
    sget-object v5, Lorg/apache/ignite/internal/GridKernalState;->STOPPING:Lorg/apache/ignite/internal/GridKernalState;

    if-ne p1, v5, :cond_1

    .line 179
    iget-object v6, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->lsnrs:Ljava/util/Collection;

    monitor-enter v6

    .line 180
    :try_start_0
    iget-object v5, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->lsnrs:Ljava/util/Collection;

    iget-object v7, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->lsnrs:Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v4, v7, [Ljava/lang/Runnable;

    .local v4, "runs":[Ljava/lang/Runnable;
    invoke-interface {v5, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 181
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/Runnable;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 185
    .local v3, "r":Ljava/lang/Runnable;
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "arr$":[Ljava/lang/Runnable;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "r":Ljava/lang/Runnable;
    .end local v4    # "runs":[Ljava/lang/Runnable;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 187
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-class v0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryWriteLock(J)Z
    .locals 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2, v2}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->tryWriteLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    .line 130
    .local v0, "acquired":Z
    if-eqz v0, :cond_1

    .line 131
    iget-object v1, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->stackTrace:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 132
    invoke-static {}, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->stackTrace()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->stackTrace:Ljava/lang/String;

    .line 134
    :cond_0
    const/4 v1, 0x1

    .line 137
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userStackTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public writeLock()V
    .locals 6

    .prologue
    .line 103
    iget-object v2, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->stackTrace:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 104
    invoke-static {}, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->stackTrace()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->stackTrace:Ljava/lang/String;

    .line 106
    :cond_0
    const/4 v1, 0x0

    .line 111
    .local v1, "interrupted":Z
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    const-wide/16 v4, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->tryWriteLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    if-eqz v1, :cond_1

    .line 123
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 124
    :cond_1
    return-void

    .line 114
    :cond_2
    const-wide/16 v2, 0xc8

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 119
    .local v0, "ignore":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 120
    goto :goto_0
.end method

.method public writeUnlock()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lorg/apache/ignite/internal/GridKernalGatewayImpl;->rwLock:Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->writeUnlock()V

    .line 167
    return-void
.end method
