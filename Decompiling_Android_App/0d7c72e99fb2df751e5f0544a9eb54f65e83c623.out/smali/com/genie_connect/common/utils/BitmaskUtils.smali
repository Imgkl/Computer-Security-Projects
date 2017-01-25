.class public Lcom/genie_connect/common/utils/BitmaskUtils;
.super Ljava/lang/Object;
.source "BitmaskUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flipMask(I)I
    .locals 1
    .param p0, "bitmask"    # I

    .prologue
    .line 6
    xor-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static isFlagSet(II)Z
    .locals 1
    .param p0, "bitmask"    # I
    .param p1, "flag"    # I

    .prologue
    .line 10
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toggleFlag(II)I
    .locals 1
    .param p0, "bitmask"    # I
    .param p1, "flag"    # I

    .prologue
    .line 14
    xor-int v0, p0, p1

    return v0
.end method

.method public static turnFlagOff(II)I
    .locals 1
    .param p0, "bitmask"    # I
    .param p1, "flag"    # I

    .prologue
    .line 18
    xor-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method public static turnFlagOn(II)I
    .locals 1
    .param p0, "bitmask"    # I
    .param p1, "flag"    # I

    .prologue
    .line 22
    or-int v0, p0, p1

    return v0
.end method
