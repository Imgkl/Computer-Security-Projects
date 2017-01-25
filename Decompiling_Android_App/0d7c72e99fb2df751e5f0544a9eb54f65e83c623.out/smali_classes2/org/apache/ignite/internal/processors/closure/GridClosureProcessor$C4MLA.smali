.class Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4MLA;
.super Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;
.source "GridClosureProcessor.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "C4MLA"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1827
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;-><init>()V

    .line 1829
    return-void
.end method

.method private constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1835
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;-><init>(Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V

    .line 1836
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Runnable;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$1;

    .prologue
    .line 1820
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4MLA;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onMasterNodeLeft(Lorg/apache/ignite/compute/ComputeTaskSession;)V
    .locals 1
    .param p1, "ses"    # Lorg/apache/ignite/compute/ComputeTaskSession;

    .prologue
    .line 1840
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4MLA;->r:Ljava/lang/Runnable;

    check-cast v0, Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;

    invoke-interface {v0, p1}, Lorg/apache/ignite/compute/ComputeJobMasterLeaveAware;->onMasterNodeLeft(Lorg/apache/ignite/compute/ComputeTaskSession;)V

    .line 1841
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1845
    const-class v0, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4MLA;

    invoke-super {p0}, Lorg/apache/ignite/internal/processors/closure/GridClosureProcessor$C4;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
