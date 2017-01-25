.class public abstract Lorg/apache/ignite/internal/util/typedef/CIX2;
.super Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X;
.source "CIX2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E1:",
        "Ljava/lang/Object;",
        "E2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X",
        "<TE1;TE2;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/CIX2;, "Lorg/apache/ignite/internal/util/typedef/CIX2<TE1;TE2;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/IgniteInClosure2X;-><init>()V

    return-void
.end method
