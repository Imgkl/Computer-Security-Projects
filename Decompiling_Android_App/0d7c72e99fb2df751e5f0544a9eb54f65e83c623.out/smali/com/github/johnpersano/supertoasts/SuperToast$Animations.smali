.class public final enum Lcom/github/johnpersano/supertoasts/SuperToast$Animations;
.super Ljava/lang/Enum;
.source "SuperToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/johnpersano/supertoasts/SuperToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Animations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/johnpersano/supertoasts/SuperToast$Animations;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

.field public static final enum FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

.field public static final enum FLYIN:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

.field public static final enum POPUP:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

.field public static final enum SCALE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    const-string v1, "FADE"

    invoke-direct {v0, v1, v2}, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 90
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    const-string v1, "FLYIN"

    invoke-direct {v0, v1, v3}, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FLYIN:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 91
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v4}, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->SCALE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 92
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    const-string v1, "POPUP"

    invoke-direct {v0, v1, v5}, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->POPUP:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FADE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->FLYIN:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->SCALE:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->POPUP:Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    aput-object v1, v0, v5

    sput-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->$VALUES:[Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/johnpersano/supertoasts/SuperToast$Animations;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    const-class v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    return-object v0
.end method

.method public static values()[Lcom/github/johnpersano/supertoasts/SuperToast$Animations;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->$VALUES:[Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    invoke-virtual {v0}, [Lcom/github/johnpersano/supertoasts/SuperToast$Animations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/johnpersano/supertoasts/SuperToast$Animations;

    return-object v0
.end method
