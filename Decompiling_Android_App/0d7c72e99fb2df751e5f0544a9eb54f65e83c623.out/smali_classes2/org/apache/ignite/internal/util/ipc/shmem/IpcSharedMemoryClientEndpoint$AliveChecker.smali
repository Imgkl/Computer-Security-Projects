.class Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint$AliveChecker;
.super Ljava/lang/Object;
.source "IpcSharedMemoryClientEndpoint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AliveChecker"
.end annotation


# static fields
.field private static final CHECK_FREQ:J = 0x2710L


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint$AliveChecker;->this$0:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint$1;

    .prologue
    .line 315
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint$AliveChecker;-><init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 322
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint$AliveChecker;->this$0:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;->checkOtherPartyAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    :cond_1
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "ignored":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
