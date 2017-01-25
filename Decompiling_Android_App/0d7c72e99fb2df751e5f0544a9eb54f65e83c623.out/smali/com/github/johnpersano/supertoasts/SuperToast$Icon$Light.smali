.class public Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Light;
.super Ljava/lang/Object;
.source "SuperToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/johnpersano/supertoasts/SuperToast$Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Light"
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
    .line 122
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_light_edit:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Light;->EDIT:I

    .line 123
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_light_exit:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Light;->EXIT:I

    .line 124
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_light_info:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Light;->INFO:I

    .line 125
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_light_redo:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Light;->REDO:I

    .line 126
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_light_refresh:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Light;->REFRESH:I

    .line 127
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_light_save:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Light;->SAVE:I

    .line 128
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_light_share:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Light;->SHARE:I

    .line 129
    sget v0, Lcom/github/johnpersano/supertoasts/R$drawable;->icon_light_undo:I

    sput v0, Lcom/github/johnpersano/supertoasts/SuperToast$Icon$Light;->UNDO:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
