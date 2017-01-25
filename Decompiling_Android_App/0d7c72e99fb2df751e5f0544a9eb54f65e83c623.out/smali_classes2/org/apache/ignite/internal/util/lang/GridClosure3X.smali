.class public abstract Lorg/apache/ignite/internal/util/lang/GridClosure3X;
.super Ljava/lang/Object;
.source "GridClosure3X.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridClosure3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E1:",
        "Ljava/lang/Object;",
        "E2:",
        "Ljava/lang/Object;",
        "E3:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/lang/GridClosure3",
        "<TE1;TE2;TE3;TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridClosure3X;, "Lorg/apache/ignite/internal/util/lang/GridClosure3X<TE1;TE2;TE3;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE1;TE2;TE3;)TR;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridClosure3X;, "Lorg/apache/ignite/internal/util/lang/GridClosure3X<TE1;TE2;TE3;TR;>;"
    .local p1, "e1":Ljava/lang/Object;, "TE1;"
    .local p2, "e2":Ljava/lang/Object;, "TE2;"
    .local p3, "e3":Ljava/lang/Object;, "TE3;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/lang/GridClosure3X;->applyx(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v1

    throw v1
.end method

.method public abstract applyx(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE1;TE2;TE3;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
