.class public Lorg/apache/ignite/internal/util/ipc/IpcEndpointFactory;
.super Ljava/lang/Object;
.source "IpcEndpointFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static connectEndpoint(Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;
    .locals 7
    .param p0, "endpointAddr"    # Ljava/lang/String;
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2904

    const/4 v6, 0x0

    .line 38
    const-string v4, "endpointAddr"

    invoke-static {p0, v4}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "split":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 46
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 56
    .local v1, "port":I
    :goto_0
    const-string v4, "shmem"

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-lez v1, :cond_1

    .end local v1    # "port":I
    :goto_1
    invoke-static {v1, p1}, Lorg/apache/ignite/internal/util/ipc/IpcEndpointFactory;->connectSharedMemoryEndpoint(ILorg/apache/ignite/IgniteLogger;)Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    move-result-object v3

    :goto_2
    return-object v3

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse port number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 54
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "port":I
    goto :goto_0

    :cond_1
    move v1, v3

    .line 56
    goto :goto_1

    :cond_2
    aget-object v4, v2, v6

    if-lez v1, :cond_3

    .end local v1    # "port":I
    :goto_3
    invoke-static {v4, v1}, Lorg/apache/ignite/internal/util/ipc/IpcEndpointFactory;->connectTcpEndpoint(Ljava/lang/String;I)Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;

    move-result-object v3

    goto :goto_2

    .restart local v1    # "port":I
    :cond_3
    move v1, v3

    goto :goto_3
.end method

.method private static connectSharedMemoryEndpoint(ILorg/apache/ignite/IgniteLogger;)Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;
    .locals 1
    .param p0, "port"    # I
    .param p1, "log"    # Lorg/apache/ignite/IgniteLogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryClientEndpoint;-><init>(ILorg/apache/ignite/IgniteLogger;)V

    return-object v0
.end method

.method private static connectTcpEndpoint(Ljava/lang/String;I)Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;

    invoke-direct {v0, p0, p1}, Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
