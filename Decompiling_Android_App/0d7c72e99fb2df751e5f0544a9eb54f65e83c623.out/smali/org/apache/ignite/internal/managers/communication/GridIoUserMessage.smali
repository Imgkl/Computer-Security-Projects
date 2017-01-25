.class public Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;
.super Ljava/lang/Object;
.source "GridIoUserMessage.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private body:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private bodyBytes:[B

.field private clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

.field private dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private depClsName:Ljava/lang/String;

.field private depMode:Lorg/apache/ignite/configuration/DeploymentMode;

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

.field private topic:Ljava/lang/Object;
    .annotation runtime Lorg/apache/ignite/internal/GridDirectTransient;
    .end annotation
.end field

.field private topicBytes:[B

.field private userVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;[BLjava/lang/String;Ljava/lang/Object;[BLorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Object;
    .param p2, "bodyBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3, "depClsName"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4, "topic"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5, "topicBytes"    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8, "userVer"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[B",
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
    .line 95
    .local p9, "ldrParties":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->body:Ljava/lang/Object;

    .line 97
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->bodyBytes:[B

    .line 98
    iput-object p3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->depClsName:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->topic:Ljava/lang/Object;

    .line 100
    iput-object p5, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->topicBytes:[B

    .line 101
    iput-object p7, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 102
    iput-object p6, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 103
    iput-object p8, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->userVer:Ljava/lang/String;

    .line 104
    iput-object p9, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->ldrParties:Ljava/util/Map;

    .line 105
    return-void
.end method


# virtual methods
.method public body()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->body:Ljava/lang/Object;

    return-object v0
.end method

.method public body(Ljava/lang/Object;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Object;

    .prologue
    .line 181
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->body:Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public bodyBytes()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->bodyBytes:[B

    return-object v0
.end method

.method public classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public deployment()Lorg/apache/ignite/internal/managers/deployment/GridDeployment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    return-object v0
.end method

.method public deployment(Lorg/apache/ignite/internal/managers/deployment/GridDeployment;)V
    .locals 0
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .prologue
    .line 195
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->dep:Lorg/apache/ignite/internal/managers/deployment/GridDeployment;

    .line 196
    return-void
.end method

.method public deploymentClassName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->depClsName:Ljava/lang/String;

    return-object v0
.end method

.method public deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 339
    const/16 v0, 0x9

    return v0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x7

    return v0
.end method

.method public loaderParticipants()Ljava/util/Map;
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
    .line 153
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->ldrParties:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->ldrParties:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 266
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 268
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 334
    :cond_0
    :goto_0
    return v1

    .line 271
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 334
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 273
    :pswitch_0
    const-string v2, "bodyBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->bodyBytes:[B

    .line 275
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 281
    :pswitch_1
    const-string v2, "clsLdrId"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 283
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 289
    :pswitch_2
    const-string v2, "depClsName"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->depClsName:Ljava/lang/String;

    .line 291
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 299
    :pswitch_3
    const-string v2, "depMode"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 301
    .local v0, "depModeOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-static {v0}, Lorg/apache/ignite/configuration/DeploymentMode;->fromOrdinal(I)Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 306
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 309
    .end local v0    # "depModeOrd":B
    :pswitch_4
    const-string v2, "ldrParties"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->IGNITE_UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v2, v3, v4, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMap(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Z)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->ldrParties:Ljava/util/Map;

    .line 311
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 317
    :pswitch_5
    const-string/jumbo v2, "topicBytes"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->topicBytes:[B

    .line 319
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 325
    :pswitch_6
    const-string/jumbo v2, "userVer"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->userVer:Ljava/lang/String;

    .line 327
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto/16 :goto_1

    .line 271
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
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    const-class v0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public topic()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->topic:Ljava/lang/Object;

    return-object v0
.end method

.method public topic(Ljava/lang/Object;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/Object;

    .prologue
    .line 167
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->topic:Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public topicBytes()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->topicBytes:[B

    return-object v0
.end method

.method public userVersion()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->userVer:Ljava/lang/String;

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 209
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 261
    :goto_0
    return v0

    .line 213
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 216
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :pswitch_0
    const-string v0, "bodyBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->bodyBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 219
    goto :goto_0

    .line 221
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 224
    :pswitch_1
    const-string v0, "clsLdrId"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 225
    goto :goto_0

    .line 227
    :cond_3
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 230
    :pswitch_2
    const-string v0, "depClsName"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->depClsName:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 231
    goto :goto_0

    .line 233
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 236
    :pswitch_3
    const-string v2, "depMode"

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/DeploymentMode;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 237
    goto :goto_0

    .line 236
    :cond_5
    const/4 v0, -0x1

    goto :goto_2

    .line 239
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 242
    :pswitch_4
    const-string v0, "ldrParties"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->ldrParties:Ljava/util/Map;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->IGNITE_UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMap(Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 243
    goto :goto_0

    .line 245
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 248
    :pswitch_5
    const-string/jumbo v0, "topicBytes"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->topicBytes:[B

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByteArray(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 249
    goto :goto_0

    .line 251
    :cond_8
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 254
    :pswitch_6
    const-string/jumbo v0, "userVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoUserMessage;->userVer:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 255
    goto/16 :goto_0

    .line 257
    :cond_9
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
