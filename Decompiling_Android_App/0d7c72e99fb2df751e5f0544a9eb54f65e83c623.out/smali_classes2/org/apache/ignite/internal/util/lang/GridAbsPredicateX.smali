.class public abstract Lorg/apache/ignite/internal/util/lang/GridAbsPredicateX;
.super Ljava/lang/Object;
.source "GridAbsPredicateX.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridAbsPredicate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()Z
    .locals 2

    .prologue
    .line 32
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridAbsPredicateX;->applyx()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "ex":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v1

    throw v1
.end method

.method public abstract applyx()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
