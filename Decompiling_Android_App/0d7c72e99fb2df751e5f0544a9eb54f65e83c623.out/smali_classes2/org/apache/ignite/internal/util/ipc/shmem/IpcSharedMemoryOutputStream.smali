.class public Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;
.super Ljava/io/OutputStream;
.source "IpcSharedMemoryOutputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final out:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;)V
    .locals 1
    .param p1, "out"    # Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 36
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;->out:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;->out:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->close()V

    .line 63
    return-void
.end method

.method public forceClose()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;->out:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-array v0, v3, [B

    .line 45
    .local v0, "buf":[B
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 47
    invoke-virtual {p0, v0, v2, v3}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;->write([BII)V

    .line 48
    return-void
.end method

.method public write([BII)V
    .locals 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOutputStream;->out:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    const-wide/16 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->write([BIIJ)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    return-void

    .line 55
    :catch_0
    move-exception v6

    .line 56
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
