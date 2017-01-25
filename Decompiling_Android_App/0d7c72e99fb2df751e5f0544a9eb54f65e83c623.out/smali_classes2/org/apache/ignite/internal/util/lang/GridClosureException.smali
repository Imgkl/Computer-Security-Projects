.class public Lorg/apache/ignite/internal/util/lang/GridClosureException;
.super Lorg/apache/ignite/IgniteException;
.source "GridClosureException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method


# virtual methods
.method public unwrap()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridClosureException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
