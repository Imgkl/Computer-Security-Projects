.class public abstract Lorg/apache/ignite/internal/util/lang/GridAbsClosureX;
.super Lorg/apache/ignite/internal/util/lang/GridAbsClosure;
.source "GridAbsClosureX.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridAbsClosure;-><init>()V

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    .prologue
    .line 35
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridAbsClosureX;->applyx()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "ex":Lorg/apache/ignite/IgniteCheckedException;
    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/F;->wrap(Ljava/lang/Throwable;)Lorg/apache/ignite/internal/util/lang/GridClosureException;

    move-result-object v1

    throw v1
.end method

.method public abstract applyx()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
