.class public Lorg/apache/ignite/internal/util/typedef/T1;
.super Lorg/apache/ignite/internal/util/lang/GridTuple;
.source "T1.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/lang/GridTuple",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/T1;, "Lorg/apache/ignite/internal/util/typedef/T1<TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridTuple;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/T1;, "Lorg/apache/ignite/internal/util/typedef/T1<TV;>;"
    .local p1, "val":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridTuple;-><init>(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
