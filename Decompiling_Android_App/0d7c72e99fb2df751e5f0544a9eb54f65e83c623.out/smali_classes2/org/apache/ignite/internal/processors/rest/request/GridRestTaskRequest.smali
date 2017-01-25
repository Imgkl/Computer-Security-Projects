.class public Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;
.super Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;
.source "GridRestTaskRequest.java"


# instance fields
.field private async:Z

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private taskId:Ljava/lang/String;

.field private taskName:Ljava/lang/String;

.field private timeout:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public async(Z)V
    .locals 0
    .param p1, "async"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->async:Z

    .line 83
    return-void
.end method

.method public async()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->async:Z

    return v0
.end method

.method public params()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->params:Ljava/util/List;

    return-object v0
.end method

.method public params(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->params:Ljava/util/List;

    .line 97
    return-void
.end method

.method public taskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public taskId(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->taskId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public taskName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->taskName:Ljava/lang/String;

    return-object v0
.end method

.method public taskName(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskName"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->taskName:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 103
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->timeout:J

    return-wide v0
.end method

.method public timeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;->timeout:J

    .line 111
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    const-class v0, Lorg/apache/ignite/internal/processors/rest/request/GridRestTaskRequest;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/rest/request/GridRestRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
