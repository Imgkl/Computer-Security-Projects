.class public Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;
.super Ljava/lang/Object;
.source "IpcSharedMemoryInitResponse.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private err:Ljava/lang/Exception;

.field private inSharedMemId:I

.field private inTokFileName:Ljava/lang/String;

.field private outSharedMemId:I

.field private outTokFileName:Ljava/lang/String;

.field private pid:I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "err"    # Ljava/lang/Exception;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->err:Ljava/lang/Exception;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .param p1, "inTokFileName"    # Ljava/lang/String;
    .param p2, "inSharedMemId"    # I
    .param p3, "outTokFileName"    # Ljava/lang/String;
    .param p4, "outSharedMemId"    # I
    .param p5, "pid"    # I
    .param p6, "size"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->inTokFileName:Ljava/lang/String;

    .line 66
    iput p2, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->inSharedMemId:I

    .line 67
    iput-object p3, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->outTokFileName:Ljava/lang/String;

    .line 68
    iput p4, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->outSharedMemId:I

    .line 69
    iput p5, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->pid:I

    .line 70
    iput p6, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->size:I

    .line 71
    return-void
.end method


# virtual methods
.method public error()Ljava/lang/Exception;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->err:Ljava/lang/Exception;

    return-object v0
.end method

.method public inSharedMemoryId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->inSharedMemId:I

    return v0
.end method

.method public inTokenFileName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->inTokFileName:Ljava/lang/String;

    return-object v0
.end method

.method public outSharedMemoryId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->outSharedMemId:I

    return v0
.end method

.method public outTokenFileName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->outTokFileName:Ljava/lang/String;

    return-object v0
.end method

.method public pid()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->pid:I

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
    .line 152
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->inTokFileName:Ljava/lang/String;

    .line 153
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->inSharedMemId:I

    .line 154
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->outTokFileName:Ljava/lang/String;

    .line 155
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->outSharedMemId:I

    .line 156
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->err:Ljava/lang/Exception;

    .line 157
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->pid:I

    .line 158
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->size:I

    .line 159
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IpcSharedMemoryInitResponse [err="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->err:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inTokFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->inTokFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", inSharedMemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->inSharedMemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outTokFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->outTokFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", outSharedMemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->outSharedMemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    .line 141
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->inTokFileName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 142
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->inSharedMemId:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 143
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->outTokFileName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 144
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->outSharedMemId:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 145
    iget-object v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->err:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 146
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->pid:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 147
    iget v0, p0, Lorg/apache/ignite/internal/util/ipc/shmem/IpcSharedMemoryInitResponse;->size:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 148
    return-void
.end method
