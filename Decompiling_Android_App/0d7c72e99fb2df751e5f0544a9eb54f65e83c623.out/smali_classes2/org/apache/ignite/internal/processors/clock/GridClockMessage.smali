.class public Lorg/apache/ignite/internal/processors/clock/GridClockMessage;
.super Ljava/lang/Object;
.source "GridClockMessage.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final PACKET_SIZE:I = 0x30


# instance fields
.field private origNodeId:Ljava/util/UUID;

.field private origTs:J

.field private replyTs:J

.field private targetNodeId:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;JJ)V
    .locals 1
    .param p1, "origNodeId"    # Ljava/util/UUID;
    .param p2, "targetNodeId"    # Ljava/util/UUID;
    .param p3, "origTs"    # J
    .param p5, "replyTs"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->origNodeId:Ljava/util/UUID;

    .line 52
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->targetNodeId:Ljava/util/UUID;

    .line 53
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->origTs:J

    .line 54
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->replyTs:J

    .line 55
    return-void
.end method

.method public static fromBytes([BII)Lorg/apache/ignite/internal/processors/clock/GridClockMessage;
    .locals 12
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation

    .prologue
    .line 148
    const/16 v0, 0x30

    if-ge p2, v0, :cond_0

    .line 149
    new-instance v0, Lorg/apache/ignite/IgniteCheckedException;

    const-string v1, "Failed to assemble time server packet (message is too short)."

    invoke-direct {v0, v1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v8

    .line 152
    .local v8, "lsb":J
    add-int/lit8 v0, p1, 0x8

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v10

    .line 154
    .local v10, "msb":J
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v10, v11, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 156
    .local v2, "origNodeId":Ljava/util/UUID;
    add-int/lit8 v0, p1, 0x10

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v8

    .line 157
    add-int/lit8 v0, p1, 0x18

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v10

    .line 159
    new-instance v3, Ljava/util/UUID;

    invoke-direct {v3, v10, v11, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 161
    .local v3, "targetNodeId":Ljava/util/UUID;
    add-int/lit8 v0, p1, 0x20

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v4

    .line 162
    .local v4, "origTs":J
    add-int/lit8 v0, p1, 0x28

    invoke-static {p0, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->bytesToLong([BI)J

    move-result-wide v6

    .line 164
    .local v6, "replyTs":J
    new-instance v1, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;

    invoke-direct/range {v1 .. v7}, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;-><init>(Ljava/util/UUID;Ljava/util/UUID;JJ)V

    return-object v1
.end method


# virtual methods
.method public originatingNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->origNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public originatingNodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "origNodeId"    # Ljava/util/UUID;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->origNodeId:Ljava/util/UUID;

    .line 69
    return-void
.end method

.method public originatingTimestamp()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->origTs:J

    return-wide v0
.end method

.method public originatingTimestamp(J)V
    .locals 1
    .param p1, "origTs"    # J

    .prologue
    .line 96
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->origTs:J

    .line 97
    return-void
.end method

.method public replyTimestamp()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->replyTs:J

    return-wide v0
.end method

.method public replyTimestamp(J)V
    .locals 1
    .param p1, "replyTs"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->replyTs:J

    .line 111
    return-void
.end method

.method public targetNodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->targetNodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public targetNodeId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "targetNodeId"    # Ljava/util/UUID;

    .prologue
    .line 82
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->targetNodeId:Ljava/util/UUID;

    .line 83
    return-void
.end method

.method public toBytes()[B
    .locals 5

    .prologue
    const/16 v4, 0x30

    .line 119
    new-array v0, v4, [B

    .line 121
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 123
    .local v1, "off":I
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->origNodeId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result v1

    .line 124
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->origNodeId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result v1

    .line 126
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->targetNodeId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result v1

    .line 127
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->targetNodeId:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result v1

    .line 129
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->origTs:J

    invoke-static {v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result v1

    .line 131
    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->replyTs:J

    invoke-static {v2, v3, v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->longToBytes(J[BI)I

    move-result v1

    .line 133
    sget-boolean v2, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-eq v1, v4, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 135
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const-class v0, Lorg/apache/ignite/internal/processors/clock/GridClockMessage;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
