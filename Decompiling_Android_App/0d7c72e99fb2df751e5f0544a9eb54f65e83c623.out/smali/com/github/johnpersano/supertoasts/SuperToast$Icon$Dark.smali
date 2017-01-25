.class public Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;
.super Ljava/lang/Object;
.source "SuperToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/johnpersano/supertoasts/SuperToast$Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dark"
.end annotation


# static fields
.field public static final EDIT:I

.field public static final EXIT:I

.field public static final INFO:I

.field public static final REDO:I

.field public static final REFRESH:I

.field public static final SAVE:I

.field public static final SHARE:I

.field public static final UNDO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_dark_edit:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->EDIT:I

    .line 107
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_dark_exit:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->EXIT:I

    .line 108
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_dark_info:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->INFO:I

    .line 109
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_dark_redo:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->REDO:I

    .line 110
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_dark_refresh:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->REFRESH:I

    .line 111
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_dark_save:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->SAVE:I

    .line 112
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_dark_share:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->SHARE:I

    .line 113
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_dark_undo:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
