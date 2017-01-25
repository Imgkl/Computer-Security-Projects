.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA;
.super Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;
.source "GridClosureProcessor.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "C2MLA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2",
        "<TR;>;",
        "Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1739
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA<TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;-><init>()V

    .line 1741
    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 1747
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA<TR;>;"
    .local p1, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TR;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;-><init>(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    .line 1748
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/Callable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/concurrent/Callable;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1732
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA<TR;>;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public onMasterNodeLeft(Lorg/apache/ignite/compute/ComputeTaskSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/compute/ComputeTaskSession;

    .prologue
    .line 1752
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA<TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA;->c:Ljava/util/concurrent/Callable;

    check-cast v0, Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;

    invoke-interface {v0, p1}, Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;->onMasterNodeLeft(Lorg/apache/ignite/compute/ComputeTaskSession;)V

    .line 1753
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1757
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA<TR;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2MLA;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C2;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
