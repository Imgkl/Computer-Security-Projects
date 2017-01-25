.class public Lorg/apache/ignite/internal/util/typedef/internal/SB;
.super Lorg/apache/ignite/internal/util/GridStringBuilder;
.source "SB.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/apache/ignite/internal/util/GridStringBuilder;-><init>(I)V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "cap"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/GridStringBuilder;-><init>(I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/GridStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/GridStringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method
