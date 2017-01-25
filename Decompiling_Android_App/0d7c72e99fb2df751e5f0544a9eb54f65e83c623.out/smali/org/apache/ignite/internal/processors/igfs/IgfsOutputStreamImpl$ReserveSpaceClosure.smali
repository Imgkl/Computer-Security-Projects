.class final Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;
.super Ljava/lang/Object;
.source "IgfsOutputStreamImpl.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReserveSpaceClosure"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
        "Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private range:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

.field private space:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    return-void
.end method

.method private constructor <init>(JLorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)V
    .locals 1
    .param p1, "space"    # J
    .param p3, "range"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;->space:J

    .line 467
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;->range:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 468
    return-void
.end method

.method synthetic constructor <init>(JLorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;
    .param p4, "x2"    # Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$1;

    .prologue
    .line 440
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;-><init>(JLorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 439
    check-cast p1, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;->apply(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    move-result-object v0

    return-object v0
.end method

.method public apply(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;)Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    .locals 8
    .param p1, "oldInfo"    # Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    .prologue
    .line 472
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap()Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    move-result-object v1

    .line 474
    .local v1, "oldMap":Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
    new-instance v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;

    invoke-direct {v0, v1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;)V

    .line 476
    .local v0, "newMap":Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;->range:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    invoke-virtual {v0, v3}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;->addRange(Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;)V

    .line 479
    new-instance v2, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;

    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->length()J

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;->space:J

    add-long/2addr v4, v6

    invoke-direct {v2, p1, v4, v5}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;-><init>(Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;J)V

    .line 481
    .local v2, "updated":Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;
    invoke-virtual {v2, v0}, Lorg/apache/ignite/internal/processors/igfs/IgfsFileInfo;->fileMap(Lorg/apache/ignite/internal/processors/igfs/IgfsFileMap;)V

    .line 483
    return-object v2
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
    .line 494
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;->space:J

    .line 495
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;->range:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    .line 496
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    const-class v0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;

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
    .line 488
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;->space:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 489
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsOutputStreamImpl$ReserveSpaceClosure;->range:Lorg/apache/ignite/internal/processors/igfs/IgfsFileAffinityRange;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 490
    return-void
.end method
