.class public abstract Lorg/apache/ignite/internal/util/typedef/CX2;
.super Lorg/apache/ignite/internal/util/lang/IgniteClosure2X;
.source "CX2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E1:",
        "Ljava/lang/Object;",
        "E2:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/lang/IgniteClosure2X",
        "<TE1;TE2;TR;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/CX2;, "Lorg/apache/ignite/internal/util/typedef/CX2<TE1;TE2;TR;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/IgniteClosure2X;-><init>()V

    return-void
.end method
