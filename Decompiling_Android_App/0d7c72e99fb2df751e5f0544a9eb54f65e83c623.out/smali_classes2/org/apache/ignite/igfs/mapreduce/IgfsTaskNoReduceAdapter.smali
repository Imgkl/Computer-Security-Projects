.class public abstract Lorg/apache/ignite/igfs/mapreduce/IgfsTaskNoReduceAdapter;
.super Lorg/apache/ignite/igfs/mapreduce/IgfsTask;
.source "IgfsTaskNoReduceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/igfs/mapreduce/IgfsTask",
        "<TT;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lorg/apache/ignite/igfs/mapreduce/IgfsTaskNoReduceAdapter;, "Lorg/apache/ignite/igfs/mapreduce/IgfsTaskNoReduceAdapter<TT;TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/igfs/mapreduce/IgfsTask;-><init>()V

    return-void
.end method


# virtual methods
.method public reduce(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/compute/ComputeJobResult;",
            ">;)TR;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/ignite/igfs/mapreduce/IgfsTaskNoReduceAdapter;, "Lorg/apache/ignite/igfs/mapreduce/IgfsTaskNoReduceAdapter<TT;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lorg/apache/ignite/compute/ComputeJobResult;>;"
    const/4 v0, 0x0

    return-object v0
.end method
