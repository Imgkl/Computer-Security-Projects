.class public Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;
.super Ljava/lang/Object;
.source "IpcServerTcpEndpoint.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/ipc/IpcServerEndpoint;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final DFLT_IPC_PORT:I = 0x2904


# instance fields
.field private host:Ljava/lang/String;

.field private log:Lorg/apache/ignite/IgniteLogger;
    .annotation runtime Lorg/apache/ignite/resources/LoggerResource;
    .end annotation
.end field

.field private mgmt:Z

.field private port:I

.field private srvSock:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x2904

    iput v0, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->port:I

    return-void
.end method


# virtual methods
.method public accept()Lorg/apache/ignite/internal/util/ipc/IpcEndpoint;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 79
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->srvSock:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 81
    .local v1, "sock":Ljava/net/Socket;
    new-instance v2, Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;

    invoke-direct {v2, v1}, Lorg/apache/ignite/internal/util/ipc/loopback/IpcClientTcpEndpoint;-><init>(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 83
    .end local v1    # "sock":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/ignite/IgniteCheckedException;

    invoke-direct {v2, v0}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public close()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->srvSock:Ljava/net/ServerSocket;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 91
    return-void
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->port:I

    return v0
.end method

.method public isManagement()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->mgmt:Z

    return v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->host:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setManagement(Z)V
    .locals 0
    .param p1, "mgmt"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->mgmt:Z

    .line 133
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 104
    iput p1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->port:I

    .line 105
    return-void
.end method

.method public setupConfiguration(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "endpointCfg":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 149
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    move v3, v4

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 167
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid property \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :catch_0
    move-exception v2

    .line 171
    .local v2, "t":Ljava/lang/Throwable;
    instance-of v3, v2, Lorg/apache/ignite/IgniteCheckedException;

    if-eqz v3, :cond_1

    .line 172
    throw v2

    .line 149
    .end local v2    # "t":Ljava/lang/Throwable;
    :sswitch_0
    :try_start_1
    const-string/jumbo v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "port"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v5, "host"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "management"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    .line 155
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->setPort(I)V

    goto/16 :goto_0

    .line 159
    :pswitch_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->setHost(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    :pswitch_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->setManagement(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 174
    .restart local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Lorg/apache/ignite/IgniteCheckedException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' of the property \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3, v2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 178
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_2
    return-void

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b4987bd -> :sswitch_3
        0x30f5a8 -> :sswitch_2
        0x349881 -> :sswitch_1
        0x368f3a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 54
    iget v1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->port:I

    if-lez v1, :cond_0

    iget v1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->port:I

    const v2, 0xffff

    if-lt v1, v2, :cond_1

    .line 55
    :cond_0
    new-instance v1, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Port value is illegal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V

    iput-object v1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->srvSock:Ljava/net/ServerSocket;

    .line 60
    sget-boolean v1, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->host:Ljava/lang/String;

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->srvSock:Ljava/net/ServerSocket;

    if-eqz v1, :cond_2

    .line 69
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->srvSock:Ljava/net/ServerSocket;

    invoke-static {v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->closeQuiet(Ljava/lang/AutoCloseable;)V

    .line 71
    :cond_2
    new-instance v1, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind loopback IPC endpoint (is port already in use?): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/ignite/internal/util/ipc/IpcEndpointBindException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 62
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->srvSock:Ljava/net/ServerSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->host:Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/ignite/internal/util/typedef/internal/U;->resolveLocalHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iget v4, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->port:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 64
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    invoke-interface {v1}, Lorg/apache/ignite/IgniteLogger;->isInfoEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->log:Lorg/apache/ignite/IgniteLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IPC server loopback endpoint started [port="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;->port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/ignite/IgniteLogger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    const-class v0, Lorg/apache/ignite/internal/util/ipc/loopback/IpcServerTcpEndpoint;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
