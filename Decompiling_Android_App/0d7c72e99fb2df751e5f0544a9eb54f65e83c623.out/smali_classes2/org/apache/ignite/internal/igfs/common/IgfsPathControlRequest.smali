.class public Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;
.super Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
.source "IgfsPathControlRequest.java"


# instance fields
.field private accessTime:J

.field private blockSize:J

.field private colocate:Z

.field private destPath:Lorg/apache/ignite/igfs/IgfsPath;

.field private flag:Z

.field private len:J

.field private modificationTime:J

.field private path:Lorg/apache/ignite/igfs/IgfsPath;

.field private props:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private replication:I

.field private seqReadsBeforePrefetch:I

.field private start:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public accessTime()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->accessTime:J

    return-wide v0
.end method

.method public accessTime(J)V
    .locals 1
    .param p1, "accessTime"    # J

    .prologue
    .line 140
    iput-wide p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->accessTime:J

    .line 141
    return-void
.end method

.method public blockSize()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->blockSize:J

    return-wide v0
.end method

.method public blockSize(J)V
    .locals 1
    .param p1, "blockSize"    # J

    .prologue
    .line 105
    iput-wide p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->blockSize:J

    .line 106
    return-void
.end method

.method public colocate(Z)V
    .locals 0
    .param p1, "colocate"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->colocate:Z

    .line 92
    return-void
.end method

.method public colocate()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->colocate:Z

    return v0
.end method

.method public destinationPath()Lorg/apache/ignite/igfs/IgfsPath;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->destPath:Lorg/apache/ignite/igfs/IgfsPath;

    return-object v0
.end method

.method public destinationPath(Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0
    .param p1, "destPath"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->destPath:Lorg/apache/ignite/igfs/IgfsPath;

    .line 78
    return-void
.end method

.method public flag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->flag:Z

    .line 85
    return-void
.end method

.method public flag()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->flag:Z

    return v0
.end method

.method public length()J
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->len:J

    return-wide v0
.end method

.method public length(J)V
    .locals 1
    .param p1, "len"    # J

    .prologue
    .line 133
    iput-wide p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->len:J

    .line 134
    return-void
.end method

.method public modificationTime()J
    .locals 2

    .prologue
    .line 231
    iget-wide v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->modificationTime:J

    return-wide v0
.end method

.method public modificationTime(J)V
    .locals 1
    .param p1, "modificationTime"    # J

    .prologue
    .line 147
    iput-wide p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->modificationTime:J

    .line 148
    return-void
.end method

.method public path()Lorg/apache/ignite/igfs/IgfsPath;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path:Lorg/apache/ignite/igfs/IgfsPath;

    return-object v0
.end method

.method public path(Lorg/apache/ignite/igfs/IgfsPath;)V
    .locals 0
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;

    .prologue
    .line 70
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 71
    return-void
.end method

.method public properties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->props:Ljava/util/Map;

    return-object v0
.end method

.method public properties(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->props:Ljava/util/Map;

    .line 113
    return-void
.end method

.method public replication()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->replication:I

    return v0
.end method

.method public replication(I)V
    .locals 0
    .param p1, "replication"    # I

    .prologue
    .line 98
    iput p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->replication:I

    .line 99
    return-void
.end method

.method public sequentialReadsBeforePrefetch()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->seqReadsBeforePrefetch:I

    return v0
.end method

.method public sequentialReadsBeforePrefetch(I)V
    .locals 0
    .param p1, "seqReadsBeforePrefetch"    # I

    .prologue
    .line 119
    iput p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->seqReadsBeforePrefetch:I

    .line 120
    return-void
.end method

.method public start()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->start:J

    return-wide v0
.end method

.method public start(J)V
    .locals 1
    .param p1, "start"    # J

    .prologue
    .line 126
    iput-wide p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->start:J

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    const-class v0, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;

    const-string v1, "cmd"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/igfs/common/IgfsPathControlRequest;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
