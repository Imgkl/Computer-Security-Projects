.class public Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;
.super Ljava/lang/Object;
.source "IgfsStatus.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private spaceTotal:J

.field private spaceUsed:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "spaceUsed"    # J
    .param p3, "spaceTotal"    # J

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;->spaceUsed:J

    .line 48
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;->spaceTotal:J

    .line 49
    return-void
.end method


# virtual methods
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
    .line 73
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;->spaceUsed:J

    .line 74
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;->spaceTotal:J

    .line 75
    return-void
.end method

.method public spaceTotal()J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;->spaceTotal:J

    return-wide v0
.end method

.method public spaceUsed()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;->spaceUsed:J

    return-wide v0
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
    .line 67
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;->spaceUsed:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 68
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsStatus;->spaceTotal:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 69
    return-void
.end method
