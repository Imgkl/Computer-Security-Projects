.class public Lorg/apache/ignite/internal/util/typedef/T4;
.super Lorg/apache/ignite/internal/util/lang/GridTuple4;
.source "T4.java"


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
        ">",
        "Lorg/apache/ignite/internal/util/lang/GridTuple4",
        "<TV1;TV2;TV3;TV4;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/T4;, "Lorg/apache/ignite/internal/util/typedef/T4<TV1;TV2;TV3;TV4;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridTuple4;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;TV3;TV4;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/T4;, "Lorg/apache/ignite/internal/util/typedef/T4<TV1;TV2;TV3;TV4;>;"
    .local p1, "val1":Ljava/lang/Object;, "TV1;"
    .local p2, "val2":Ljava/lang/Object;, "TV2;"
    .local p3, "val3":Ljava/lang/Object;, "TV3;"
    .local p4, "val4":Ljava/lang/Object;, "TV4;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/util/lang/GridTuple4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    return-void
.end method
