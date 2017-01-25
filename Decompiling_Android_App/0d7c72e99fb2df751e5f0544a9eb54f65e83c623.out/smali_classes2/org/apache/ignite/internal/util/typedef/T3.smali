.class public Lorg/apache/ignite/internal/util/typedef/T3;
.super Lorg/apache/ignite/internal/util/lang/GridTuple3;
.source "T3.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        "V3:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/lang/GridTuple3",
        "<TV1;TV2;TV3;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/T3;, "Lorg/apache/ignite/internal/util/typedef/T3<TV1;TV2;TV3;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;TV3;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/T3;, "Lorg/apache/ignite/internal/util/typedef/T3<TV1;TV2;TV3;>;"
    .local p1, "val1":Ljava/lang/Object;, "TV1;"
    .local p2, "val2":Ljava/lang/Object;, "TV2;"
    .local p3, "val3":Ljava/lang/Object;, "TV3;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/util/lang/GridTuple3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    return-void
.end method
