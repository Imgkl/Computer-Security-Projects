.class public Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;
.super Ljava/lang/Object;
.source "IpcClientTcpEndpoint.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private clientSock:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/net/Socket;

    invoke-direct {v1}, Ljava/net/Socket;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;->clientSock:Ljava/net/Socket;

    .line 56
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;->clientSock:Ljava/net/Socket;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect to endpoint [host="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1
    .param p1, "clientSock"    # Ljava/net/Socket;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-boolean v0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;->clientSock:Ljava/net/Socket;

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;->clientSock:Ljava/net/Socket;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 86
    return-void
.end method

.method public inputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;->clientSock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;->clientSock:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
