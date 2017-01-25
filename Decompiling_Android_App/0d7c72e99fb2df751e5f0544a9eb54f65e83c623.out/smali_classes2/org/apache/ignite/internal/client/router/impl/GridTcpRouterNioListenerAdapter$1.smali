.class Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter$1;
.super Ljava/lang/Object;
.source "GridTcpRouterNioListenerAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/client/GridClientFutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;

.field final synthetic val$clientId:Ljava/util/UUID;

.field final synthetic val$reqId:J

.field final synthetic val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;JLorg/apache/ignite/internal/util/nio/GridNioSession;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter$1;->this$0:Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;

    iput-wide p2, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter$1;->val$reqId:J

    iput-object p4, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter$1;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    iput-object p5, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter$1;->val$clientId:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lorg/apache/ignite/internal/client/GridClientFuture;)V
    .locals 8
    .param p1, "fut"    # Lorg/apache/ignite/internal/client/GridClientFuture;

    .prologue
    .line 107
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/client/GridClientFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;

    .line 109
    .local v1, "res":Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;
    iget-wide v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter$1;->val$reqId:J

    invoke-virtual {v1, v2, v3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->requestId(J)V

    .line 111
    iget-object v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter$1;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v2, v1}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;
    :try_end_0
    .catch Lorg/apache/ignite/internal/client/GridClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "res":Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Lorg/apache/ignite/internal/client/GridClientException;
    iget-object v2, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter$1;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    iget-object v3, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter$1;->this$0:Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;

    iget-object v4, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter$1;->val$clientId:Ljava/util/UUID;

    iget-wide v6, p0, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter$1;->val$reqId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    # invokes: Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->makeFailureResponse(Lorg/apache/ignite/internal/client/GridClientException;Ljava/util/UUID;Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;
    invoke-static {v3, v0, v4, v5}, Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;->access$000(Lorg/apache/ignite/internal/client/router/impl/GridTcpRouterNioListenerAdapter;Lorg/apache/ignite/internal/client/GridClientException;Ljava/util/UUID;Ljava/lang/Long;)Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    goto :goto_0
.end method
