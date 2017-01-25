.class Lorg/apache/ignite/internal/GridTopic$T3;
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
    name = "T3"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private id1:Ljava/util/UUID;

.field private topic:Lorg/apache/ignite/internal/GridTopic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/GridTopic;Ljava/util/UUID;)V
    .locals 0
    .param p1, "topic"    # Lorg/apache/ignite/internal/GridTopic;
    .param p2, "id1"    # Ljava/util/UUID;

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    iput-object p1, p0, Lorg/apache/ignite/internal/GridTopic$T3;->topic:Lorg/apache/ignite/internal/GridTopic;

    .line 344
    iput-object p2, p0, Lorg/apache/ignite/internal/GridTopic$T3;->id1:Ljava/util/UUID;

    .line 345
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/GridTopic;Ljava/util/UUID;Lorg/apache/ignite/internal/GridTopic$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/GridTopic;
    .param p2, "x1"    # Ljava/util/UUID;
    .param p3, "x2"    # Lorg/apache/ignite/internal/GridTopic$1;

    .prologue
    .line 321
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/GridTopic$T3;-><init>(Lorg/apache/ignite/internal/GridTopic;Ljava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 354
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/apache/ignite/internal/GridTopic$T3;

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 355
    check-cast v0, Lorg/apache/ignite/internal/GridTopic$T3;

    .line 357
    .local v0, "that":Lorg/apache/ignite/internal/GridTopic$T3;
    iget-object v2, p0, Lorg/apache/ignite/internal/GridTopic$T3;->topic:Lorg/apache/ignite/internal/GridTopic;

    iget-object v3, v0, Lorg/apache/ignite/internal/GridTopic$T3;->topic:Lorg/apache/ignite/internal/GridTopic;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/apache/ignite/internal/GridTopic$T3;->id1:Ljava/util/UUID;

    iget-object v3, v0, Lorg/apache/ignite/internal/GridTopic$T3;->id1:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 360
    .end local v0    # "that":Lorg/apache/ignite/internal/GridTopic$T3;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T3;->topic:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTopic;->ordinal()I

    move-result v0

    iget-object v1, p0, Lorg/apache/ignite/internal/GridTopic$T3;->id1:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
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
    .line 371
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/GridTopic;->fromOrdinal(I)Lorg/apache/ignite/internal/GridTopic;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T3;->topic:Lorg/apache/ignite/internal/GridTopic;

    .line 372
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T3;->id1:Ljava/util/UUID;

    .line 373
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    const-class v0, Lorg/apache/ignite/internal/GridTopic$T3;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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
    .line 365
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T3;->topic:Lorg/apache/ignite/internal/GridTopic;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridTopic;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 366
    iget-object v0, p0, Lorg/apache/ignite/internal/GridTopic$T3;->id1:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 367
    return-void
.end method
