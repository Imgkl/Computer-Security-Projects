.class public Lorg/apache/ignite/internal/util/typedef/T2;
.super Lorg/apache/ignite/lang/IgniteBiTuple;
.source "T2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<TV1;TV2;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<TV1;TV2;>;"
    invoke-direct {p0}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>()V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/T2;, "Lorg/apache/ignite/internal/util/typedef/T2<TV1;TV2;>;"
    .local p1, "val1":Ljava/lang/Object;, "TV1;"
    .local p2, "val2":Ljava/lang/Object;, "TV2;"
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/lang/IgniteBiTuple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    return-void
.end method
