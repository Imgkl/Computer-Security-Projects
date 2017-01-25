.class public Lorg/apache/ignite/IgniteInterruptedException;
.super Lorg/apache/ignite/IgniteException;
.source "IgniteInterruptedException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/InterruptedException;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/InterruptedException;

    .prologue
    .line 34
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/ignite/IgniteInterruptedException;-><init>(Ljava/lang/String;Ljava/lang/InterruptedException;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/InterruptedException;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/InterruptedException;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method
