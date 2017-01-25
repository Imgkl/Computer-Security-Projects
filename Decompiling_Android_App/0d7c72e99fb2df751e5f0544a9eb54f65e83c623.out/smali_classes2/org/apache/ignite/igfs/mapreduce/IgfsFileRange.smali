.class public Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;
.super Ljava/lang/Object;
.source "IgfsFileRange.java"


# instance fields
.field private len:J

.field private path:Lorg/apache/ignite/igfs/IgfsPath;

.field private start:J


# direct methods
.method public constructor <init>(Lorg/apache/ignite/igfs/IgfsPath;JJ)V
    .locals 0
    .param p1, "path"    # Lorg/apache/ignite/igfs/IgfsPath;
    .param p2, "start"    # J
    .param p4, "len"    # J

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->path:Lorg/apache/ignite/igfs/IgfsPath;

    .line 45
    iput-wide p2, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->start:J

    .line 46
    iput-wide p4, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->len:J

    .line 47
    return-void
.end method


# virtual methods
.method public length()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->len:J

    return-wide v0
.end method

.method public path()Lorg/apache/ignite/igfs/IgfsPath;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->path:Lorg/apache/ignite/igfs/IgfsPath;

    return-object v0
.end method

.method public start()J
    .locals 2

    .prologue
    .line 64
    iget-wide v0, p0, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->start:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
