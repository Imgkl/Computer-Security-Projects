.class public Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;
.super Ljava/io/InputStream;
.source "IpcSharedMemoryInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private buf:[B

.field private final in:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;)V
    .locals 1
    .param p1, "in"    # Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;->buf:[B

    .line 39
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;->in:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    .line 42
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;->in:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->unreadCount()I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;->in:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->close()V

    .line 82
    return-void
.end method

.method public forceClose()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;->in:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->forceClose()V

    .line 93
    return-void
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;->in:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;->buf:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->read([BIIJ)I

    move-result v7

    .line 49
    .local v7, "read":I
    if-gez v7, :cond_0

    .line 52
    .end local v7    # "read":I
    :goto_0
    return v7

    .restart local v7    # "read":I
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;->buf:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v7, v0, 0xff

    goto :goto_0

    .line 54
    .end local v7    # "read":I
    :catch_0
    move-exception v6

    .line 55
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public read([BII)I
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
    .line 62
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;->in:Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;

    const-wide/16 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemorySpace;->read([BIIJ)I
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 64
    :catch_0
    move-exception v6

    .line 65
    .local v6, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-class v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInputStream;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
