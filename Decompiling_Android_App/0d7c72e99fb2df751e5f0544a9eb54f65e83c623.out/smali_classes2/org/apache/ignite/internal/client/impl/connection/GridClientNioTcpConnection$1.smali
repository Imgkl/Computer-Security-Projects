.class Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;
.super Ljava/lang/Object;
.source "GridClientNioTcpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;-><init>(Lorg/apache/ignite/internal/util/nio/GridNioServer;Ljava/util/UUID;Ljava/net/InetSocketAddress;Ljavax/net/ssl/SSLContext;Ljava/util/concurrent/ScheduledExecutorService;IJJZLorg/apache/ignite/internal/client/marshaller/GridClientMarshaller;Ljava/lang/Byte;Lorg/apache/ignite/internal/client/impl/connection/GridClientTopology;Ljava/lang/Object;Ljava/lang/ThreadLocal;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 212
    :try_start_0
    iget-object v2, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    sget-object v3, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientPingPacket;->PING_MESSAGE:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    const/4 v1, 0x0

    check-cast v1, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;

    const/4 v4, 0x0

    # invokes: Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->makeRequest(Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    invoke-static {v2, v3, v1, v4}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->access$000(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->log:Ljava/util/logging/Logger;
    invoke-static {}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->access$100()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send ping message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method
