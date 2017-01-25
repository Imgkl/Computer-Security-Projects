.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;
.super Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;
.source "GridClientResponse.java"


# static fields
.field public static final STATUS_AUTH_FAILURE:I = 0x2

.field public static final STATUS_FAILED:I = 0x1

.field public static final STATUS_SECURITY_CHECK_FAILED:I = 0x3

.field public static final STATUS_SUCCESS:I

.field private static final serialVersionUID:J


# instance fields
.field private errorMsg:Ljava/lang/String;

.field private res:Ljava/lang/Object;

.field private successStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public errorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public errorMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->errorMsg:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 109
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->successStatus:I

    .line 111
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->errorMsg:Ljava/lang/String;

    .line 113
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->res:Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public result()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->res:Ljava/lang/Object;

    return-object v0
.end method

.method public result(Ljava/lang/Object;)V
    .locals 0
    .param p1, "res"    # Ljava/lang/Object;

    .prologue
    .line 91
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->res:Ljava/lang/Object;

    .line 92
    return-void
.end method

.method public successStatus()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->successStatus:I

    return v0
.end method

.method public successStatus(I)V
    .locals 0
    .param p1, "successStatus"    # I

    .prologue
    .line 63
    iput p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->successStatus:I

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [clientId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->clientId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->requestId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "destId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->destinationId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->successStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->errorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->res:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 98
    iget v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->successStatus:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->errorMsg:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientResponse;->res:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 103
    return-void
.end method
