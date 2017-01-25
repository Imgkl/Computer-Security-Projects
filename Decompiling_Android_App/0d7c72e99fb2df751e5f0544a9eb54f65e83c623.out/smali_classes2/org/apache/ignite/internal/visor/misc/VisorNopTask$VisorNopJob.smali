.class Lorg/apache/ignite/internal/visor/misc/VisorNopTask$VisorNopJob;
.super Lorg/apache/ignite/compute/ComputeJobAdapter;
.source "VisorNopTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/visor/misc/VisorNopTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisorNopJob"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/apache/ignite/compute/ComputeJobAdapter;-><init>(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lorg/apache/ignite/internal/visor/misc/VisorNopTask$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/apache/ignite/internal/visor/misc/VisorNopTask$1;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/visor/misc/VisorNopTask$VisorNopJob;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 76
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lorg/apache/ignite/internal/visor/misc/VisorNopTask$VisorNopJob;->argument(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 78
    .local v1, "maxTimeout":Ljava/lang/Integer;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1    # "maxTimeout":Ljava/lang/Integer;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ignored":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-class v0, Lorg/apache/ignite/internal/visor/misc/VisorNopTask$VisorNopJob;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
