.class public Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;
.super Ljava/lang/Object;
.source "DataStreamerRequest.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private cacheName:Ljava/lang/String;

.field private clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

.field private depMode:Lorg/apache/ignite/configuration/DeploymentMode;

.field private entries:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectCollection;
        value = Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;
    .end annotation
.end field

.field private forceLocDep:Z

.field private ignoreDepOwnership:Z

.field private ldrParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectMap;
        keyType = Ljava/util/UUID;
        valueType = Lorg/apache/ignite/lang/IgniteUuid;
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private reqId:J

.field private resTopicBytes:[B

.field private sampleClsName:Ljava/lang/String;

.field private skipStore:Z

.field private updaterBytes:[B

.field private userVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method public constructor <init>(J[BLjava/lang/String;[BLjava/util/Collection;ZZLorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/lang/IgniteUuid;Z)V
    .locals 1
    .param p1, "reqId"    # J
    .param p3, "resTopicBytes"    # [B
    .param p4, "cacheName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "updaterBytes"    # [B
    .param p7, "ignoreDepOwnership"    # Z
    .param p8, "skipStore"    # Z
    .param p9, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p10, "sampleClsName"    # Ljava/lang/String;
    .param p11, "userVer"    # Ljava/lang/String;
    .param p13, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p14, "forceLocDep"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[B",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
            ">;ZZ",
            "Lorg/apache/ignite/configuration/DeploymentMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p6, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;>;"
    .local p12, "ldrParticipants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->reqId:J

    .line 116
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->resTopicBytes:[B

    .line 117
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->cacheName:Ljava/lang/String;

    .line 118
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->updaterBytes:[B

    .line 119
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->entries:Ljava/util/Collection;

    .line 120
    iput-boolean p7, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->ignoreDepOwnership:Z

    .line 121
    iput-boolean p8, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->skipStore:Z

    .line 122
    iput-object p9, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 123
    iput-object p10, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->sampleClsName:Ljava/lang/String;

    .line 124
    iput-object p11, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->userVer:Ljava/lang/String;

    .line 125
    iput-object p12, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->ldrParticipants:Ljava/util/Map;

    .line 126
    iput-object p13, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 127
    iput-boolean p14, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->forceLocDep:Z

    .line 128
    return-void
.end method


# virtual methods
.method public cacheName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->cacheName:Ljava/lang/String;

    return-object v0
.end method

.method public classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 444
    const/16 v0, 0x3e

    return v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->entries:Ljava/util/Collection;

    return-object v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 449
    const/16 v0, 0xd

    return v0
.end method

.method public forceLocalDeployment()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->forceLocDep:Z

    return v0
.end method

.method public ignoreDeploymentOwnership()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->ignoreDepOwnership:Z

    return v0
.end method

.method public participants()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->ldrParticipants:Ljava/util/Map;

    return-object v0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 323
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 325
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 439
    :cond_0
    :goto_0
    return v1

    .line 328
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 439
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 330
    :pswitch_0
    const-string v2, "cacheName"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->cacheName:Ljava/lang/String;

    .line 332
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 338
    :pswitch_1
    const-string v2, "clsLdrId"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 340
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 348
    :pswitch_2
    const-string v2, "depMode"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 350
    .local v0, "depModeOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    invoke-static {v0}, Lorg/apache/ignite/configuration/DeploymentMode;->fromOrdinal(I)Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 355
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 358
    .end local v0    # "depModeOrd":B
    :pswitch_3
    const-string v2, "entries"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readCollection(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Ljava/util/Collection;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->entries:Ljava/util/Collection;

    .line 360
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 366
    :pswitch_4
    const-string v2, "forceLocDep"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->forceLocDep:Z

    .line 368
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 374
    :pswitch_5
    const-string v2, "ignoreDepOwnership"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->ignoreDepOwnership:Z

    .line 376
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 382
    :pswitch_6
    const-string v2, "ldrParticipants"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->IGNITE_UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v2, v3, v4, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMap(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Z)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->ldrParticipants:Ljava/util/Map;

    .line 384
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 390
    :pswitch_7
    const-string v2, "reqId"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->reqId:J

    .line 392
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 395
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 398
    :pswitch_8
    const-string v2, "resTopicBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->resTopicBytes:[B

    .line 400
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 406
    :pswitch_9
    const-string v2, "sampleClsName"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->sampleClsName:Ljava/lang/String;

    .line 408
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 414
    :pswitch_a
    const-string v2, "skipStore"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->skipStore:Z

    .line 416
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 422
    :pswitch_b
    const-string/jumbo v2, "updaterBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->updaterBytes:[B

    .line 424
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 430
    :pswitch_c
    const-string/jumbo v2, "userVer"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->userVer:Ljava/lang/String;

    .line 432
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public requestId()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->reqId:J

    return-wide v0
.end method

.method public responseTopicBytes()[B
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->resTopicBytes:[B

    return-object v0
.end method

.method public sampleClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->sampleClsName:Ljava/lang/String;

    return-object v0
.end method

.method public skipStore()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->skipStore:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const-class v0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updaterBytes()[B
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->updaterBytes:[B

    return-object v0
.end method

.method public userVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->userVer:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 230
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 318
    :goto_0
    return v0

    .line 234
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 237
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 318
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 239
    :pswitch_0
    const-string v0, "cacheName"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->cacheName:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 240
    goto :goto_0

    .line 242
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 245
    :pswitch_1
    const-string v0, "clsLdrId"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 246
    goto :goto_0

    .line 248
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 251
    :pswitch_2
    const-string v2, "depMode"

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/DeploymentMode;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 252
    goto :goto_0

    .line 251
    :cond_4
    const/4 v0, -0x1

    goto :goto_2

    .line 254
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 257
    :pswitch_3
    const-string v0, "entries"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->entries:Ljava/util/Collection;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->MSG:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeCollection(Ljava/lang/String;Ljava/util/Collection;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 258
    goto :goto_0

    .line 260
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 263
    :pswitch_4
    const-string v0, "forceLocDep"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->forceLocDep:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 264
    goto :goto_0

    .line 266
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 269
    :pswitch_5
    const-string v0, "ignoreDepOwnership"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->ignoreDepOwnership:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 270
    goto :goto_0

    .line 272
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 275
    :pswitch_6
    const-string v0, "ldrParticipants"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->ldrParticipants:Ljava/util/Map;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->IGNITE_UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMap(Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 276
    goto/16 :goto_0

    .line 278
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 281
    :pswitch_7
    const-string v0, "reqId"

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->reqId:J

    invoke-interface {p2, v0, v2, v3}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeLong(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 282
    goto/16 :goto_0

    .line 284
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 287
    :pswitch_8
    const-string v0, "resTopicBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->resTopicBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 288
    goto/16 :goto_0

    .line 290
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 293
    :pswitch_9
    const-string v0, "sampleClsName"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->sampleClsName:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v1

    .line 294
    goto/16 :goto_0

    .line 296
    :cond_c
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 299
    :pswitch_a
    const-string v0, "skipStore"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->skipStore:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    .line 300
    goto/16 :goto_0

    .line 302
    :cond_d
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 305
    :pswitch_b
    const-string/jumbo v0, "updaterBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->updaterBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_e

    move v0, v1

    .line 306
    goto/16 :goto_0

    .line 308
    :cond_e
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 311
    :pswitch_c
    const-string/jumbo v0, "userVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/datastreamer/DataStreamerRequest;->userVer:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    .line 312
    goto/16 :goto_0

    .line 314
    :cond_f
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
