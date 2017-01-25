.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;
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
    name = "C4"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/compute/ComputeJob;",
        "Ljava/io/Externalizable;",
        "Lorg/apache/ignite/internal/processors/resource/GridNoImplicitInjection;",
        "Lorg/apache/ignite/internal/GridInternalWrapper",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field protected r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1775
    return-void
.end method

.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1781
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;->r:Ljava/lang/Runnable;

    .line 1782
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Runnable;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1763
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 1794
    return-void
.end method

.method public execute()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 1786
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1788
    const/4 v0, 0x0

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
    .line 1803
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;->r:Ljava/lang/Runnable;

    .line 1804
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1813
    const-class v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1763
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;->userObject()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public userObject()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1808
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;->r:Ljava/lang/Runnable;

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
    .line 1798
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;->r:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 1799
    return-void
.end method
