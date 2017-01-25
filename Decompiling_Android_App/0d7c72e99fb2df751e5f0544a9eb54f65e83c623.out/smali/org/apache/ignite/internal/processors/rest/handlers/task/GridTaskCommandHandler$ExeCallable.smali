.class Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;
.super Ljava/lang/Object;
.source "GridTaskCommandHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExeCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/io/Externalizable;"
    }
.end annotation

.annotation runtime Lorg/apache/ignite/internal/processors/task/GridInternal;
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private clientId:Ljava/util/UUID;

.field private g:Lorg/apache/ignite/internal/IgniteEx;
    .annotation runtime Lorg/apache/ignite/resources/IgniteInstanceResource;
    .end annotation
.end field

.field private name:Ljava/lang/String;

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

.field private timeout:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;JLjava/util/UUID;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "timeout"    # J
    .param p5, "clientId"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;J",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .prologue
    .line 605
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->name:Ljava/lang/String;

    .line 607
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->params:Ljava/util/List;

    .line 608
    iput-wide p3, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->timeout:J

    .line 609
    iput-object p5, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->clientId:Ljava/util/UUID;

    .line 610
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;JLjava/util/UUID;Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/util/List;
    .param p3, "x2"    # J
    .param p5, "x3"    # Ljava/util/UUID;
    .param p6, "x4"    # Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$1;

    .prologue
    .line 572
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;-><init>(Ljava/lang/String;Ljava/util/List;JLjava/util/UUID;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 614
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->g:Lorg/apache/ignite/internal/IgniteEx;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->g:Lorg/apache/ignite/internal/IgniteEx;

    invoke-interface {v1}, Lorg/apache/ignite/internal/IgniteEx;->cluster()Lorg/apache/ignite/internal/cluster/IgniteClusterEx;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->clientId:Ljava/util/UUID;

    invoke-interface {v1, v2}, Lorg/apache/ignite/internal/cluster/IgniteClusterEx;->forSubjectId(Ljava/util/UUID;)Lorg/apache/ignite/internal/cluster/ClusterGroupEx;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/ignite/internal/IgniteEx;->compute(Lorg/apache/ignite/cluster/ClusterGroup;)Lorg/apache/ignite/IgniteCompute;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->name:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->params:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->params:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->params:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Lorg/apache/ignite/IgniteCompute;->execute(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->params:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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
    .line 629
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readString(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->name:Ljava/lang/String;

    .line 630
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->params:Ljava/util/List;

    .line 631
    invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->timeout:J

    .line 632
    invoke-static {p1}, Lorg/apache/ignite/internal/util/typedef/internal/U;->readUuid(Ljava/io/DataInput;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->clientId:Ljava/util/UUID;

    .line 633
    return-void
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
    .line 621
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeString(Ljava/io/DataOutput;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->params:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 623
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->timeout:J

    invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V

    .line 624
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/rest/handlers/task/GridTaskCommandHandler$ExeCallable;->clientId:Ljava/util/UUID;

    invoke-static {p1, v0}, Lorg/apache/ignite/internal/util/typedef/internal/U;->writeUuid(Ljava/io/DataOutput;Ljava/util/UUID;)V

    .line 625
    return-void
.end method
