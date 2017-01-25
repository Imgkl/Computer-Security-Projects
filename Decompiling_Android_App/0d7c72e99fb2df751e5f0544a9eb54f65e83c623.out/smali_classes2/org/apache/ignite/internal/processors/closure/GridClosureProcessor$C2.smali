.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;
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
    name = "C2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/compute/ComputeJob;",
        "Ljava/io/Externalizable;",
        "Lorg/apache/ignite/internal/processors/resource/GridNoImplicitInjection;",
        "Lorg/apache/ignite/internal/GridInternalWrapper",
        "<",
        "Ljava/util/concurrent/Callable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1682
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1684
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 1689
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2<TR;>;"
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1690
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;->c:Ljava/util/concurrent/Callable;

    .line 1691
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/concurrent/Callable;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1672
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2<TR;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 1706
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2<TR;>;"
    return-void
.end method

.method public execute()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1696
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2<TR;>;"
    :try_start_0
    iget-object v1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .line 1715
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2<TR;>;"
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Callable;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;->c:Ljava/util/concurrent/Callable;

    .line 1716
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1725
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2<TR;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1672
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2<TR;>;"
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;->userObject()Ljava/util/concurrent/Callable;

    move-result-object v0

    return-object v0
.end method

.method public userObject()Ljava/util/concurrent/Callable;
    .locals 1

    .prologue
    .line 1720
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;->c:Ljava/util/concurrent/Callable;

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
    .line 1710
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;->c:Ljava/util/concurrent/Callable;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1711
    return-void
.end method
