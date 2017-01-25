.class Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0;
.super Lorg/jsr166/ConcurrentHashMap8;
.source "GridIoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/communication/GridIoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConcurrentHashMap0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/jsr166/ConcurrentHashMap8",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private hash:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1997
    .local p0, "this":Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0;, "Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0<TK;TV;>;"
    invoke-direct {p0}, Lorg/jsr166/ConcurrentHashMap8;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/managers/communication/GridIoManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager$1;

    .prologue
    .line 1997
    .local p0, "this":Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0;, "Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2009
    .local p0, "this":Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0;, "Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0<TK;TV;>;"
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 2016
    .local p0, "this":Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0;, "Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0<TK;TV;>;"
    iget v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0;->hash:I

    if-nez v1, :cond_0

    .line 2017
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 2019
    .local v0, "hash0":I
    if-eqz v0, :cond_1

    .end local v0    # "hash0":I
    :goto_0
    iput v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0;->hash:I

    .line 2022
    :cond_0
    iget v1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$ConcurrentHashMap0;->hash:I

    return v1

    .line 2019
    .restart local v0    # "hash0":I
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
