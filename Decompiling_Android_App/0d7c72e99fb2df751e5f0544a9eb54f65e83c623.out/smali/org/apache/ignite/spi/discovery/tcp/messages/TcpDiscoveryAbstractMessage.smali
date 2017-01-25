.class public abstract Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;
.super Ljava/lang/Object;
.source "TcpDiscoveryAbstractMessage.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final CLIENT_FLAG_POS:I = 0x0

.field protected static final CLIENT_RECON_SUCCESS_FLAG_POS:I = 0x2

.field protected static final RESPONDED_FLAG_POS:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private destClientNodeId:Ljava/util/UUID;

.field private flags:I
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private id:Lorg/apache/ignite/lang/IgniteUuid;

.field private pendingIdx:S

.field private senderNodeId:Ljava/util/UUID;

.field private topVer:J

.field private verifierNodeId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method protected constructor <init>(Ljava/util/UUID;)V
    .locals 1
    .param p1, "creatorNodeId"    # Ljava/util/UUID;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Lorg/apache/ignite/lang/IgniteUuid;->fromUuid(Ljava/util/UUID;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 79
    return-void
.end method


# virtual methods
.method public client(Z)V
    .locals 1
    .param p1, "client"    # Z

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->setFlag(IZ)V

    .line 178
    return-void
.end method

.method public client()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public creatorNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->globalId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public destinationClientNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->destClientNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public destinationClientNodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "destClientNodeId"    # Ljava/util/UUID;

    .prologue
    .line 191
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->destClientNodeId:Ljava/util/UUID;

    .line 192
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 257
    if-ne p0, p1, :cond_0

    .line 258
    const/4 v0, 0x1

    .line 262
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 259
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id:Lorg/apache/ignite/lang/IgniteUuid;

    check-cast p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 262
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFlag(I)Z
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x1

    .line 213
    sget-boolean v2, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-ltz p1, :cond_0

    const/16 v2, 0x20

    if-lt p1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 215
    :cond_1
    shl-int v0, v1, p1

    .line 217
    .local v0, "mask":I
    iget v2, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->flags:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_2

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    return v0
.end method

.method public id()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public pendingIndex()S
    .locals 1

    .prologue
    .line 198
    iget-short v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->pendingIdx:S

    return v0
.end method

.method public pendingIndex(S)V
    .locals 0
    .param p1, "pendingIdx"    # S

    .prologue
    .line 205
    iput-short p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->pendingIdx:S

    .line 206
    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 248
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->verifierNodeId:Ljava/util/UUID;

    .line 249
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->topVer:J

    .line 250
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->destClientNodeId:Ljava/util/UUID;

    .line 251
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->flags:I

    .line 252
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->pendingIdx:S

    .line 253
    return-void
.end method

.method public senderNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->senderNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public senderNodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "senderNodeId"    # Ljava/util/UUID;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->senderNodeId:Ljava/util/UUID;

    .line 115
    return-void
.end method

.method protected setFlag(IZ)V
    .locals 3
    .param p1, "pos"    # I
    .param p2, "val"    # Z

    .prologue
    .line 225
    sget-boolean v1, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-ltz p1, :cond_0

    const/16 v1, 0x20

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 227
    :cond_1
    const/4 v1, 0x1

    shl-int v0, v1, p1

    .line 229
    .local v0, "mask":I
    if-eqz p2, :cond_2

    .line 230
    iget v1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->flags:I

    or-int/2addr v1, v0

    iput v1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->flags:I

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_2
    iget v1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->flags:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->flags:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 272
    const-class v0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;

    const-string v1, "isClient"

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->getFlag(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topologyVersion()J
    .locals 2

    .prologue
    .line 150
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->topVer:J

    return-wide v0
.end method

.method public topologyVersion(J)V
    .locals 1
    .param p1, "topVer"    # J

    .prologue
    .line 159
    iput-wide p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->topVer:J

    .line 160
    return-void
.end method

.method public verified()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->verifierNodeId:Ljava/util/UUID;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public verifierNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->verifierNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public verify(Ljava/util/UUID;)V
    .locals 0
    .param p1, "verifierNodeId"    # Ljava/util/UUID;

    .prologue
    .line 141
    iput-object p1, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->verifierNodeId:Ljava/util/UUID;

    .line 142
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->id:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 238
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->verifierNodeId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 239
    iget-wide v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->topVer:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 240
    iget-object v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->destClientNodeId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 241
    iget v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->flags:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 242
    iget-short v0, p0, Lorg/apache/ignite/spi/discovery/tcp/messages/TcpDiscoveryAbstractMessage;->pendingIdx:S

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

    .line 243
    return-void
.end method
