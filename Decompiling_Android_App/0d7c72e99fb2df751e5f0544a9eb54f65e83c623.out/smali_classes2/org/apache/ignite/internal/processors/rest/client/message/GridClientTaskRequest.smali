.class public Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;
.super Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;
.source "GridClientTaskRequest.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private arg:Ljava/lang/Object;

.field private keepPortables:Z

.field private taskName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public argument()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->arg:Ljava/lang/Object;

    return-object v0
.end method

.method public argument(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 65
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->arg:Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 87
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 88
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 90
    check-cast v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;

    .line 92
    .local v0, "other":Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->taskName:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->taskName:Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_4
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->arg:Ljava/lang/Object;

    if-nez v3, :cond_6

    iget-object v3, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->arg:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->taskName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->taskName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_6
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->arg:Ljava/lang/Object;

    iget-object v2, v0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->arg:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->taskName:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->arg:Ljava/lang/Object;

    if-nez v2, :cond_1

    :goto_1
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->taskName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->arg:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public keepPortables(Z)V
    .locals 0
    .param p1, "keepPortables"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->keepPortables:Z

    .line 80
    return-void
.end method

.method public keepPortables()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->keepPortables:Z

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
    .line 113
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->readExternal(Ljava/io/ObjectInput;)V

    .line 115
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->taskName:Ljava/lang/String;

    .line 117
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->arg:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public taskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public taskName(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->taskName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [taskName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->taskName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", arg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->arg:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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
    .line 104
    invoke-super {p0, p1}, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientAbstractMessage;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 106
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->taskName:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/client/message/GridClientTaskRequest;->arg:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 109
    return-void
.end method
