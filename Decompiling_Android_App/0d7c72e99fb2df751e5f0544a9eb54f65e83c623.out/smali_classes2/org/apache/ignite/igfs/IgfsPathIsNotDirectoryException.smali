.class public Lorg/apache/ignite/igfs/IgfsPathIsNotDirectoryException;
.super Lorg/apache/ignite/igfs/IgfsException;
.source "IgfsPathIsNotDirectoryException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lorg/apache/ignite/igfs/IgfsException;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "cause"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/igfs/IgfsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/ignite/igfs/IgfsException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method
