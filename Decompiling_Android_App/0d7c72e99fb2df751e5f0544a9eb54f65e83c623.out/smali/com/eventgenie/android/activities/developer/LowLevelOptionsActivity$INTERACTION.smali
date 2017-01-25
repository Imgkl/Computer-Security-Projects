.class final enum Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;
.super Ljava/lang/Enum;
.source "LowLevelOptionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "INTERACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

.field public static final enum BUTTON:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

.field public static final enum TOGGLE:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 404
    new-instance v0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    const-string v1, "TOGGLE"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->TOGGLE:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    .line 405
    new-instance v0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    const-string v1, "BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->BUTTON:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    .line 403
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    sget-object v1, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->TOGGLE:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->BUTTON:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->$VALUES:[Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

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
    .line 403
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 403
    const-class v0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;
    .locals 1

    .prologue
    .line 403
    sget-object v0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->$VALUES:[Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    invoke-virtual {v0}, [Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$INTERACTION;

    return-object v0
.end method
