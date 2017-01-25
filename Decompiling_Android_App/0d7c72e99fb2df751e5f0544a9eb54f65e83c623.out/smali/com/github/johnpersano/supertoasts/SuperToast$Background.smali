.class public Lcom/github/johnpersano/supertoasts/SuperToast$Background;
.super Ljava/lang/Object;
.source "SuperToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/johnpersano/supertoasts/SuperToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Background"
.end annotation


# static fields
.field public static final BLACK:I

.field public static final BLUE:I

.field public static final GRAY:I

.field public static final GREEN:I

.field public static final ORANGE:I

.field public static final PURPLE:I

.field public static final RED:I

.field public static final WHITE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Background;->BLACK:I

    .line 74
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Background;->BLUE:I

    .line 75
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Background;->GRAY:I

    .line 76
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Background;->GREEN:I

    .line 77
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Background;->ORANGE:I

    .line 78
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Background;->PURPLE:I

    .line 79
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Background;->RED:I

    .line 80
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/github/johnpersano/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Background;->WHITE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
