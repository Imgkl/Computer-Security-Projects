.class public abstract Lorg/apache/ignite/internal/util/lang/IgnitePredicate2X;
.super Ljava/lang/Object;
.source "IgnitePredicate2X.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteBiPredicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E1:",
        "Ljava/lang/Object;",
        "E2:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteBiPredicate",
        "<TE1;TE2;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/IgnitePredicate2X;, "Lorg/apache/ignite/internal/util/lang/IgnitePredicate2X<TE1;TE2;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE1;TE2;)Z"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/IgnitePredicate2X;, "Lorg/apache/ignite/internal/util/lang/IgnitePredicate2X<TE1;TE2;>;"
    .local p1, "e1":Ljava/lang/Object;, "TE1;"
    .local p2, "e2":Ljava/lang/Object;, "TE2;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/util/lang/IgnitePredicate2X;->applyx(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "ex":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v1

    throw v1
.end method

.method public abstract applyx(Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE1;TE2;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
