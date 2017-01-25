.class Lorg/apache/ignite/internal/GridTopic$T8;
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
    name = "T8"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private id1:Lorg/apache/ignite/lang/IgniteUuid;

.field private id2:J

.field private topic:Lorg/apache/ignite/internal/GridTopic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/lang/IgniteUuid;J)V
    .locals 1
    .param p1, "topic"    # Lorg/apache/ignite/internal/GridTopic;
    .param p2, "id1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "id2"    # J

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput-object p1, p0, Lorg/apache/ignite/internal/GridTopic$T8;->topic:Lorg/apache/ignite/internal/GridTopic;

    .line 720
    iput-object p2, p0, Lorg/apache/ignite/internal/GridTopic$T8;->id1:Lorg/apache/ignite/lang/IgniteUuid;

    .line 721
    iput-wide p3, p0, Lorg/apache/ignite/internal/GridTopic$T8;->id2:J

    .line 722
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/lang/IgniteUuid;JLorg/apache/ignite/internal/GridTopic$1;)V
    .locals 1
    .param p1, "x0"    # Lorg/apache/ignite/internal/GridTopic;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p3, "x2"    # J
    .param p5, "x3"    # Lorg/apache/ignite/internal/GridTopic$1;

    .prologue
    .line 693
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/GridTopic$T8;-><init>(Lorg/apache/ignite/internal/GridTopic;Lorg/apache/ignite/lang/IgniteUuid;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 731
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/ignite/internal/GridTopic$T8;

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 732
    check-cast v0, Lorg/apache/ignite/internal/GridTopic$T8;

    .line 734
    .local v0, "that":Lorg/apache/ignite/internal/GridTopic$T8;
    iget-object v2, p0, Lorg/apache/ignite/internal/GridTopic$T8;->topic:Lorg/apache/ignite/internal/GridTopic;

    iget-object v3, v0, Lorg/apache/ignite/internal/GridTopic$T8;->topic:Lorg/apache/ignite/internal/GridTopic;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/GridTopic$T8;->id1:Lorg/apache/ignite/lang/IgniteUuid;

    iget-object v3, v0, Lorg/apache/ignite/internal/GridTopic$T8;->id1:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v2, v3}, Lorg/apache/ignite/lang/IgniteUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lorg/apache/ignite/internal/GridTopic$T8;->id2:J

    iget-wide v4, v0, Lorg/apache/ignite/internal/GridTopic$T8;->id2:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 737
    .end local v0    # "that":Lorg/apache/ignite/internal/GridTopic$T8;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 726
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T8;->topic:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTopic;->ordinal()I

    move-result v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridTopic$T8;->id1:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-virtual {v1}, Lorg/apache/ignite/lang/IgniteUuid;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lorg/apache/ignite/internal/GridTopic$T8;->id2:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/GridTopic$T8;->id2:J

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
    .line 749
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/GridTopic;->fromOrdinal(I)Lorg/apache/ignite/internal/GridTopic;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T8;->topic:Lorg/apache/ignite/internal/GridTopic;

    .line 750
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readGridUuid(Ljava/io/DataInput;)Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T8;->id1:Lorg/apache/ignite/lang/IgniteUuid;

    .line 751
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/GridTopic$T8;->id2:J

    .line 752
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    const-class v0, Lorg/apache/ignite/internal/GridTopic$T8;

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
    .line 742
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T8;->topic:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTopic;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 743
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T8;->id1:Lorg/apache/ignite/lang/IgniteUuid;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeGridUuid(Ljava/io/DataOutput;Lorg/apache/ignite/lang/IgniteUuid;)V

    .line 744
    iget-wide v0, p0, Lorg/apache/ignite/internal/GridTopic$T8;->id2:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 745
    return-void
.end method
