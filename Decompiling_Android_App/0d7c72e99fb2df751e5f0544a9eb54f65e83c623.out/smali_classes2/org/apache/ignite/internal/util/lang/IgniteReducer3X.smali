.class public abstract Lorg/apache/ignite/internal/util/lang/IgniteReducer3X;
.super Ljava/lang/Object;
.source "IgniteReducer3X.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/IgniteReducer3;


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
        "Lorg/apache/ignite/internal/util/lang/IgniteReducer3",
        "<TE1;TE2;TE3;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/IgniteReducer3X;, "Lorg/apache/ignite/internal/util/lang/IgniteReducer3X<TE1;TE2;TE3;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/IgniteReducer3X;, "Lorg/apache/ignite/internal/util/lang/IgniteReducer3X<TE1;TE2;TE3;TR;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/IgniteReducer3X;->applyx()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v1

    throw v1
.end method

.method public abstract applyx()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
