.class public Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;
.super Ljava/lang/Object;
.source "GridEventStorageMessage.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

.field private depMode:Lorg/apache/ignite/configuration/DeploymentMode;

.field private evts:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private evtsBytes:[B

.field private ex:Ljava/lang/Throwable;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private exBytes:[B

.field private filter:[B

.field private filterClsName:Ljava/lang/String;

.field private ldrParties:Ljava/util/Map;
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

.field private resTopic:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private resTopicBytes:[B

.field private userVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;[BLjava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "resTopic"    # Ljava/lang/Object;
    .param p2, "filter"    # [B
    .param p3, "filterClsName"    # Ljava/lang/String;
    .param p4, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p5, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p6, "userVer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Lorg/apache/ignite/configuration/DeploymentMode;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, "ldrParties":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->resTopic:Ljava/lang/Object;

    .line 103
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filter:[B

    .line 104
    iput-object p3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filterClsName:Ljava/lang/String;

    .line 105
    iput-object p5, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 106
    iput-object p4, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 107
    iput-object p6, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->userVer:Ljava/lang/String;

    .line 108
    iput-object p7, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->ldrParties:Ljava/util/Map;

    .line 110
    iput-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->evts:Ljava/util/Collection;

    .line 111
    iput-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->ex:Ljava/lang/Throwable;

    .line 112
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->evts:Ljava/util/Collection;

    .line 120
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->ex:Ljava/lang/Throwable;

    .line 122
    iput-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->resTopic:Ljava/lang/Object;

    .line 123
    iput-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filter:[B

    .line 124
    iput-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filterClsName:Ljava/lang/String;

    .line 125
    iput-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 126
    iput-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 127
    iput-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->userVer:Ljava/lang/String;

    .line 128
    return-void
.end method


# virtual methods
.method classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 425
    const/16 v0, 0xd

    return v0
.end method

.method events()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->evts:Ljava/util/Collection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->evts:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method events(Ljava/util/Collection;)V
    .locals 0
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "evts":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/ignite/events/Event;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->evts:Ljava/util/Collection;

    .line 177
    return-void
.end method

.method eventsBytes([B)V
    .locals 0
    .param p1, "evtsBytes"    # [B

    .prologue
    .line 190
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->evtsBytes:[B

    .line 191
    return-void
.end method

.method eventsBytes()[B
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->evtsBytes:[B

    return-object v0
.end method

.method exception()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->ex:Ljava/lang/Throwable;

    return-object v0
.end method

.method exception(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 246
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->ex:Ljava/lang/Throwable;

    .line 247
    return-void
.end method

.method exceptionBytes([B)V
    .locals 0
    .param p1, "exBytes"    # [B

    .prologue
    .line 260
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->exBytes:[B

    .line 261
    return-void
.end method

.method exceptionBytes()[B
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->exBytes:[B

    return-object v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 430
    const/16 v0, 0x9

    return v0
.end method

.method filter()[B
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filter:[B

    return-object v0
.end method

.method filterClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filterClsName:Ljava/lang/String;

    return-object v0
.end method

.method loaderParticipants()Ljava/util/Map;
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->ldrParties:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->ldrParties:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loaderParticipants(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "ldrParties":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->ldrParties:Ljava/util/Map;

    .line 233
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 338
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v1

    .line 341
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 420
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 343
    :pswitch_0
    const-string v2, "clsLdrId"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 345
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 353
    :pswitch_1
    const-string v2, "depMode"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 355
    .local v0, "depModeOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    invoke-static {v0}, Lorg/apache/ignite/configuration/DeploymentMode;->fromOrdinal(I)Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 360
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 363
    .end local v0    # "depModeOrd":B
    :pswitch_2
    const-string v2, "evtsBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->evtsBytes:[B

    .line 365
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 368
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 371
    :pswitch_3
    const-string v2, "exBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->exBytes:[B

    .line 373
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 376
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 379
    :pswitch_4
    const-string v2, "filter"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filter:[B

    .line 381
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 387
    :pswitch_5
    const-string v2, "filterClsName"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filterClsName:Ljava/lang/String;

    .line 389
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 395
    :pswitch_6
    const-string v2, "ldrParties"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->IGNITE_UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v2, v3, v4, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMap(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Z)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->ldrParties:Ljava/util/Map;

    .line 397
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 403
    :pswitch_7
    const-string v2, "resTopicBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->resTopicBytes:[B

    .line 405
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 411
    :pswitch_8
    const-string/jumbo v2, "userVer"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->userVer:Ljava/lang/String;

    .line 413
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 341
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
    .end packed-switch
.end method

.method responseTopic()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->resTopic:Ljava/lang/Object;

    return-object v0
.end method

.method responseTopic(Ljava/lang/Object;)V
    .locals 0
    .param p1, "resTopic"    # Ljava/lang/Object;

    .prologue
    .line 141
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->resTopic:Ljava/lang/Object;

    .line 142
    return-void
.end method

.method responseTopicBytes([B)V
    .locals 0
    .param p1, "resTopicBytes"    # [B

    .prologue
    .line 155
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->resTopicBytes:[B

    .line 156
    return-void
.end method

.method responseTopicBytes()[B
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->resTopicBytes:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    const-class v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method userVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->userVer:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 267
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 331
    :goto_0
    return v0

    .line 271
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 274
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 276
    :pswitch_0
    const-string v0, "clsLdrId"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 277
    goto :goto_0

    .line 279
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 282
    :pswitch_1
    const-string v2, "depMode"

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/DeploymentMode;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 283
    goto :goto_0

    .line 282
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    .line 285
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 288
    :pswitch_2
    const-string v0, "evtsBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->evtsBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 289
    goto :goto_0

    .line 291
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 294
    :pswitch_3
    const-string v0, "exBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->exBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 295
    goto :goto_0

    .line 297
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 300
    :pswitch_4
    const-string v0, "filter"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filter:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 301
    goto :goto_0

    .line 303
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 306
    :pswitch_5
    const-string v0, "filterClsName"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->filterClsName:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 307
    goto :goto_0

    .line 309
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 312
    :pswitch_6
    const-string v0, "ldrParties"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->ldrParties:Ljava/util/Map;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->IGNITE_UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMap(Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 313
    goto/16 :goto_0

    .line 315
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 318
    :pswitch_7
    const-string v0, "resTopicBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->resTopicBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 319
    goto/16 :goto_0

    .line 321
    :cond_a
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 324
    :pswitch_8
    const-string/jumbo v0, "userVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageMessage;->userVer:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    .line 325
    goto/16 :goto_0

    .line 327
    :cond_b
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto/16 :goto_1

    .line 274
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
    .end packed-switch
.end method
