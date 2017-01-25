.class public abstract Lorg/apache/ignite/compute/gridify/GridifyTaskSplitAdapter;
.super Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;
.source "GridifyTaskSplitAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/compute/ComputeTaskSplitAdapter",
        "<",
        "Lorg/apache/ignite/compute/gridify/GridifyArgument;",
        "TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    .local p0, "this":Lorg/apache/ignite/compute/gridify/GridifyTaskSplitAdapter;, "Lorg/apache/ignite/compute/gridify/GridifyTaskSplitAdapter<TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeTaskSplitAdapter;-><init>()V

    return-void
.end method
