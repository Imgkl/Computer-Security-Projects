.class public Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;
.super Ljava/lang/Object;
.source "HadoopTaskInfo.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private attempt:I

.field private inputSplit:Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;

.field private jobId:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

.field private taskNum:I

.field private type:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;IILorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;)V
    .locals 0
    .param p1, "type"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;
    .param p2, "jobId"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;
    .param p3, "taskNum"    # I
    .param p4, "attempt"    # I
    .param p5, "inputSplit"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->type:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    .line 66
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->jobId:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    .line 67
    iput p3, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->taskNum:I

    .line 68
    iput p4, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->attempt:I

    .line 69
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->inputSplit:Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;

    .line 70
    return-void
.end method


# virtual methods
.method public attempt()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->attempt:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 127
    if-ne p0, p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v1

    .line 130
    :cond_1
    instance-of v3, p1, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;

    if-nez v3, :cond_2

    move v1, v2

    .line 131
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 133
    check-cast v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;

    .line 135
    .local v0, "that":Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;
    iget v3, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->attempt:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->attempt:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->taskNum:I

    iget v4, v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->taskNum:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->jobId:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->jobId:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    invoke-virtual {v3, v4}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->type:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->type:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->type:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->hashCode()I

    move-result v0

    .line 142
    .local v0, "res":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->jobId:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    invoke-virtual {v2}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 143
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->taskNum:I

    add-int v0, v1, v2

    .line 144
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->attempt:I

    add-int v0, v1, v2

    .line 146
    return v0
.end method

.method public inputSplit()Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->inputSplit:Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;

    return-object v0
.end method

.method public jobId()Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->jobId:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    return-object v0
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
    .line 83
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->fromOrdinal(B)Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->type:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    .line 84
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->jobId:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    .line 85
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->taskNum:I

    .line 86
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->attempt:I

    .line 87
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->inputSplit:Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;

    .line 88
    return-void
.end method

.method public taskNumber()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->taskNum:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-class v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public type()Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->type:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

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
    .line 74
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->type:Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskType;->ordinal()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 75
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->jobId:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 76
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->taskNum:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 77
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->attempt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopTaskInfo;->inputSplit:Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 79
    return-void
.end method
