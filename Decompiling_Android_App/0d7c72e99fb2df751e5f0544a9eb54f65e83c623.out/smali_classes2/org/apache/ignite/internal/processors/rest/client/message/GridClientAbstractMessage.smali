.class public abstract Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;
.super Ljava/lang/Object;
.source "GridClientAbstractMessage.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/rest/client/message/GridClientMessage;
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private transient destId:Ljava/util/UUID;

.field private transient id:Ljava/util/UUID;

.field private transient reqId:J

.field private sesTok:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clientId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public clientId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "id"    # Ljava/util/UUID;

    .prologue
    .line 61
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->id:Ljava/util/UUID;

    .line 62
    return-void
.end method

.method public destinationId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->destId:Ljava/util/UUID;

    return-object v0
.end method

.method public destinationId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "destId"    # Ljava/util/UUID;

    .prologue
    .line 71
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->destId:Ljava/util/UUID;

    .line 72
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
    .line 95
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->sesTok:[B

    .line 96
    return-void
.end method

.method public requestId()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->reqId:J

    return-wide v0
.end method

.method public requestId(J)V
    .locals 1
    .param p1, "reqId"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->reqId:J

    .line 52
    return-void
.end method

.method public sessionToken([B)V
    .locals 0
    .param p1, "sesTok"    # [B

    .prologue
    .line 85
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->sesTok:[B

    .line 86
    return-void
.end method

.method public sessionToken()[B
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->sesTok:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    const-class v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

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
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->sesTok:[B

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 91
    return-void
.end method
