.class public Lorg/apache/ignite/internal/util/typedef/T6;
.super Lorg/apache/ignite/internal/util/lang/GridTuple6;
.source "T6.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        "V3:",
        "Ljava/lang/Object;",
        "V4:",
        "Ljava/lang/Object;",
        "V5:",
        "Ljava/lang/Object;",
        "V6:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/util/lang/GridTuple6",
        "<TV1;TV2;TV3;TV4;TV5;TV6;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/T6;, "Lorg/apache/ignite/internal/util/typedef/T6<TV1;TV2;TV3;TV4;TV5;TV6;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridTuple6;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;TV3;TV4;TV5;TV6;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/T6;, "Lorg/apache/ignite/internal/util/typedef/T6<TV1;TV2;TV3;TV4;TV5;TV6;>;"
    .local p1, "v1":Ljava/lang/Object;, "TV1;"
    .local p2, "v2":Ljava/lang/Object;, "TV2;"
    .local p3, "v3":Ljava/lang/Object;, "TV3;"
    .local p4, "v4":Ljava/lang/Object;, "TV4;"
    .local p5, "v5":Ljava/lang/Object;, "TV5;"
    .local p6, "v6":Ljava/lang/Object;, "TV6;"
    invoke-direct/range {p0 .. p6}, Lorg/apache/ignite/internal/util/lang/GridTuple6;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 54
    return-void
.end method
