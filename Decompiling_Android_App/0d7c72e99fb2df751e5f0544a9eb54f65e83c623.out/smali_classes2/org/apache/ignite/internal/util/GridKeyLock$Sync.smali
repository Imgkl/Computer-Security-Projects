.class Lorg/apache/ignite/internal/util/GridKeyLock$Sync;
.super Ljava/lang/Object;
.source "GridKeyLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridKeyLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sync"
.end annotation


# instance fields
.field private volatile finished:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/GridKeyLock$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/GridKeyLock$1;

    .prologue
    .line 128
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method await()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 136
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;->finished:Z

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 139
    :cond_0
    monitor-enter p0

    .line 140
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;->finished:Z

    if-nez v0, :cond_1

    .line 141
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized finish()V
    .locals 1

    .prologue
    .line 149
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/GridKeyLock$Sync;->finished:Z

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
