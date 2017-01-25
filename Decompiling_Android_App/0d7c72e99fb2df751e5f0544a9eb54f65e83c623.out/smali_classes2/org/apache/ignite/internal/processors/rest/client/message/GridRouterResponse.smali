.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;
.super Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;
.source "GridRouterResponse.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final body:[B

.field private final errMsg:Ljava/lang/String;

.field private final status:I


# direct methods
.method public constructor <init>([BLjava/lang/Long;Ljava/util/UUID;Ljava/util/UUID;)V
    .locals 2
    .param p1, "body"    # [B
    .param p2, "reqId"    # Ljava/lang/Long;
    .param p3, "clientId"    # Ljava/util/UUID;
    .param p4, "destId"    # Ljava/util/UUID;

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->body:[B

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->errMsg:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->status:I

    .line 49
    invoke-virtual {p0, p4}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->destinationId(Ljava/util/UUID;)V

    .line 50
    invoke-virtual {p0, p3}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->clientId(Ljava/util/UUID;)V

    .line 51
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->requestId(J)V

    .line 52
    return-void
.end method


# virtual methods
.method public body()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->body:[B

    return-object v0
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public status()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->status:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GridRouterResponse [clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->clientId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->requestId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->destinationId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridRouterResponse;->errorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
