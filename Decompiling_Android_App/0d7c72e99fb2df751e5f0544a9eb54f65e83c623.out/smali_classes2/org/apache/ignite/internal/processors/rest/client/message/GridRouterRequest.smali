.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;
.super Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;
.source "GridRouterRequest.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final body:[B


# direct methods
.method public constructor <init>([BLjava/lang/Long;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 2
    .param p1, "body"    # [B
    .param p2, "reqId"    # Ljava/lang/Long;
    .param p3, "clientId"    # Ljava/util/UUID;
    .param p4, "destId"    # Ljava/util/UUID;

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;->body:[B

    .line 41
    invoke-virtual {p0, p4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;->destinationId(Ljava/util/UUID;)V

    .line 42
    invoke-virtual {p0, p3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;->clientId(Ljava/util/UUID;)V

    .line 43
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;->requestId(J)V

    .line 44
    return-void
.end method


# virtual methods
.method public body()[B
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;->body:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridRouterRequest [clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;->clientId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;->requestId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "destId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;->destinationId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterRequest;->body:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
