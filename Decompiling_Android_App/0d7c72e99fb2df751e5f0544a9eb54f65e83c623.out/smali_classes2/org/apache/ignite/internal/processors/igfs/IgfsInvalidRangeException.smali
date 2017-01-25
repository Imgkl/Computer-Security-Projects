.class public Lorg/apache/ignite/internal/processors/igfs/IgfsInvalidRangeException;
.super Lorg/apache/ignite/IgniteCheckedException;
.source "IgfsInvalidRangeException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method
