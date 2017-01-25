.class Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;
.super Ljava/lang/Object;
.source "GridAffinityMessage.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

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

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private src:[B

.field private srcClsName:Ljava/lang/String;

.field private userVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method constructor <init>([BLjava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/configuration/DeploymentMode;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "src"    # [B
    .param p2, "srcClsName"    # Ljava/lang/String;
    .param p3, "clsLdrId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "depMode"    # Lorg/apache/ignite/configuration/DeploymentMode;
    .param p5, "userVer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
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
    .line 68
    .local p6, "ldrParties":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Lorg/apache/ignite/lang/IgniteUuid;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->src:[B

    .line 70
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->srcClsName:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 72
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 73
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->userVer:Ljava/lang/String;

    .line 74
    iput-object p6, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->ldrParties:Ljava/util/Map;

    .line 75
    return-void
.end method


# virtual methods
.method public classLoaderId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public deploymentMode()Lorg/apache/ignite/configuration/DeploymentMode;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    return-object v0
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

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->ldrParties:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->ldrParties:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 140
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readByteArray(Ljava/io/DataInput;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->src:[B

    .line 142
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/configuration/DeploymentMode;->fromOrdinal(I)Lorg/apache/ignite/configuration/DeploymentMode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    .line 144
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 145
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->srcClsName:Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->userVer:Ljava/lang/String;

    .line 147
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readMap(Ljava/io/ObjectInput;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->ldrParties:Ljava/util/Map;

    .line 148
    return-void
.end method

.method public source()[B
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->src:[B

    return-object v0
.end method

.method public sourceClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->srcClsName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-class v0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public userVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->userVer:Ljava/lang/String;

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
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->src:[B

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeByteArray(Ljava/io/DataOutput;[B)V

    .line 130
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->depMode:Lorg/apache/ignite/configuration/DeploymentMode;

    invoke-virtual {v0}, Lorg/apache/ignite/configuration/DeploymentMode;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 132
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->clsLdrId:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 133
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->srcClsName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->userVer:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/affinity/GridAffinityMessage;->ldrParties:Ljava/util/Map;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeMap(Ljava/io/ObjectOutput;Ljava/util/Map;)V

    .line 136
    return-void
.end method
