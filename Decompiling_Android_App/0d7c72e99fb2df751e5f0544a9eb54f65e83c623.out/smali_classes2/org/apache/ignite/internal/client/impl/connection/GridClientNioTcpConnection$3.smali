.class Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$3;
.super Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;
.source "GridClientNioTcpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->cacheMetrics(Ljava/lang/String;Ljava/util/UUID;)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;)V
    .locals 1

    .prologue
    .line 692
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$3;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;-><init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$1;)V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/Object;)V
    .locals 1
    .param p1, "res"    # Ljava/lang/Object;

    .prologue
    .line 694
    iget-object v0, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$3;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    check-cast p1, Ljava/util/Map;

    .end local p1    # "res":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->metricsMapToMetrics(Ljava/util/Map;)Lorg/apache/ignite/internal/client/GridClientDataMetrics;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$TcpClientFuture;->onDone(Ljava/lang/Object;)V

    .line 695
    return-void
.end method
