.class public final enum Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
.super Ljava/lang/Enum;
.source "ActionsAllowed.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/db/config/features/ActionsAllowed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

.field public static final enum FAVOURITE_GENIE_INTENTS:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

.field public static final enum FAVOURITE_SERVER_VALIDATED:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

.field public static final enum FAVOURITE_STAR:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

.field public static final enum NOTES:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

.field public static final enum SESSIONS_FAVOURITING_ENABLED:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;


# instance fields
.field final intValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 136
    new-instance v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    const-string v1, "NOTES"

    invoke-direct {v0, v1, v6, v3}, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->NOTES:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    .line 137
    new-instance v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    const-string v1, "FAVOURITE_STAR"

    invoke-direct {v0, v1, v3, v4}, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_STAR:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    .line 138
    new-instance v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    const-string v1, "FAVOURITE_GENIE_INTENTS"

    invoke-direct {v0, v1, v4, v5}, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_GENIE_INTENTS:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    .line 139
    new-instance v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    const-string v1, "FAVOURITE_SERVER_VALIDATED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v7, v2}, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_SERVER_VALIDATED:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    .line 140
    new-instance v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    const-string v1, "SESSIONS_FAVOURITING_ENABLED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v5, v2}, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->SESSIONS_FAVOURITING_ENABLED:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    .line 135
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    sget-object v1, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->NOTES:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_STAR:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_GENIE_INTENTS:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->FAVOURITE_SERVER_VALIDATED:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->SESSIONS_FAVOURITING_ENABLED:Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->$VALUES:[Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 144
    iput p3, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->intValue:I

    .line 145
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 135
    const-class v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->$VALUES:[Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    invoke-virtual {v0}, [Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;

    return-object v0
.end method


# virtual methods
.method public getBitmaskValue()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/genie_connect/android/db/config/features/ActionsAllowed$Action;->intValue:I

    return v0
.end method
