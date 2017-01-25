.class public Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;
.super Ljava/lang/Object;
.source "IgfsInputStreamDescriptor.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private len:J

.field private streamId:J


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
    .param p1, "streamId"    # J
    .param p3, "len"    # J

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;->streamId:J

    .line 50
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;->len:J

    .line 51
    return-void
.end method


# virtual methods
.method public length()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;->len:J

    return-wide v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;->streamId:J

    .line 76
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;->len:J

    .line 77
    return-void
.end method

.method public streamId()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;->streamId:J

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
    .line 69
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;->streamId:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 70
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/igfs/IgfsInputStreamDescriptor;->len:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 71
    return-void
.end method
