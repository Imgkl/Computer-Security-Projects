.class public final enum Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;
.super Ljava/lang/Enum;
.source "ThreeStateButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/ui/searchui/ThreeStateButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BUTTON_STATES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

.field public static final enum ALL:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

.field public static final enum NONE:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

.field public static final enum SOME:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->NONE:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .line 21
    new-instance v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    const-string v1, "SOME"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->SOME:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .line 22
    new-instance v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->ALL:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .line 19
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    sget-object v1, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->NONE:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->SOME:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->ALL:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->$VALUES:[Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEnumFromValue(I)Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 24
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 25
    sget-object v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->SOME:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 28
    sget-object v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->ALL:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    goto :goto_0

    .line 31
    :cond_1
    sget-object v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->NONE:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    goto :goto_0
.end method

.method public static nextState(Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;)Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;
    .locals 2
    .param p0, "state"    # Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .prologue
    .line 37
    sget-object v1, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->NONE:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    if-ne p0, v1, :cond_0

    .line 38
    sget-object v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->ALL:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .line 43
    .local v0, "newState":Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;
    :goto_0
    return-object v0

    .line 41
    .end local v0    # "newState":Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;
    :cond_0
    sget-object v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->NONE:Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    .restart local v0    # "newState":Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;
    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->$VALUES:[Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    invoke-virtual {v0}, [Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/ui/searchui/ThreeStateButton$BUTTON_STATES;

    return-object v0
.end method
