.class public Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;
.super Ljava/lang/Object;
.source "GridDeploymentRequest.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private isUndeploy:Z

.field private ldrId:Lorg/apache/ignite/lang/IgniteUuid;

.field private nodeIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Ljava/util/UUID;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private resTopic:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private resTopicBytes:[B

.field private rsrcName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "resTopic"    # Ljava/lang/Object;
    .param p2, "ldrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "rsrcName"    # Ljava/lang/String;
    .param p4, "isUndeploy"    # Z

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_0
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p4, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_1
    sget-boolean v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_2
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->resTopic:Ljava/lang/Object;

    .line 80
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->ldrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 81
    iput-object p3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->rsrcName:Ljava/lang/String;

    .line 82
    iput-boolean p4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->isUndeploy:Z

    .line 83
    return-void
.end method


# virtual methods
.method classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->ldrId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 260
    const/16 v0, 0xb

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x5

    return v0
.end method

.method isUndeploy()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->isUndeploy:Z

    return v0
.end method

.method public nodeIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->nodeIds:Ljava/util/Collection;

    return-object v0
.end method

.method public nodeIds(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "nodeIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/UUID;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->nodeIds:Ljava/util/Collection;

    .line 156
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v0, 0x0

    .line 207
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 209
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 255
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    :pswitch_0
    const-string v1, "isUndeploy"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->isUndeploy:Z

    .line 216
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 222
    :pswitch_1
    const-string v1, "ldrId"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->ldrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 224
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 230
    :pswitch_2
    const-string v1, "nodeIds"

    sget-object v2, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->nodeIds:Ljava/util/Collection;

    .line 232
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 238
    :pswitch_3
    const-string v1, "resTopicBytes"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->resTopicBytes:[B

    .line 240
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 246
    :pswitch_4
    const-string v1, "rsrcName"

    invoke-interface {p2, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->rsrcName:Ljava/lang/String;

    .line 248
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 212
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method resourceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->rsrcName:Ljava/lang/String;

    return-object v0
.end method

.method responseTopic()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->resTopic:Ljava/lang/Object;

    return-object v0
.end method

.method responseTopic(Ljava/lang/Object;)V
    .locals 0
    .param p1, "resTopic"    # Ljava/lang/Object;

    .prologue
    .line 98
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->resTopic:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method responseTopicBytes([B)V
    .locals 0
    .param p1, "resTopicBytes"    # [B

    .prologue
    .line 112
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->resTopicBytes:[B

    .line 113
    return-void
.end method

.method responseTopicBytes()[B
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->resTopicBytes:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 4
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v0, 0x0

    .line 160
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 162
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->directType()B

    move-result v1

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 169
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 202
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 171
    :pswitch_0
    const-string v1, "isUndeploy"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->isUndeploy:Z

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 177
    :pswitch_1
    const-string v1, "ldrId"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->ldrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 183
    :pswitch_2
    const-string v1, "nodeIds"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->nodeIds:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v1, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 189
    :pswitch_3
    const-string v1, "resTopicBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->resTopicBytes:[B

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 195
    :pswitch_4
    const-string v1, "rsrcName"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentRequest;->rsrcName:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
