.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;
.super Ljava/lang/Object;
.source "GridClientTaskResultBean.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private error:Ljava/lang/String;

.field private finished:Z

.field private id:Ljava/lang/String;

.field private res:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()TR;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->res:Ljava/lang/Object;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->finished:Z

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
    .line 110
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->id:Ljava/lang/String;

    .line 111
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->finished:Z

    .line 112
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->res:Ljava/lang/Object;

    .line 113
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->error:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->error:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->finished:Z

    .line 69
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->id:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "res"    # Ljava/lang/Object;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->res:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [res="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->res:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->error:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", finished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->finished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 102
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->id:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 103
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->finished:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 104
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->res:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 105
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskResultBean;->error:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 106
    return-void
.end method
