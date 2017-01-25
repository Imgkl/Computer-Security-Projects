.class Lorg/apache/ignite/internal/GridTopic$T5;
.super Ljava/lang/Object;
.source "GridTopic.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/GridTopic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "T5"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private id1:Ljava/util/UUID;

.field private id2:I

.field private id3:J

.field private topic:Lorg/apache/ignite/internal/GridTopic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/GridTopic;Ljava/util/UUID;IJ)V
    .locals 0
    .param p1, "topic"    # Lorg/apache/ignite/internal/GridTopic;
    .param p2, "id1"    # Ljava/util/UUID;
    .param p3, "id2"    # I
    .param p4, "id3"    # J

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p1, p0, Lorg/apache/ignite/internal/GridTopic$T5;->topic:Lorg/apache/ignite/internal/GridTopic;

    .line 492
    iput-object p2, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id1:Ljava/util/UUID;

    .line 493
    iput p3, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id2:I

    .line 494
    iput-wide p4, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id3:J

    .line 495
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/GridTopic;Ljava/util/UUID;IJLorg/apache/ignite/internal/GridTopic$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/GridTopic;
    .param p2, "x1"    # Ljava/util/UUID;
    .param p3, "x2"    # I
    .param p4, "x3"    # J
    .param p6, "x4"    # Lorg/apache/ignite/internal/GridTopic$1;

    .prologue
    .line 461
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/GridTopic$T5;-><init>(Lorg/apache/ignite/internal/GridTopic;Ljava/util/UUID;IJ)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 504
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/ignite/internal/GridTopic$T5;

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 505
    check-cast v0, Lorg/apache/ignite/internal/GridTopic$T5;

    .line 507
    .local v0, "that":Lorg/apache/ignite/internal/GridTopic$T5;
    iget-object v2, p0, Lorg/apache/ignite/internal/GridTopic$T5;->topic:Lorg/apache/ignite/internal/GridTopic;

    iget-object v3, v0, Lorg/apache/ignite/internal/GridTopic$T5;->topic:Lorg/apache/ignite/internal/GridTopic;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id1:Ljava/util/UUID;

    iget-object v3, v0, Lorg/apache/ignite/internal/GridTopic$T5;->id1:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id2:I

    iget v3, v0, Lorg/apache/ignite/internal/GridTopic$T5;->id2:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id3:J

    iget-wide v4, v0, Lorg/apache/ignite/internal/GridTopic$T5;->id3:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 510
    .end local v0    # "that":Lorg/apache/ignite/internal/GridTopic$T5;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 499
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T5;->topic:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTopic;->ordinal()I

    move-result v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id1:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id2:I

    add-int/2addr v0, v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id3:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id3:J

    const/16 v1, 0x20

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    return v0
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
    .line 523
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/GridTopic;->fromOrdinal(I)Lorg/apache/ignite/internal/GridTopic;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T5;->topic:Lorg/apache/ignite/internal/GridTopic;

    .line 524
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id1:Ljava/util/UUID;

    .line 525
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id2:I

    .line 526
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id3:J

    .line 527
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 531
    const-class v0, Lorg/apache/ignite/internal/GridTopic$T5;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 515
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T5;->topic:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTopic;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 516
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id1:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 517
    iget v0, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id2:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 518
    iget-wide v0, p0, Lorg/apache/ignite/internal/GridTopic$T5;->id3:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 519
    return-void
.end method
