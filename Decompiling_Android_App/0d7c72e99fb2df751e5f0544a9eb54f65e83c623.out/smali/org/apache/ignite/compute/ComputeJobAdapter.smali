.class public abstract Lorg/apache/ignite/compute/ComputeJobAdapter;
.super Ljava/lang/Object;
.source "ComputeJobAdapter.java"

# interfaces
.implements Lorg/apache/ignite/compute/ComputeJob;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/compute/ComputeJob;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private args:[Ljava/lang/Object;

.field private volatile transient cancelled:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/ignite/compute/ComputeJobAdapter;->args:[Ljava/lang/Object;

    .line 64
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/ignite/compute/ComputeJobAdapter;->args:[Ljava/lang/Object;

    .line 73
    return-void
.end method


# virtual methods
.method public argument(I)Ljava/lang/Object;
    .locals 2
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lorg/apache/ignite/compute/ComputeJobAdapter;->args:[Ljava/lang/Object;

    const-string v1, "args"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/compute/ComputeJobAdapter;->args:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "idx >= 0 && idx < args.length"

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/A;->ensure(ZLjava/lang/String;)V

    .line 118
    iget-object v0, p0, Lorg/apache/ignite/compute/ComputeJobAdapter;->args:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method arguments()[Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/compute/ComputeJobAdapter;->args:[Ljava/lang/Object;

    return-object v0
.end method

.method public final call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/apache/ignite/compute/ComputeJobAdapter;->execute()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/compute/ComputeJobAdapter;->cancelled:Z

    .line 87
    return-void
.end method

.method protected final isCancelled()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lorg/apache/ignite/compute/ComputeJobAdapter;->cancelled:Z

    return v0
.end method

.method public varargs setArguments([Ljava/lang/Object;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 81
    iput-object p1, p0, Lorg/apache/ignite/compute/ComputeJobAdapter;->args:[Ljava/lang/Object;

    .line 82
    return-void
.end method
