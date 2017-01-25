.class public Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;
.super Ljava/lang/Object;
.source "HadoopJobId.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private jobId:I

.field private nodeId:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;I)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "jobId"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->nodeId:Ljava/util/UUID;

    .line 52
    iput p2, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->jobId:I

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v1

    .line 80
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 81
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 83
    check-cast v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    .line 85
    .local v0, "that":Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;
    iget v3, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->jobId:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->jobId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 86
    goto :goto_0

    .line 88
    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->nodeId:Ljava/util/UUID;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->nodeId:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 89
    goto :goto_0
.end method

.method public globalId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->jobId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public localId()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->jobId:I

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
    .line 71
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->nodeId:Ljava/util/UUID;

    .line 72
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->jobId:I

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->nodeId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->jobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
    .line 65
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->nodeId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 66
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->jobId:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 67
    return-void
.end method
