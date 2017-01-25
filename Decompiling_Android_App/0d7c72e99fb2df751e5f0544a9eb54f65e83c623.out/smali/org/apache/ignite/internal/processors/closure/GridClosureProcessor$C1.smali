.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;
.super Ljava/lang/Object;
.source "GridClosureProcessor.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeJob;
.implements Ljava/io/Externalizable;
.implements Lorg/apache/ignite/internal/processors/resource/GridNoImplicitInjection;
.implements Lorg/apache/ignite/internal/GridInternalWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "C1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/compute/ComputeJob;",
        "Ljava/io/Externalizable;",
        "Lorg/apache/ignite/internal/processors/resource/GridNoImplicitInjection;",
        "Lorg/apache/ignite/internal/GridInternalWrapper",
        "<",
        "Lorg/apache/ignite/lang/IgniteClosure;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private arg:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field protected job:Lorg/apache/ignite/lang/IgniteClosure;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1590
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1<TT;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1592
    return-void
.end method

.method constructor <init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 1598
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1<TT;TR;>;"
    .local p1, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1599
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->job:Lorg/apache/ignite/lang/IgniteClosure;

    .line 1600
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->arg:Ljava/lang/Object;

    .line 1601
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 1611
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1<TT;TR;>;"
    return-void
.end method

.method public execute()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1605
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->job:Lorg/apache/ignite/lang/IgniteClosure;

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->arg:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/ignite/lang/IgniteClosure;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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
    .line 1621
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1<TT;TR;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lang/IgniteClosure;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->job:Lorg/apache/ignite/lang/IgniteClosure;

    .line 1622
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->arg:Ljava/lang/Object;

    .line 1623
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1632
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1<TT;TR;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1575
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1<TT;TR;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->userObject()Lorg/apache/ignite/lang/IgniteClosure;

    move-result-object v0

    return-object v0
.end method

.method public userObject()Lorg/apache/ignite/lang/IgniteClosure;
    .locals 1

    .prologue
    .line 1627
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->job:Lorg/apache/ignite/lang/IgniteClosure;

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
    .line 1615
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->job:Lorg/apache/ignite/lang/IgniteClosure;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1616
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->arg:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1617
    return-void
.end method
