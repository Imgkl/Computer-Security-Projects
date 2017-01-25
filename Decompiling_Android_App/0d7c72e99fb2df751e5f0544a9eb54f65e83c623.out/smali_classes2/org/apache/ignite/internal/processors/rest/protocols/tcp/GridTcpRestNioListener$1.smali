.class Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;
.super Ljava/lang/Object;
.source "GridTcpRestNioListener.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/CI1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->onMessage(Lorg/apache/ignite/internal/util/nio/GridNioSession;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/CI1",
        "<",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<",
        "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;

.field final synthetic val$msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

.field final synthetic val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;Lorg/apache/ignite/internal/util/nio/GridNioSession;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;->this$0:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;->val$msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    iput-object p3, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 176
    check-cast p1, Lorg/apache/ignite/internal/IgniteInternalFuture;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;->apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V

    return-void
.end method

.method public apply(Lorg/apache/ignite/internal/IgniteInternalFuture;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/internal/IgniteInternalFuture",
            "<",
            "Lorg/apache/ignite/internal/processors/rest/GridRestResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "fut":Lorg/apache/ignite/internal/IgniteInternalFuture;, "Lorg/apache/ignite/internal/IgniteInternalFuture<Lorg/apache/ignite/internal/processors/rest/GridRestResponse;>;"
    new-instance v2, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;

    invoke-direct {v2}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;-><init>()V

    .line 180
    .local v2, "res":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;->val$msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->requestId()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->requestId(J)V

    .line 181
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;->val$msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    invoke-interface {v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;->clientId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->clientId(Ljava/util/UUID;)V

    .line 184
    :try_start_0
    invoke-interface {p1}, Lorg/apache/ignite/internal/IgniteInternalFuture;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;

    .line 186
    .local v3, "restRes":Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->sessionTokenBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->sessionToken([B)V

    .line 187
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getSuccessStatus()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->successStatus(I)V

    .line 188
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getError()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->errorMessage(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3}, Lorg/apache/ignite/internal/processors/rest/GridRestResponse;->getResponse()Ljava/lang/Object;

    move-result-object v1

    .line 193
    .local v1, "o":Ljava/lang/Object;
    instance-of v5, v1, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;

    if-eqz v5, :cond_0

    .line 194
    check-cast v1, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheRestMetrics;->map()Ljava/util/Map;

    move-result-object v1

    .line 196
    :cond_0
    invoke-virtual {v2, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->result(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v3    # "restRes":Lorg/apache/ignite/internal/processors/rest/GridRestResponse;
    :goto_0
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-interface {v5, v2}, Lorg/apache/ignite/internal/util/nio/GridNioSession;->send(Ljava/lang/Object;)Lorg/apache/ignite/internal/util/nio/GridNioFuture;

    move-result-object v4

    .line 208
    .local v4, "sf":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    invoke-interface {v4}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->isDone()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 210
    :try_start_1
    invoke-interface {v4}, Lorg/apache/ignite/internal/util/nio/GridNioFuture;->get()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :cond_1
    :goto_1
    return-void

    .line 198
    .end local v4    # "sf":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;->this$0:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;

    # getter for: Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->access$000(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to process client request: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;->val$msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 201
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->successStatus(I)V

    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to process client request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->errorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    .end local v0    # "e":Lorg/apache/ignite/IgniteCheckedException;
    .restart local v4    # "sf":Lorg/apache/ignite/internal/util/nio/GridNioFuture;, "Lorg/apache/ignite/internal/util/nio/GridNioFuture<*>;"
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;->this$0:Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;

    # getter for: Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->log:Lorg/apache/ignite/IgniteLogger;
    invoke-static {v5}, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;->access$000(Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to process client request [ses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;->val$ses:Lorg/apache/ignite/internal/util/nio/GridNioSession;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/apache/ignite/internal/processors/rest/protocols/tcp/GridTcpRestNioListener$1;->val$msg:Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x5d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->error(Lorg/apache/ignite/IgniteLogger;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
