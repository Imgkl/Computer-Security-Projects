.class public final enum Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;
.super Ljava/lang/Enum;
.source "SuperToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/johnpersano/supertoasts/SuperToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

.field public static final enum BOTTOM:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

.field public static final enum LEFT:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

.field public static final enum RIGHT:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

.field public static final enum TOP:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->LEFT:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    .line 200
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v3}, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->RIGHT:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    .line 205
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v4}, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->TOP:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    .line 210
    new-instance v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v5}, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->BOTTOM:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    .line 190
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->LEFT:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->RIGHT:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->TOP:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->BOTTOM:Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->$VALUES:[Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

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
    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 190
    const-class v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    return-object v0
.end method

.method public static values()[Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->$VALUES:[Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    invoke-virtual {v0}, [Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/johnpersano/supertoasts/SuperToast$IconPosition;

    return-object v0
.end method
