.class public Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;
.super Ljava/lang/Object;
.source "HadoopJobStatus.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private failed:Z

.field private jobId:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

.field private jobName:Ljava/lang/String;

.field private jobPhase:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

.field private pendingMapperCnt:I

.field private pendingReducerCnt:I

.field private totalMapperCnt:I

.field private totalReducerCnt:I

.field private usr:Ljava/lang/String;

.field private ver:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;Ljava/lang/String;Ljava/lang/String;IIIILorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;ZJ)V
    .locals 0
    .param p1, "jobId"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;
    .param p2, "jobName"    # Ljava/lang/String;
    .param p3, "usr"    # Ljava/lang/String;
    .param p4, "pendingMapperCnt"    # I
    .param p5, "pendingReducerCnt"    # I
    .param p6, "totalMapperCnt"    # I
    .param p7, "totalReducerCnt"    # I
    .param p8, "jobPhase"    # Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;
    .param p9, "failed"    # Z
    .param p10, "ver"    # J

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->jobId:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    .line 94
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->jobName:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->usr:Ljava/lang/String;

    .line 96
    iput p4, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->pendingMapperCnt:I

    .line 97
    iput p5, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->pendingReducerCnt:I

    .line 98
    iput p6, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->totalMapperCnt:I

    .line 99
    iput p7, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->totalReducerCnt:I

    .line 100
    iput-object p8, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->jobPhase:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    .line 101
    iput-boolean p9, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->failed:Z

    .line 102
    iput-wide p10, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->ver:J

    .line 103
    return-void
.end method


# virtual methods
.method public isFailed()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->failed:Z

    return v0
.end method

.method public jobId()Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->jobId:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    return-object v0
.end method

.method public jobName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->jobName:Ljava/lang/String;

    return-object v0
.end method

.method public jobPhase()Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->jobPhase:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    return-object v0
.end method

.method public pendingMapperCnt()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->pendingMapperCnt:I

    return v0
.end method

.method public pendingReducerCnt()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->pendingReducerCnt:I

    return v0
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
    .line 196
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->jobId:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    .line 197
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->jobName:Ljava/lang/String;

    .line 198
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->usr:Ljava/lang/String;

    .line 199
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->pendingMapperCnt:I

    .line 200
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->pendingReducerCnt:I

    .line 201
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->totalMapperCnt:I

    .line 202
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->totalReducerCnt:I

    .line 203
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->jobPhase:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    .line 204
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->failed:Z

    .line 205
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->ver:J

    .line 206
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-class v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalMapperCnt()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->totalMapperCnt:I

    return v0
.end method

.method public totalReducerCnt()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->totalReducerCnt:I

    return v0
.end method

.method public user()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->usr:Ljava/lang/String;

    return-object v0
.end method

.method public version()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->ver:J

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
    .line 182
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->jobId:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobId;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->jobName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->usr:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 185
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->pendingMapperCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 186
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->pendingReducerCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 187
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->totalMapperCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 188
    iget v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->totalReducerCnt:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 189
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->jobPhase:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 190
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->failed:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 191
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobStatus;->ver:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 192
    return-void
.end method
