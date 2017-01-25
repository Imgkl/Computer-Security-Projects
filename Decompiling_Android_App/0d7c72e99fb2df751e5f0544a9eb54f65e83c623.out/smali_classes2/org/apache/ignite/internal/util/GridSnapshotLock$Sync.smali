.class Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "GridSnapshotLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridSnapshotLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<X:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private e:Ljava/lang/RuntimeException;

.field private x:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TX;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lorg/apache/ignite/internal/util/GridSnapshotLock;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 109
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->setState(I)V

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/GridSnapshotLock$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/GridSnapshotLock$1;

    .prologue
    .line 96
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;-><init>()V

    return-void
.end method


# virtual methods
.method public awaitResult()V
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->acquireShared(I)V

    .line 131
    return-void
.end method

.method public flip()Z
    .locals 4

    .prologue
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->getState()I

    move-result v0

    .line 194
    .local v0, "curr":I
    if-gtz v0, :cond_1

    .line 198
    :goto_0
    return v2

    .line 197
    :cond_1
    neg-int v3, v0

    invoke-virtual {p0, v0, v3}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    if-ne v0, v1, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TX;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->awaitResult()V

    .line 120
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->e:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->e:Ljava/lang/RuntimeException;

    throw v0

    .line 123
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->x:Ljava/lang/Object;

    return-object v0
.end method

.method public releaseAfterUpdate()Z
    .locals 3

    .prologue
    .line 172
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->getState()I

    move-result v0

    .line 174
    .local v0, "curr":I
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 176
    :cond_1
    if-gez v0, :cond_2

    add-int/lit8 v1, v0, 0x1

    .line 178
    .local v1, "next":I
    :goto_0
    sget-boolean v2, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->$assertionsDisabled:Z

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 176
    .end local v1    # "next":I
    :cond_2
    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    .line 180
    .restart local v1    # "next":I
    :cond_3
    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->compareAndSetState(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/RuntimeException;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "e"    # Ljava/lang/RuntimeException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;",
            "Ljava/lang/RuntimeException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    .local p1, "x":Ljava/lang/Object;, "TX;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->x:Ljava/lang/Object;

    .line 141
    iput-object p2, p0, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->e:Ljava/lang/RuntimeException;

    .line 143
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->compareAndSetState(II)Z

    move-result v0

    .line 145
    .local v0, "res":Z
    sget-boolean v1, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 146
    :cond_0
    return-void
.end method

.method public signalAll()V
    .locals 1

    .prologue
    .line 206
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->releaseShared(I)Z

    .line 207
    return-void
.end method

.method public tryAcquireForUpdate()Z
    .locals 2

    .prologue
    .line 155
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->getState()I

    move-result v0

    .line 157
    .local v0, "curr":I
    if-gtz v0, :cond_1

    .line 158
    const/4 v1, 0x0

    .line 161
    :goto_0
    return v1

    .line 160
    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->compareAndSetState(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected final tryAcquireShared(I)I
    .locals 1
    .param p1, "ignored"    # I

    .prologue
    .line 211
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected final tryReleaseShared(I)Z
    .locals 1
    .param p1, "ignored"    # I

    .prologue
    .line 216
    .local p0, "this":Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync;, "Lorg/apache/ignite/internal/util/GridSnapshotLock$Sync<TX;>;"
    const/4 v0, 0x1

    return v0
.end method
