.class public Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;
.super Ljava/lang/Object;
.source "IpcSharedMemoryUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native alive(I)Z
.end method

.method static native allocateSystemResources(Ljava/lang/String;IZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method static native attach(IZ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method static native freeSystemResources(Ljava/lang/String;I)V
.end method

.method static native freeSystemResources(Ljava/lang/String;JZ)V
.end method

.method private static getPlatformDependentLineStartFlag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 235
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isMacOs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "m "

    .line 238
    :goto_0
    return-object v0

    .line 237
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isLinux()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    const-string v0, "0x"

    goto :goto_0

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This OS is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static native ipcClose(J)V
.end method

.method static linkError(Ljava/lang/UnsatisfiedLinkError;)Lorg/apache/ignite/IgniteCheckedException;
    .locals 2
    .param p0, "e"    # Ljava/lang/UnsatisfiedLinkError;

    .prologue
    .line 188
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Linkage error due to possible native library, libigniteshmem.so, version mismatch (stop all grid nodes, clean up your \'/tmp\' folder, and try again)."

    invoke-direct {v0, v1, p0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static pid()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 150
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getRuntimeMXBean()Ljava/lang/management/RuntimeMXBean;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/management/RuntimeMXBean;->getName()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "name":Ljava/lang/String;
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 155
    .local v0, "idx":I
    if-lez v0, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 158
    .end local v0    # "idx":I
    :cond_0
    :goto_0
    return v3

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "ignored":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method static native readSharedMemory(J[BJJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOperationTimedoutException;
        }
    .end annotation
.end method

.method static native readSharedMemoryByteBuffer(JLjava/nio/ByteBuffer;JJJ)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOperationTimedoutException;
        }
    .end annotation
.end method

.method static native semaphoreId(J)I
.end method

.method static native sharedMemoryId(J)I
.end method

.method static sharedMemoryIds()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isMacOs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/ignite/internal/util/typedef/internal/U;->isLinux()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->sharedMemoryIdsOnMacOS()Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 180
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Current OS is not supported."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static sharedMemoryIdsOnMacOS()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "ipcs -m"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 205
    .local v1, "proc":Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 207
    .local v2, "rdr":Ljava/io/BufferedReader;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v3, "ret":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 213
    invoke-static {}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryUtils;->getPlatformDependentLineStartFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 216
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 219
    .local v4, "toks":[Ljava/lang/String;
    const/4 v5, 0x1

    :try_start_1
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v5

    goto :goto_0

    .line 229
    .end local v4    # "toks":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    return-object v3

    .end local v0    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    throw v5
.end method

.method static native unreadCount(J)I
.end method

.method static native writeSharedMemory(J[BJJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOperationTimedoutException;
        }
    .end annotation
.end method

.method static native writeSharedMemoryByteBuffer(JLjava/nio/ByteBuffer;JJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;,
            Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryOperationTimedoutException;
        }
    .end annotation
.end method
