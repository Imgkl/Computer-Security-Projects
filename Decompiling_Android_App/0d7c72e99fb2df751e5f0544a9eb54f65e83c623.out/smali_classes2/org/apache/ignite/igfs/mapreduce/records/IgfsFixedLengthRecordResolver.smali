.class public Lorg/apache/ignite/igfs/mapreduce/records/IgfsFixedLengthRecordResolver;
.super Ljava/lang/Object;
.source "IgfsFixedLengthRecordResolver.java"

# interfaces
.implements Lorg/apache/ignite/igfs/mapreduce/IgfsRecordResolver;
.implements Ljava/io/Externalizable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private recLen:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsFixedLengthRecordResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsFixedLengthRecordResolver;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "recLen"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-wide p1, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsFixedLengthRecordResolver;->recLen:J

    .line 52
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
    .line 84
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsFixedLengthRecordResolver;->recLen:J

    .line 85
    return-void
.end method

.method public resolveRecords(Lorg/apache/ignite/IgniteFileSystem;Lorg/apache/ignite/igfs/IgfsInputStream;Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;)Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;
    .locals 14
    .param p1, "fs"    # Lorg/apache/ignite/IgniteFileSystem;
    .param p2, "stream"    # Lorg/apache/ignite/igfs/IgfsInputStream;
    .param p3, "suggestedRecord"    # Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->start()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->length()J

    move-result-wide v4

    add-long v12, v0, v4

    .line 60
    .local v12, "suggestedEnd":J
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->start()J

    move-result-wide v0

    iget-wide v4, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsFixedLengthRecordResolver;->recLen:J

    rem-long v10, v0, v4

    .line 61
    .local v10, "startRem":J
    iget-wide v0, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsFixedLengthRecordResolver;->recLen:J

    rem-long v8, v12, v0

    .line 63
    .local v8, "endRem":J
    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->start()J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsFixedLengthRecordResolver;->recLen:J

    sub-long/2addr v0, v10

    :goto_0
    add-long/2addr v0, v4

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/igfs/IgfsInputStream;->length()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 65
    .local v2, "start":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsFixedLengthRecordResolver;->recLen:J

    sub-long/2addr v0, v8

    :goto_1
    add-long/2addr v0, v12

    invoke-virtual/range {p2 .. p2}, Lorg/apache/ignite/igfs/IgfsInputStream;->length()J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 67
    .local v6, "end":J
    sget-boolean v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsFixedLengthRecordResolver;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    cmp-long v0, v6, v2

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 63
    .end local v2    # "start":J
    .end local v6    # "end":J
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 65
    .restart local v2    # "start":J
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 69
    .restart local v6    # "end":J
    :cond_2
    cmp-long v0, v2, v6

    if-eqz v0, :cond_3

    new-instance v0, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;

    invoke-virtual/range {p3 .. p3}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;->path()Lorg/apache/ignite/igfs/IgfsPath;

    move-result-object v1

    sub-long v4, v6, v2

    invoke-direct/range {v0 .. v5}, Lorg/apache/ignite/igfs/mapreduce/IgfsFileRange;-><init>(Lorg/apache/ignite/igfs/IgfsPath;JJ)V

    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsFixedLengthRecordResolver;

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
    .line 79
    iget-wide v0, p0, Lorg/apache/ignite/igfs/mapreduce/records/IgfsFixedLengthRecordResolver;->recLen:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 80
    return-void
.end method
