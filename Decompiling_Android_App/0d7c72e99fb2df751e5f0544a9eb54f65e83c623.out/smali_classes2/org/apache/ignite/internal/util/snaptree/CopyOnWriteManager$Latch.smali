.class Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "CopyOnWriteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Latch"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;Z)V
    .locals 1
    .param p2, "triggered"    # Z

    .prologue
    .line 62
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.Latch;"
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;->this$0:Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager;

    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 63
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;->setState(I)V

    .line 64
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public tryAcquireShared(I)I
    .locals 1
    .param p1, "acquires"    # I

    .prologue
    .line 69
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.Latch;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public tryReleaseShared(I)Z
    .locals 2
    .param p1, "releases"    # I

    .prologue
    .line 74
    .local p0, "this":Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;, "Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager<TE;>.Latch;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/util/snaptree/CopyOnWriteManager$Latch;->compareAndSetState(II)Z

    move-result v0

    return v0
.end method
