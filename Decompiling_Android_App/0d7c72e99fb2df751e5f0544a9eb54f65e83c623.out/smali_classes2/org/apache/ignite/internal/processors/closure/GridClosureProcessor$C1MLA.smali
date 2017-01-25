.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA;
.super Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;
.source "GridClosureProcessor.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "C1MLA"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1",
        "<TT;TR;>;",
        "Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1646
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA<TT;TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;-><init>()V

    .line 1648
    return-void
.end method

.method private constructor <init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteClosure",
            "<TT;TR;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 1655
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA<TT;TR;>;"
    .local p1, "job":Lorg/apache/ignite/lang/IgniteClosure;, "Lorg/apache/ignite/lang/IgniteClosure<TT;TR;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;-><init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)V

    .line 1656
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/lang/IgniteClosure;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1639
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA<TT;TR;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA;-><init>(Lorg/apache/ignite/lang/IgniteClosure;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onMasterNodeLeft(Lorg/apache/ignite/compute/ComputeTaskSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/compute/ComputeTaskSession;

    .prologue
    .line 1660
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA<TT;TR;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA;->job:Lorg/apache/ignite/lang/IgniteClosure;

    check-cast v0, Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;

    invoke-interface {v0, p1}, Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;->onMasterNodeLeft(Lorg/apache/ignite/compute/ComputeTaskSession;)V

    .line 1661
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1665
    .local p0, "this":Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA;, "Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA<TT;TR;>;"
    const-class v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1MLA;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C1;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
