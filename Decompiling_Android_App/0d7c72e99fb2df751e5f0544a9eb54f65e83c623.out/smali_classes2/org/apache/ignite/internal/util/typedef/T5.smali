.class public Lorg/apache/ignite/internal/util/typedef/T5;
.super Lorg/apache/ignite/internal/util/lang/GridTuple5;
.source "T5.java"


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
        ">",
        "Lorg/apache/ignite/internal/util/lang/GridTuple5",
        "<TV1;TV2;TV3;TV4;TV5;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/T5;, "Lorg/apache/ignite/internal/util/typedef/T5<TV1;TV2;TV3;TV4;TV5;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/GridTuple5;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV1;TV2;TV3;TV4;TV5;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p0, "this":Lorg/apache/ignite/internal/util/typedef/T5;, "Lorg/apache/ignite/internal/util/typedef/T5<TV1;TV2;TV3;TV4;TV5;>;"
    .local p1, "v1":Ljava/lang/Object;, "TV1;"
    .local p2, "v2":Ljava/lang/Object;, "TV2;"
    .local p3, "v3":Ljava/lang/Object;, "TV3;"
    .local p4, "v4":Ljava/lang/Object;, "TV4;"
    .local p5, "v5":Ljava/lang/Object;, "TV5;"
    invoke-direct/range {p0 .. p5}, Lorg/apache/ignite/internal/util/lang/GridTuple5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    return-void
.end method
