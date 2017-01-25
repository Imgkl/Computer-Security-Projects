.class public Lorg/apache/ignite/IgniteAuthenticationException;
.super Lorg/apache/ignite/IgniteCheckedException;
.source "IgniteAuthenticationException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method
