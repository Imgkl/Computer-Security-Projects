.class Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$4;
.super Ljava/lang/Object;
.source "GridClientNioTcpConnection.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;->execute(Ljava/lang/String;Ljava/lang/Object;Ljava/util/UUID;Z)Lorg/apache/ignite/internal/client/impl/GridClientFutureAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/client/impl/GridClientFutureCallback",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;)V
    .locals 0

    .prologue
    .line 745
    iput-object p1, p0, Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection$4;->this$0:Lorg/apache/ignite/internal/client/impl/connection/GridClientNioTcpConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lorg/apache/ignite/internal/client/GridClientFuture;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/client/GridClientFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;",
            ">;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/internal/client/GridClientException;
        }
    .end annotation

    .prologue
    .line 748
    .local p1, "fut":Lorg/apache/ignite/internal/client/GridClientFuture;, "Lorg/apache/ignite/internal/client/GridClientFuture<Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;>;"
    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
