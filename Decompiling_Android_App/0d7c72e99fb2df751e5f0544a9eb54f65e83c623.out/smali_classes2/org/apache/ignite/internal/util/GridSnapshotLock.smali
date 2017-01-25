.class public abstract Lorg/apache/ignite/internal/util/GridSnapshotLock;
.super Ljava/lang/Object;
.source "GridSnapshotLock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ignite/internal/util/GridSnapshotLock$1;,
        Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile sync:Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync",
            "<TX;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock;, "Lorg/apache/ignite/internal/util/GridSnapshotLock<TX;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;-><init>(Lorg/apache/ignite/internal/util/GridSnapshotLock$1;)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/GridSnapshotLock;->sync:Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;

    .line 95
    return-void
.end method

.method private takeSnapshotAndReplaceSync(Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync",
            "<TX;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock;, "Lorg/apache/ignite/internal/util/GridSnapshotLock<TX;>;"
    .local p1, "sync0":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    const/4 v3, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridSnapshotLock;->doSnapshot()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->set(Ljava/lang/Object;Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    new-instance v1, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;

    invoke-direct {v1, v3}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;-><init>(Lorg/apache/ignite/internal/util/GridSnapshotLock$1;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridSnapshotLock;->sync:Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;

    .line 88
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->signalAll()V

    .line 90
    :goto_0
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p1, v1, v0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->set(Ljava/lang/Object;Ljava/lang/RuntimeException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    new-instance v1, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;

    invoke-direct {v1, v3}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;-><init>(Lorg/apache/ignite/internal/util/GridSnapshotLock$1;)V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/GridSnapshotLock;->sync:Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;

    .line 88
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->signalAll()V

    goto :goto_0

    .line 86
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    new-instance v2, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;

    invoke-direct {v2, v3}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;-><init>(Lorg/apache/ignite/internal/util/GridSnapshotLock$1;)V

    iput-object v2, p0, Lorg/apache/ignite/internal/util/GridSnapshotLock;->sync:Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;

    .line 88
    invoke-virtual {p1}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->signalAll()V

    throw v1
.end method


# virtual methods
.method public beginUpdate()V
    .locals 2

    .prologue
    .line 37
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock;, "Lorg/apache/ignite/internal/util/GridSnapshotLock<TX;>;"
    :goto_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSnapshotLock;->sync:Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;

    .local v0, "sync0":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->tryAcquireForUpdate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->awaitResult()V

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method protected abstract doSnapshot()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation
.end method

.method public endUpdate()V
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock;, "Lorg/apache/ignite/internal/util/GridSnapshotLock<TX;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSnapshotLock;->sync:Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;

    .line 54
    .local v0, "sync0":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->releaseAfterUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridSnapshotLock;->takeSnapshotAndReplaceSync(Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;)V

    .line 56
    :cond_0
    return-void
.end method

.method public snapshot()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock;, "Lorg/apache/ignite/internal/util/GridSnapshotLock<TX;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSnapshotLock;->sync:Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;

    .line 64
    .local v0, "sync0":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->flip()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridSnapshotLock;->takeSnapshotAndReplaceSync(Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;)V

    .line 67
    :cond_0
    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->get()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public tryBeginUpdate()Z
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock;, "Lorg/apache/ignite/internal/util/GridSnapshotLock<TX;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSnapshotLock;->sync:Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->tryAcquireForUpdate()Z

    move-result v0

    return v0
.end method
