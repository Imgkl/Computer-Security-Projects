.class public Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;
.super Lorg/apache/ignite/internal/igfs/common/IgfsMessage;
.source "IgfsStreamControlRequest.java"


# instance fields
.field private data:[B
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringExclude;
    .end annotation
.end field

.field private len:I

.field private pos:J

.field private streamId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/apache/ignite/internal/igfs/common/IgfsMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public data([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 65
    iput-object p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->data:[B

    .line 66
    return-void
.end method

.method public data()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->data:[B

    return-object v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->len:I

    return v0
.end method

.method public length(I)V
    .locals 0
    .param p1, "len"    # I

    .prologue
    .line 93
    iput p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->len:I

    .line 94
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->pos:J

    return-wide v0
.end method

.method public position(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->pos:J

    .line 80
    return-void
.end method

.method public streamId()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->streamId:J

    return-wide v0
.end method

.method public streamId(J)V
    .locals 1
    .param p1, "streamId"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->streamId:J

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 98
    const-class v0, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;

    const-string v2, "cmd"

    invoke-virtual {p0}, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->command()Lorg/apache/ignite/internal/igfs/common/IgfsIpcCommand;

    move-result-object v3

    const-string v4, "dataLen"

    iget-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->data:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/apache/ignite/internal/igfs/common/IgfsStreamControlRequest;->data:[B

    array-length v1, v1

    goto :goto_0
.end method
