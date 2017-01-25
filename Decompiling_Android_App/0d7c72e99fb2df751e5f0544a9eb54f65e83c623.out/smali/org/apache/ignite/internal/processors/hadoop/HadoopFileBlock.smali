.class public Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;
.super Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;
.source "HadoopFileBlock.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected file:Ljava/net/URI;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected len:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected start:J
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/net/URI;JJ)V
    .locals 3
    .param p1, "hosts"    # [Ljava/lang/String;
    .param p2, "file"    # Ljava/net/URI;
    .param p3, "start"    # J
    .param p5, "len"    # J

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;-><init>()V

    .line 62
    const-string v0, "hosts"

    const-string v1, "file"

    invoke-static {p1, v0, p2, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->hosts:[Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->file:Ljava/net/URI;

    .line 66
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->start:J

    .line 67
    iput-wide p5, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->len:J

    .line 68
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    if-ne p0, p1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return v1

    .line 140
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;

    if-nez v3, :cond_2

    move v1, v2

    .line 141
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 143
    check-cast v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;

    .line 145
    .local v0, "that":Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;
    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->len:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->len:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->start:J

    iget-wide v6, v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->start:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->file:Ljava/net/URI;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->file:Ljava/net/URI;

    invoke-virtual {v3, v4}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public file()Ljava/net/URI;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->file:Ljava/net/URI;

    return-object v0
.end method

.method public file(Ljava/net/URI;)V
    .locals 0
    .param p1, "file"    # Ljava/net/URI;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->file:Ljava/net/URI;

    .line 124
    return-void
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/16 v6, 0x20

    .line 150
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->file:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->hashCode()I

    move-result v0

    .line 152
    .local v0, "res":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->start:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->start:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 153
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->len:J

    iget-wide v4, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->len:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 155
    return v0
.end method

.method public hosts([Ljava/lang/String;)V
    .locals 1
    .param p1, "hosts"    # [Ljava/lang/String;

    .prologue
    .line 130
    const-string v0, "hosts"

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->hosts:[Ljava/lang/String;

    .line 133
    return-void
.end method

.method public length()J
    .locals 2

    .prologue
    .line 88
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->len:J

    return-wide v0
.end method

.method public length(J)V
    .locals 1
    .param p1, "len"    # J

    .prologue
    .line 95
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->len:J

    .line 96
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
    .line 79
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URI;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->file:Ljava/net/URI;

    .line 80
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->start:J

    .line 81
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->len:J

    .line 82
    return-void
.end method

.method public start()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->start:J

    return-wide v0
.end method

.method public start(J)V
    .locals 1
    .param p1, "start"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->start:J

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    const-class v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;

    const-string v1, "hosts"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->hosts:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

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
    .line 72
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->file()Ljava/net/URI;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->start()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 74
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/hadoop/HadoopFileBlock;->length()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 75
    return-void
.end method
