.class public abstract Lorg/apache/ignite/internal/util/lang/IgniteClosureX;
.super Ljava/lang/Object;
.source "IgniteClosureX.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgniteClosure;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgniteClosure",
        "<TE;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/IgniteClosureX;, "Lorg/apache/ignite/internal/util/lang/IgniteClosureX<TE;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TR;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/IgniteClosureX;, "Lorg/apache/ignite/internal/util/lang/IgniteClosureX<TE;TR;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/IgniteClosureX;->applyx(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "ex":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v1

    throw v1
.end method

.method public abstract applyx(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
