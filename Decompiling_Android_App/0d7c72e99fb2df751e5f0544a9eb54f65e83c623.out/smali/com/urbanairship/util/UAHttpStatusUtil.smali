.class public Lcom/urbanairship/util/UAHttpStatusUtil;
.super Ljava/lang/Object;
.source "UAHttpStatusUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inClientErrorRange(I)Z
    .locals 2
    .param p0, "statusCode"    # I

    .prologue
    .line 60
    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inRedirectionRange(I)Z
    .locals 2
    .param p0, "statusCode"    # I

    .prologue
    .line 50
    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inServerErrorRange(I)Z
    .locals 2
    .param p0, "statusCode"    # I

    .prologue
    .line 70
    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static inSuccessRange(I)Z
    .locals 2
    .param p0, "statusCode"    # I

    .prologue
    .line 40
    div-int/lit8 v0, p0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
