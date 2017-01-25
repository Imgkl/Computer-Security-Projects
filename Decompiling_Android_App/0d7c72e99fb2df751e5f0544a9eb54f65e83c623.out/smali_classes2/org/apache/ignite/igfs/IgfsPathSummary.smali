.class public Lorg/apache/ignite/igfs/IgfsPathSummary;
.super Ljava/lang/Object;
.source "IgfsPathSummary.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private dirCnt:I

.field private filesCnt:I

.field private path:Lorg/apache/ignite/igfs/IgfsPath;

.field private totalLen:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 57
    return-void
.end method


# virtual methods
.method public directoriesCount()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->dirCnt:I

    return v0
.end method

.method public directoriesCount(I)V
    .locals 0
    .param p1, "dirCnt"    # I

    .prologue
    .line 84
    iput p1, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->dirCnt:I

    .line 85
    return-void
.end method

.method public filesCount()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->filesCnt:I

    return v0
.end method

.method public filesCount(I)V
    .locals 0
    .param p1, "filesCnt"    # I

    .prologue
    .line 70
    iput p1, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->filesCnt:I

    .line 71
    return-void
.end method

.method public path()Lorg/apache/ignite/igfs/IgfsPath;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->path:Lorg/apache/ignite/igfs/IgfsPath;

    return-object v0
.end method

.method public path(Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 113
    return-void
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
    .line 126
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->filesCnt:I

    .line 127
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->dirCnt:I

    .line 128
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->totalLen:J

    .line 130
    new-instance v0, Lorg/apache/ignite/igfs/IgfsPath;

    invoke-direct {v0}, Lorg/apache/ignite/igfs/IgfsPath;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 131
    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/igfs/IgfsPath;->readExternal(Ljava/io/ObjectInput;)V

    .line 132
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-class v0, Lorg/apache/ignite/igfs/IgfsPathSummary;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalLength()J
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->totalLen:J

    return-wide v0
.end method

.method public totalLength(J)V
    .locals 1
    .param p1, "totalLen"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->totalLen:J

    .line 99
    return-void
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
    .line 117
    iget v0, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->filesCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 118
    iget v0, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->dirCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 119
    iget-wide v0, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->totalLen:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 121
    iget-object v0, p0, Lorg/apache/ignite/igfs/IgfsPathSummary;->path:Lorg/apache/ignite/igfs/IgfsPath;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/igfs/IgfsPath;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 122
    return-void
.end method
