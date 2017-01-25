.class public Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;
.super Ljava/lang/Object;
.source "GridDeploymentInfoBean.java"

# interfaces
.implements Lorg/apache/ignite/plugin/extensions/communication/Message;
.implements Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

.field private depMode:Lorg/apache/ignite/configuration/DeploymentMode;

.field private locDepOwner:Z

.field private participants:Ljava/util/Map;
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

.field private userVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;)V
    .locals 1
    .param p1, "dep"    # Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 83
    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->deployMode()Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 84
    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->userVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->userVer:Ljava/lang/String;

    .line 85
    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->localDeploymentOwner()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->locDepOwner:Z

    .line 86
    invoke-interface {p1}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfo;->participants()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->participants:Ljava/util/Map;

    .line 87
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/lang/IgniteUuid;Ljava/lang/String;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/util/Map;Z)V
    .locals 0
    .param p1, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p2, "userVer"    # Ljava/lang/String;
    .param p3, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p5, "locDepOwner"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            "Ljava/lang/String;",
            "Lorg/apache/ignite/configuration/DeploymentMode;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "Lorg/apache/ignite/lang/IgniteUuid;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p4, "participants":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 72
    iput-object p3, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 73
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->userVer:Ljava/lang/String;

    .line 74
    iput-object p4, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->participants:Ljava/util/Map;

    .line 75
    iput-boolean p5, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->locDepOwner:Z

    .line 76
    return-void
.end method


# virtual methods
.method public classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public deployMode()Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    return-object v0
.end method

.method public directType()B
    .locals 1

    .prologue
    .line 245
    const/16 v0, 0xa

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 135
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    check-cast p1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0, v1}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fieldsCount()B
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x5

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v0

    return v0
.end method

.method public localDeploymentOwner(Z)V
    .locals 0
    .param p1, "locDepOwner"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->locDepOwner:Z

    .line 126
    return-void
.end method

.method public localDeploymentOwner()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->locDepOwner:Z

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
    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->participants:Ljava/util/Map;

    return-object v0
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
    .line 264
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 265
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/configuration/DeploymentMode;->fromOrdinal(I)Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 266
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->userVer:Ljava/lang/String;

    .line 267
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->locDepOwner:Z

    .line 268
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readMap(Ljava/io/ObjectInput;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->participants:Ljava/util/Map;

    .line 269
    return-void
.end method

.method public readFrom(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageReader;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "reader"    # Lorg/apache/ignite/plugin/extensions/communication/MessageReader;

    .prologue
    const/4 v1, 0x0

    .line 188
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 190
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->beforeMessageRead()Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->state()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 240
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 195
    :pswitch_0
    const-string v2, "clsLdrId"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readIgniteUuid(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 197
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 205
    :pswitch_1
    const-string v2, "depMode"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readByte(Ljava/lang/String;)B

    move-result v0

    .line 207
    .local v0, "depModeOrd":B
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    invoke-static {v0}, Lorg/apache/ignite/configuration/DeploymentMode;->fromOrdinal(I)Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 212
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 215
    .end local v0    # "depModeOrd":B
    :pswitch_2
    const-string v2, "locDepOwner"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->locDepOwner:Z

    .line 217
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 223
    :pswitch_3
    const-string v2, "participants"

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->IGNITE_UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v2, v3, v4, v1}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readMap(Ljava/lang/String;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Z)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->participants:Ljava/util/Map;

    .line 225
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    .line 231
    :pswitch_4
    const-string/jumbo v2, "userVer"

    invoke-interface {p2, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->userVer:Ljava/lang/String;

    .line 233
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->isLastRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageReader;->incrementState()V

    goto :goto_1

    .line 193
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

.method public sequenceNumber()J
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v0}, Lorg/apache/ignite/lang/IgniteUuid;->localId()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const-class v0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->userVer:Ljava/lang/String;

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
    .line 255
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 256
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeEnum(Ljava/io/DataOutput;Ljava/lang/Enum;)V

    .line 257
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->userVer:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 258
    iget-boolean v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->locDepOwner:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 259
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->participants:Ljava/util/Map;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeMap(Ljava/io/ObjectOutput;Ljava/util/Map;)V

    .line 260
    return-void
.end method

.method public writeTo(Ljava/nio/ByteBuffer;Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;)Z
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "writer"    # Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-interface {p2, p1}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 143
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->isHeaderWritten()Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->directType()B

    move-result v0

    invoke-virtual {p0}, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->fieldsCount()B

    move-result v2

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeHeader(BB)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 183
    :goto_0
    return v0

    .line 147
    :cond_0
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->onHeaderWritten()V

    .line 150
    :cond_1
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->state()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 183
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 152
    :pswitch_0
    const-string v0, "clsLdrId"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeIgniteUuid(Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 153
    goto :goto_0

    .line 155
    :cond_2
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 158
    :pswitch_1
    const-string v2, "depMode"

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/DeploymentMode;->ordinal()I

    move-result v0

    int-to-byte v0, v0

    :goto_2
    invoke-interface {p2, v2, v0}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeByte(Ljava/lang/String;B)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 159
    goto :goto_0

    .line 158
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    .line 161
    :cond_4
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 164
    :pswitch_2
    const-string v0, "locDepOwner"

    iget-boolean v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->locDepOwner:Z

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 165
    goto :goto_0

    .line 167
    :cond_5
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 170
    :pswitch_3
    const-string v0, "participants"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->participants:Ljava/util/Map;

    sget-object v3, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    sget-object v4, Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;->IGNITE_UUID:Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;

    invoke-interface {p2, v0, v2, v3, v4}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeMap(Ljava/lang/String;Ljava/util/Map;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;Lorg/apache/ignite/plugin/extensions/communication/MessageCollectionItemType;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 171
    goto :goto_0

    .line 173
    :cond_6
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    .line 176
    :pswitch_4
    const-string/jumbo v0, "userVer"

    iget-object v2, p0, Lorg/apache/ignite/internal/managers/deployment/GridDeploymentInfoBean;->userVer:Ljava/lang/String;

    invoke-interface {p2, v0, v2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    .line 177
    goto :goto_0

    .line 179
    :cond_7
    invoke-interface {p2}, Lorg/apache/ignite/plugin/extensions/communication/MessageWriter;->incrementState()V

    goto :goto_1

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
